from __future__ import annotations

import json
import os
import re
import shutil
import subprocess
import threading
from dataclasses import dataclass
from pathlib import Path
from typing import Callable

import tkinter as tk
from tkinter import filedialog, messagebox, ttk


APP_DIR = Path(__file__).resolve().parent
DEFAULT_OUTPUT_DIR = APP_DIR / "rendered"
BITRATE_RE = re.compile(r"^\d+(?:\.\d+)?(?:[kKmM])?$")
DURATION_RE = re.compile(r"Duration:\s*(\d+):(\d+):(\d+(?:\.\d+)?)")
RATE_CONTROL_OPTIONS = ("CRF (качество)", "Целевой битрейт", "Гибрид")
FPS_OPTIONS = ("24", "25", "30", "50", "60")
X264_PRESETS = (
    "ultrafast",
    "superfast",
    "veryfast",
    "faster",
    "fast",
    "medium",
    "slow",
    "slower",
    "veryslow",
)


@dataclass(frozen=True)
class Preset:
    name: str
    width: int
    height: int


@dataclass(frozen=True)
class RenderProfile:
    name: str
    rate_control: str
    crf: int
    video_bitrate: str
    audio_bitrate: str
    fps: int
    encoder_preset: str
    description: str


@dataclass(frozen=True)
class RenderSettings:
    rate_control: str
    crf: int
    video_bitrate: str
    audio_bitrate: str
    fps: int
    encoder_preset: str
    clip_start_seconds: float
    clip_end_seconds: float | None


PRESETS = (
    Preset("9:16", 1080, 1920),
    Preset("16:9", 1920, 1080),
    Preset("4:3", 1440, 1080),
)
PRESET_BY_NAME = {preset.name: preset for preset in PRESETS}

RENDER_PROFILES = (
    RenderProfile("Быстрый", "CRF (качество)", 22, "8M", "192k", 30, "fast", "Для проверки и быстрых рендеров."),
    RenderProfile("Качественный", "CRF (качество)", 17, "12M", "320k", 30, "slow", "Основной режим для публикации."),
    RenderProfile("Мастер", "Гибрид", 14, "18M", "320k", 60, "slower", "Максимально жирный экспорт."),
)
PROFILE_BY_NAME = {profile.name: profile for profile in RENDER_PROFILES}


def find_winget_package_tool(tool_name: str) -> str | None:
    local_app_data = os.environ.get("LOCALAPPDATA", "")
    if not local_app_data:
        return None
    packages_dir = Path(local_app_data) / "Microsoft" / "WinGet" / "Packages"
    if not packages_dir.is_dir():
        return None
    for package_dir in packages_dir.glob("Gyan.FFmpeg*"):
        try:
            for candidate in package_dir.rglob(f"{tool_name}.exe"):
                if candidate.is_file():
                    return str(candidate)
        except OSError:
            continue
    return None


def resolve_tool_path(tool_name: str) -> str:
    winget_tool = find_winget_package_tool(tool_name)
    if winget_tool:
        return winget_tool
    candidates = (
        APP_DIR / f"{tool_name}.exe",
        APP_DIR / tool_name,
        APP_DIR / "bin" / f"{tool_name}.exe",
        APP_DIR / "ffmpeg" / "bin" / f"{tool_name}.exe",
        Path(os.environ.get("LOCALAPPDATA", "")) / "Programs" / "DICloak" / "vendor" / "ffmpeg" / "bin" / f"{tool_name}.exe",
        Path(os.environ.get("LOCALAPPDATA", "")) / "Microsoft" / "WinGet" / "Links" / f"{tool_name}.exe",
    )
    for candidate in candidates:
        candidate_str = str(candidate)
        if not candidate_str:
            continue
        try:
            if os.path.lexists(candidate_str):
                resolved = os.path.realpath(candidate_str)
                if resolved and os.path.exists(resolved):
                    return resolved
                return candidate_str
        except OSError:
            continue
    found = shutil.which(tool_name)
    return found or tool_name


def run_command(cmd: list[str]) -> subprocess.CompletedProcess[str]:
    resolved_cmd = list(cmd)
    resolved_cmd[0] = resolve_tool_path(resolved_cmd[0])
    try:
        return subprocess.run(resolved_cmd, capture_output=True, text=True, check=False)
    except (FileNotFoundError, PermissionError):
        return subprocess.CompletedProcess(resolved_cmd, returncode=9009, stdout="", stderr=f"Executable not found: {cmd[0]}")


def run_long_process(
    cmd: list[str],
    cancel_event: threading.Event | None = None,
    process_callback: Callable[[subprocess.Popen[str] | None], None] | None = None,
) -> subprocess.CompletedProcess[str]:
    resolved_cmd = list(cmd)
    resolved_cmd[0] = resolve_tool_path(resolved_cmd[0])
    process: subprocess.Popen[str] | None = None
    try:
        process = subprocess.Popen(
            resolved_cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
        )
        if process_callback:
            process_callback(process)
        while True:
            try:
                stdout, stderr = process.communicate(timeout=0.2)
                return subprocess.CompletedProcess(resolved_cmd, process.returncode, stdout, stderr)
            except subprocess.TimeoutExpired:
                if cancel_event and cancel_event.is_set():
                    process.terminate()
                    try:
                        stdout, stderr = process.communicate(timeout=2)
                    except subprocess.TimeoutExpired:
                        process.kill()
                        stdout, stderr = process.communicate()
                    raise RuntimeError("Рендер отменён.") from None
    except (FileNotFoundError, PermissionError):
        return subprocess.CompletedProcess(resolved_cmd, returncode=9009, stdout="", stderr=f"Executable not found: {cmd[0]}")
    finally:
        if process_callback:
            process_callback(None)


def get_missing_tools() -> list[str]:
    missing = []
    for tool in ("ffmpeg",):
        if run_command([tool, "-version"]).returncode != 0:
            missing.append(tool)
    return missing


def parse_duration_from_ffmpeg_output(text: str) -> float | None:
    match = DURATION_RE.search(text)
    if not match:
        return None
    return int(match.group(1)) * 3600 + int(match.group(2)) * 60 + float(match.group(3))


def read_audio_duration_seconds(audio_path: Path) -> float:
    probe_result = run_command(["ffprobe", "-v", "error", "-show_entries", "format=duration", "-of", "json", str(audio_path)])
    if probe_result.returncode == 0:
        try:
            return float(json.loads(probe_result.stdout)["format"]["duration"])
        except (KeyError, ValueError, json.JSONDecodeError) as exc:
            raise RuntimeError("Не удалось разобрать длительность аудио.") from exc
    ffmpeg_result = run_command(["ffmpeg", "-i", str(audio_path)])
    duration = parse_duration_from_ffmpeg_output(f"{ffmpeg_result.stdout}\n{ffmpeg_result.stderr}")
    if duration is None or duration <= 0:
        raise RuntimeError("Не удалось прочитать длительность трека.")
    return duration


def parse_timecode(value: str, label: str, allow_empty: bool = False) -> float | None:
    clean_value = value.strip()
    if not clean_value:
        if allow_empty:
            return None
        return 0.0

    parts = clean_value.split(":")
    try:
        if len(parts) == 1:
            seconds = float(parts[0])
            total = seconds
        elif len(parts) == 2:
            minutes = int(parts[0])
            seconds = float(parts[1])
            total = minutes * 60 + seconds
        elif len(parts) == 3:
            hours = int(parts[0])
            minutes = int(parts[1])
            seconds = float(parts[2])
            total = hours * 3600 + minutes * 60 + seconds
        else:
            raise ValueError
    except ValueError as exc:
        raise RuntimeError(
            f"{label}: используй секунды или формат mm:ss / hh:mm:ss."
        ) from exc

    if total < 0:
        raise RuntimeError(f"{label}: время не может быть отрицательным.")
    return total


def format_timecode(seconds: float) -> str:
    whole_seconds = int(seconds)
    minutes, secs = divmod(whole_seconds, 60)
    hours, minutes = divmod(minutes, 60)
    if hours:
        return f"{hours:02d}:{minutes:02d}:{secs:02d}"
    return f"{minutes:02d}:{secs:02d}"


def describe_clip_range(start_seconds: float, end_seconds: float | None) -> str:
    if start_seconds <= 0 and end_seconds is None:
        return "весь трек"
    if end_seconds is None:
        return f"с {format_timecode(start_seconds)} до конца"
    return f"{format_timecode(start_seconds)} - {format_timecode(end_seconds)}"


def resolve_clip_window(
    total_duration: float,
    start_seconds: float,
    end_seconds: float | None,
) -> tuple[float, float, float]:
    if start_seconds >= total_duration:
        raise RuntimeError("Старт обрезки выходит за длину трека.")

    actual_end = total_duration if end_seconds is None else end_seconds
    if actual_end > total_duration:
        raise RuntimeError("Финиш обрезки больше длины трека.")
    if actual_end <= start_seconds:
        raise RuntimeError("Финиш обрезки должен быть больше старта.")

    return start_seconds, actual_end - start_seconds, actual_end


def validate_bitrate(value: str, label: str) -> str:
    clean_value = value.strip()
    if not clean_value:
        raise RuntimeError(f"Поле '{label}' пустое.")
    if not BITRATE_RE.fullmatch(clean_value):
        raise RuntimeError(f"{label}: укажи значение вроде 320k, 8M или 12000000.")
    return clean_value


def multiply_bitrate(value: str, factor: int) -> str:
    match = re.fullmatch(r"(\d+(?:\.\d+)?)([kKmM]?)", value.strip())
    if not match:
        raise RuntimeError(f"Некорректный битрейт: {value}")
    amount = float(match.group(1)) * factor
    suffix = match.group(2)
    return f"{int(amount)}{suffix}" if amount.is_integer() else f"{amount:g}{suffix}"


def foreground_square_size(preset: Preset) -> int:
    return max(320, int(min(preset.width, preset.height) * 0.88))


def background_motion_padding(preset: Preset) -> tuple[int, int]:
    return max(48, int(preset.width * 0.06)), max(48, int(preset.height * 0.06))


def center_motion_overscan(preset: Preset) -> int:
    return max(24, int(min(preset.width, preset.height) * 0.05))


def audio_can_be_copied(audio_path: Path) -> bool:
    return audio_path.suffix.lower() in {".aac", ".m4a", ".mp3", ".mp4", ".m4b"}


def build_audio_output_args(audio_path: Path, settings: RenderSettings) -> list[str]:
    if audio_can_be_copied(audio_path):
        return ["-c:a", "copy"]
    return ["-c:a", "aac", "-b:a", settings.audio_bitrate]


def audio_mode_label(audio_path: Path, settings: RenderSettings) -> str:
    if audio_can_be_copied(audio_path):
        return "оригинал без пережатия"
    return f"AAC {settings.audio_bitrate}"


def spectrum_image_height() -> int:
    return 420


def build_filter_graph(preset: Preset, for_video: bool) -> str:
    square_size = foreground_square_size(preset)
    if for_video:
        pad_x, pad_y = background_motion_padding(preset)
        center_pad = center_motion_overscan(preset)
        bg_width = preset.width + pad_x * 2
        bg_height = preset.height + pad_y * 2
        fg_input_size = square_size + center_pad * 2
        return (
            f"[0:v]scale={bg_width}:{bg_height}:force_original_aspect_ratio=increase:flags=lanczos,"
            f"crop={bg_width}:{bg_height},eq=saturation=1.08:contrast=1.04:brightness=0.01,boxblur=42:10,"
            f"crop={preset.width}:{preset.height}:x='(in_w-out_w)/2 + ((in_w-out_w)/2)*sin(t/5.5)':"
            f"y='(in_h-out_h)/2 + ((in_h-out_h)/2)*cos(t/7.5)'[bg];"
            f"[0:v]crop='min(iw,ih)':'min(iw,ih)',scale={fg_input_size}:{fg_input_size}:flags=lanczos,"
            f"eq=saturation=1.06:contrast=1.03:brightness=0.01,unsharp=5:5:0.65:5:5:0.0,"
            f"crop={square_size}:{square_size}:x='(in_w-out_w)/2 + ((in_w-out_w)/3.5)*sin(t/11.0)':"
            f"y='(in_h-out_h)/2 + ((in_h-out_h)/3.5)*cos(t/13.0)'[fg];"
            "[bg][fg]overlay=(W-w)/2:(H-h)/2,format=yuv420p[v]"
        )
    return (
        f"[0:v]scale={preset.width}:{preset.height}:force_original_aspect_ratio=increase:flags=lanczos,"
        f"crop={preset.width}:{preset.height},boxblur=38:10[bg];"
        f"[0:v]crop='min(iw,ih)':'min(iw,ih)',scale={square_size}:{square_size}:flags=lanczos,"
        "eq=saturation=1.06:contrast=1.03:brightness=0.01,unsharp=5:5:0.55:5:5:0.0[fg];"
        "[bg][fg]overlay=(W-w)/2:(H-h)/2"
    )


def ensure_unique_path(path: Path) -> Path:
    if not path.exists():
        return path
    counter = 2
    while True:
        candidate = path.with_name(f"{path.stem}_{counter}{path.suffix}")
        if not candidate.exists():
            return candidate
        counter += 1


def make_audio_spectrum_preview(
    audio_path: Path,
    settings: RenderSettings,
    out_dir: Path,
    status_cb: Callable[[str], None] | None = None,
    cancel_event: threading.Event | None = None,
    process_callback: Callable[[subprocess.Popen[str] | None], None] | None = None,
) -> Path:
    if status_cb:
        status_cb("Строю спектрограмму музыки...")
    out_dir.mkdir(parents=True, exist_ok=True)
    total_duration = read_audio_duration_seconds(audio_path)
    clip_start, clip_duration, _clip_end = resolve_clip_window(
        total_duration,
        settings.clip_start_seconds,
        settings.clip_end_seconds,
    )
    output = ensure_unique_path(out_dir / f"{audio_path.stem}_spectrum.png")
    result = run_long_process(
        [
            "ffmpeg",
            "-y",
            "-hide_banner",
            "-loglevel",
            "error",
            "-ss",
            f"{clip_start:.3f}",
            "-t",
            f"{clip_duration:.3f}",
            "-i",
            str(audio_path),
            "-lavfi",
            f"showspectrumpic=s=1600x{spectrum_image_height()}:mode=combined:color=intensity:scale=cbrt:legend=0",
            str(output),
        ],
        cancel_event=cancel_event,
        process_callback=process_callback,
    )
    if result.returncode != 0:
        raise RuntimeError(
            "Не удалось построить спектрограмму.\n"
            f"{result.stderr.strip() or result.stdout.strip()}"
        )
    return output


def make_preview(
    image_path: Path,
    preset: Preset,
    out_dir: Path,
    status_cb: Callable[[str], None] | None = None,
    cancel_event: threading.Event | None = None,
    process_callback: Callable[[subprocess.Popen[str] | None], None] | None = None,
) -> Path:
    if status_cb:
        status_cb("Собираю превью...")
    out_dir.mkdir(parents=True, exist_ok=True)
    preset_tag = preset.name.replace(":", "x")
    output = ensure_unique_path(out_dir / f"{image_path.stem}_{preset_tag}_preview.jpg")
    result = run_long_process(
        [
            "ffmpeg",
            "-y",
            "-hide_banner",
            "-loglevel",
            "error",
            "-i",
            str(image_path),
            "-filter_complex",
            build_filter_graph(preset, for_video=False),
            "-frames:v",
            "1",
            "-q:v",
            "2",
            str(output),
        ],
        cancel_event=cancel_event,
        process_callback=process_callback,
    )
    if result.returncode != 0:
        raise RuntimeError(f"Не удалось создать превью.\n{result.stderr.strip() or result.stdout.strip()}")
    return output


def make_video(
    image_path: Path,
    audio_path: Path,
    preset: Preset,
    settings: RenderSettings,
    out_dir: Path,
    status_cb: Callable[[str], None] | None = None,
    cancel_event: threading.Event | None = None,
    process_callback: Callable[[subprocess.Popen[str] | None], None] | None = None,
) -> Path:
    if status_cb:
        status_cb("Читаю длительность трека...")
    out_dir.mkdir(parents=True, exist_ok=True)
    total_duration = read_audio_duration_seconds(audio_path)
    clip_start, clip_duration, clip_end = resolve_clip_window(
        total_duration,
        settings.clip_start_seconds,
        settings.clip_end_seconds,
    )
    preset_tag = preset.name.replace(":", "x")
    output = ensure_unique_path(out_dir / f"{image_path.stem}_{audio_path.stem}_{preset_tag}.mp4")
    if status_cb:
        status_cb(
            f"Кодирую видео. Отрезок {describe_clip_range(clip_start, clip_end)}. "
            "Во время рендера кнопки временно заблокированы."
        )

    cmd = [
        "ffmpeg",
        "-y",
        "-hide_banner",
        "-loglevel",
        "error",
        "-loop",
        "1",
        "-framerate",
        str(settings.fps),
        "-i",
        str(image_path),
        "-ss",
        f"{clip_start:.3f}",
        "-t",
        f"{clip_duration:.3f}",
        "-i",
        str(audio_path),
        "-filter_complex",
        build_filter_graph(preset, for_video=True),
        "-map",
        "[v]",
        "-map",
        "1:a:0",
        "-t",
        f"{clip_duration:.3f}",
        "-r",
        str(settings.fps),
        "-c:v",
        "libx264",
        "-preset",
        settings.encoder_preset,
        "-tune",
        "stillimage",
        "-profile:v",
        "high",
        "-level:v",
        "4.2",
        "-pix_fmt",
        "yuv420p",
        "-colorspace",
        "bt709",
        "-color_primaries",
        "bt709",
        "-color_trc",
        "bt709",
    ]

    if settings.rate_control == "CRF (качество)":
        cmd.extend(["-crf", str(settings.crf)])
    elif settings.rate_control == "Целевой битрейт":
        cmd.extend(["-b:v", settings.video_bitrate, "-maxrate", settings.video_bitrate, "-bufsize", multiply_bitrate(settings.video_bitrate, 2)])
    else:
        cmd.extend(["-crf", str(settings.crf), "-maxrate", settings.video_bitrate, "-bufsize", multiply_bitrate(settings.video_bitrate, 2)])

    cmd.extend(build_audio_output_args(audio_path, settings))
    cmd.extend(["-shortest", "-movflags", "+faststart", str(output)])

    result = run_long_process(cmd, cancel_event=cancel_event, process_callback=process_callback)
    if result.returncode != 0:
        raise RuntimeError(f"Не удалось создать видео.\n{result.stderr.strip() or result.stdout.strip()}")
    return output


class VideoMakerApp:
    def __init__(self, root: tk.Tk) -> None:
        self.root = root
        self.root.title("Сборщик видео из фото и музыки")
        self.root.geometry("1100x640")
        self.root.minsize(960, 600)

        self.image_var = tk.StringVar()
        self.audio_var = tk.StringVar()
        self.output_var = tk.StringVar(value=str(DEFAULT_OUTPUT_DIR))
        self.preset_var = tk.StringVar(value=PRESETS[2].name)
        self.profile_var = tk.StringVar(value=RENDER_PROFILES[1].name)
        self.rate_control_var = tk.StringVar(value=RATE_CONTROL_OPTIONS[0])
        self.crf_var = tk.IntVar(value=17)
        self.video_bitrate_var = tk.StringVar(value="12M")
        self.audio_bitrate_var = tk.StringVar(value="320k")
        self.fps_var = tk.StringVar(value="30")
        self.encoder_preset_var = tk.StringVar(value="slow")
        self.trim_start_var = tk.StringVar(value="0")
        self.trim_end_var = tk.StringVar(value="")
        self.profile_description_var = tk.StringVar(value="")
        self.summary_var = tk.StringVar(value="")
        self.status_var = tk.StringVar(value="Готово к работе.")

        self.cancel_event = threading.Event()
        self.current_process: subprocess.Popen[str] | None = None

        self._build_style()
        self._build_ui()
        self.apply_profile(self.profile_var.get())
        self.update_rate_control_state()
        self.update_summary()
        self.set_busy(False)
        self._bind_summary_updates()

    def _build_style(self) -> None:
        style = ttk.Style(self.root)
        if "clam" in style.theme_names():
            style.theme_use("clam")
        style.configure("TButton", padding=(10, 8))
        style.configure("Accent.TButton", padding=(12, 10))
        style.configure("TLabelframe", padding=8)
        style.configure("TLabelframe.Label", font=("Segoe UI", 10, "bold"))

    def _build_ui(self) -> None:
        container = ttk.Frame(self.root, padding=16)
        container.grid(row=0, column=0, sticky="nsew")
        self.root.columnconfigure(0, weight=1)
        self.root.rowconfigure(0, weight=1)
        container.columnconfigure(0, weight=1)
        container.rowconfigure(4, weight=1)

        ttk.Label(
            container,
            text=(
                "Программа делает видео из одной картинки на всю длину трека. "
                "Фон двигается плавно, центр режется в квадрат 1:1, картинка слегка улучшается при рендере."
            ),
            wraplength=1040,
            justify="left",
        ).grid(row=0, column=0, sticky="ew", pady=(0, 12))

        source_frame = ttk.LabelFrame(container, text="Файлы")
        source_frame.grid(row=1, column=0, sticky="ew")
        source_frame.columnconfigure(1, weight=1)

        ttk.Label(source_frame, text="Фотография").grid(row=0, column=0, sticky="w", padx=(0, 10))
        ttk.Entry(source_frame, textvariable=self.image_var).grid(row=0, column=1, sticky="ew", pady=5)
        ttk.Button(source_frame, text="Выбрать", command=self.pick_photo).grid(row=0, column=2, padx=(8, 0))

        ttk.Label(source_frame, text="Музыка").grid(row=1, column=0, sticky="w", padx=(0, 10))
        ttk.Entry(source_frame, textvariable=self.audio_var).grid(row=1, column=1, sticky="ew", pady=5)
        ttk.Button(source_frame, text="Выбрать", command=self.pick_audio).grid(row=1, column=2, padx=(8, 0))

        ttk.Label(source_frame, text="Папка сохранения").grid(row=2, column=0, sticky="w", padx=(0, 10))
        ttk.Entry(source_frame, textvariable=self.output_var).grid(row=2, column=1, sticky="ew", pady=5)
        output_actions = ttk.Frame(source_frame)
        output_actions.grid(row=2, column=2, padx=(8, 0), sticky="e")
        ttk.Button(output_actions, text="Выбрать", command=self.pick_output).grid(row=0, column=0, padx=(0, 6))
        ttk.Button(output_actions, text="Открыть", command=self.open_output_folder).grid(row=0, column=1)

        settings_frame = ttk.LabelFrame(container, text="Настройки рендера")
        settings_frame.grid(row=2, column=0, sticky="ew", pady=(12, 0))
        settings_frame.columnconfigure(0, weight=1)
        settings_frame.columnconfigure(1, weight=1)

        left_frame = ttk.Frame(settings_frame)
        left_frame.grid(row=0, column=0, sticky="nsew", padx=(0, 10))
        left_frame.columnconfigure(1, weight=1)

        ttk.Label(left_frame, text="Формат кадра").grid(row=0, column=0, sticky="w")
        ttk.Combobox(left_frame, textvariable=self.preset_var, values=[preset.name for preset in PRESETS], state="readonly", width=14).grid(row=0, column=1, sticky="ew", pady=4)

        ttk.Label(left_frame, text="Готовый профиль").grid(row=1, column=0, sticky="w")
        profile_box = ttk.Combobox(left_frame, textvariable=self.profile_var, values=[profile.name for profile in RENDER_PROFILES], state="readonly", width=18)
        profile_box.grid(row=1, column=1, sticky="ew", pady=4)
        profile_box.bind("<<ComboboxSelected>>", self.on_profile_selected)

        ttk.Label(left_frame, text="FPS").grid(row=2, column=0, sticky="w")
        ttk.Combobox(left_frame, textvariable=self.fps_var, values=list(FPS_OPTIONS), state="readonly", width=14).grid(row=2, column=1, sticky="ew", pady=4)

        ttk.Label(left_frame, text="Пресет x264").grid(row=3, column=0, sticky="w")
        ttk.Combobox(left_frame, textvariable=self.encoder_preset_var, values=list(X264_PRESETS), state="readonly", width=14).grid(row=3, column=1, sticky="ew", pady=4)

        right_frame = ttk.Frame(settings_frame)
        right_frame.grid(row=0, column=1, sticky="nsew")
        right_frame.columnconfigure(1, weight=1)

        ttk.Label(right_frame, text="Режим контроля").grid(row=0, column=0, sticky="w")
        rate_box = ttk.Combobox(right_frame, textvariable=self.rate_control_var, values=list(RATE_CONTROL_OPTIONS), state="readonly", width=20)
        rate_box.grid(row=0, column=1, sticky="ew", pady=4)
        rate_box.bind("<<ComboboxSelected>>", self.on_rate_control_selected)

        ttk.Label(right_frame, text="CRF").grid(row=1, column=0, sticky="w")
        self.crf_spinbox = ttk.Spinbox(right_frame, from_=0, to=30, textvariable=self.crf_var, width=12)
        self.crf_spinbox.grid(row=1, column=1, sticky="ew", pady=4)

        ttk.Label(right_frame, text="Видео битрейт").grid(row=2, column=0, sticky="w")
        self.video_bitrate_entry = ttk.Entry(right_frame, textvariable=self.video_bitrate_var)
        self.video_bitrate_entry.grid(row=2, column=1, sticky="ew", pady=4)

        ttk.Label(right_frame, text="Аудио битрейт").grid(row=3, column=0, sticky="w")
        ttk.Entry(right_frame, textvariable=self.audio_bitrate_var).grid(row=3, column=1, sticky="ew", pady=4)

        ttk.Label(right_frame, text="Старт трека").grid(row=4, column=0, sticky="w")
        ttk.Entry(right_frame, textvariable=self.trim_start_var).grid(row=4, column=1, sticky="ew", pady=4)

        ttk.Label(right_frame, text="Финиш трека").grid(row=5, column=0, sticky="w")
        ttk.Entry(right_frame, textvariable=self.trim_end_var).grid(row=5, column=1, sticky="ew", pady=4)

        info_frame = ttk.LabelFrame(container, text="Подсказка")
        info_frame.grid(row=3, column=0, sticky="ew", pady=(12, 0))
        info_frame.columnconfigure(0, weight=1)
        ttk.Label(info_frame, textvariable=self.profile_description_var, wraplength=1040, justify="left").grid(row=0, column=0, sticky="ew")
        ttk.Label(info_frame, textvariable=self.summary_var, wraplength=1040, justify="left", font=("Segoe UI", 9, "bold")).grid(row=1, column=0, sticky="ew", pady=(8, 0))

        lower_frame = ttk.Frame(container)
        lower_frame.grid(row=4, column=0, sticky="nsew", pady=(12, 0))
        lower_frame.columnconfigure(0, weight=1)
        lower_frame.rowconfigure(2, weight=1)

        actions_frame = ttk.LabelFrame(lower_frame, text="Действия")
        actions_frame.grid(row=0, column=0, sticky="ew")
        for column in range(3):
            actions_frame.columnconfigure(column, weight=1)

        self.preview_btn = ttk.Button(actions_frame, text="Сделать превью", command=self.on_preview)
        self.preview_btn.grid(row=0, column=0, sticky="ew", padx=(0, 8))
        self.video_btn = ttk.Button(actions_frame, text="Сделать видео", command=self.on_video, style="Accent.TButton")
        self.video_btn.grid(row=0, column=1, sticky="ew", padx=8)
        self.all_btn = ttk.Button(actions_frame, text="Сделать всё", command=self.on_all, style="Accent.TButton")
        self.all_btn.grid(row=0, column=2, sticky="ew", padx=(8, 0))

        self.listen_btn = ttk.Button(actions_frame, text="Слушать музыку", command=self.on_listen_audio)
        self.listen_btn.grid(row=1, column=0, sticky="ew", padx=(0, 8), pady=(8, 0))
        self.spectrum_btn = ttk.Button(actions_frame, text="Показать спектр", command=self.on_audio_spectrum)
        self.spectrum_btn.grid(row=1, column=1, sticky="ew", padx=8, pady=(8, 0))
        action_tail = ttk.Frame(actions_frame)
        action_tail.grid(row=1, column=2, sticky="ew", padx=(8, 0), pady=(8, 0))
        action_tail.columnconfigure(0, weight=1)
        action_tail.columnconfigure(1, weight=1)
        self.cancel_btn = ttk.Button(action_tail, text="Отмена", command=self.cancel_render)
        self.cancel_btn.grid(row=0, column=0, sticky="ew", padx=(0, 6))
        self.open_folder_btn = ttk.Button(action_tail, text="Открыть папку", command=self.open_output_folder)
        self.open_folder_btn.grid(row=0, column=1, sticky="ew")

        self.progress = ttk.Progressbar(lower_frame, mode="indeterminate")
        self.progress.grid(row=1, column=0, sticky="ew", pady=(10, 10))

        status_frame = ttk.LabelFrame(lower_frame, text="Статус")
        status_frame.grid(row=2, column=0, sticky="nsew")
        status_frame.columnconfigure(0, weight=1)
        status_frame.rowconfigure(0, weight=1)
        self.status_label = ttk.Label(status_frame, textvariable=self.status_var, justify="left", anchor="nw", wraplength=1030)
        self.status_label.grid(row=0, column=0, sticky="nsew")

    def _bind_summary_updates(self) -> None:
        for variable in (
            self.preset_var,
            self.profile_var,
            self.rate_control_var,
            self.video_bitrate_var,
            self.audio_bitrate_var,
            self.fps_var,
            self.encoder_preset_var,
            self.trim_start_var,
            self.trim_end_var,
        ):
            variable.trace_add("write", self.on_settings_changed)
        self.crf_var.trace_add("write", self.on_settings_changed)

    def set_busy(self, busy: bool) -> None:
        action_state = "disabled" if busy else "normal"
        cancel_state = "normal" if busy else "disabled"
        self.preview_btn.configure(state=action_state)
        self.video_btn.configure(state=action_state)
        self.all_btn.configure(state=action_state)
        self.listen_btn.configure(state=action_state)
        self.spectrum_btn.configure(state=action_state)
        self.open_folder_btn.configure(state=action_state)
        self.cancel_btn.configure(state=cancel_state)
        if busy:
            self.progress.start(10)
        else:
            self.progress.stop()

    def register_process(self, process: subprocess.Popen[str] | None) -> None:
        self.current_process = process

    def cancel_render(self) -> None:
        self.cancel_event.set()
        process = self.current_process
        if process and process.poll() is None:
            try:
                process.terminate()
            except OSError:
                pass
        self.status_var.set("Отменяю рендер...")

    def set_status(self, text: str) -> None:
        self.root.after(0, lambda: self.status_var.set(text))

    def pick_photo(self) -> None:
        path = filedialog.askopenfilename(title="Выбери фотографию", filetypes=(("Картинки", "*.jpg *.jpeg *.png *.bmp *.webp"), ("Все файлы", "*.*")))
        if path:
            self.image_var.set(path)

    def pick_audio(self) -> None:
        path = filedialog.askopenfilename(title="Выбери музыку", filetypes=(("Аудио", "*.mp3 *.wav *.ogg *.flac *.m4a *.aac"), ("Все файлы", "*.*")))
        if path:
            self.audio_var.set(path)

    def pick_output(self) -> None:
        path = filedialog.askdirectory(title="Выбери папку сохранения")
        if path:
            self.output_var.set(path)

    def open_output_folder(self) -> None:
        out_dir = Path(self.output_var.get().strip('" '))
        out_dir.mkdir(parents=True, exist_ok=True)
        os.startfile(str(out_dir))

    def selected_preset(self) -> Preset:
        return PRESET_BY_NAME[self.preset_var.get()]

    def selected_render_settings(self) -> RenderSettings:
        crf = int(self.crf_var.get())
        if crf < 0 or crf > 30:
            raise RuntimeError("CRF должен быть в диапазоне от 0 до 30.")
        return RenderSettings(
            rate_control=self.rate_control_var.get(),
            crf=crf,
            video_bitrate=validate_bitrate(self.video_bitrate_var.get().strip() or "12M", "Видео битрейт"),
            audio_bitrate=validate_bitrate(self.audio_bitrate_var.get(), "Аудио битрейт"),
            fps=int(self.fps_var.get()),
            encoder_preset=self.encoder_preset_var.get(),
            clip_start_seconds=float(parse_timecode(self.trim_start_var.get(), "Старт трека") or 0.0),
            clip_end_seconds=parse_timecode(self.trim_end_var.get(), "Финиш трека", allow_empty=True),
        )
    def apply_profile(self, profile_name: str) -> None:
        profile = PROFILE_BY_NAME[profile_name]
        self.rate_control_var.set(profile.rate_control)
        self.crf_var.set(profile.crf)
        self.video_bitrate_var.set(profile.video_bitrate)
        self.audio_bitrate_var.set(profile.audio_bitrate)
        self.fps_var.set(str(profile.fps))
        self.encoder_preset_var.set(profile.encoder_preset)
        self.profile_description_var.set(profile.description)

    def update_rate_control_state(self) -> None:
        rate_control = self.rate_control_var.get()
        self.crf_spinbox.configure(state="normal" if rate_control in ("CRF (качество)", "Гибрид") else "disabled")
        self.video_bitrate_entry.configure(state="normal" if rate_control in ("Целевой битрейт", "Гибрид") else "disabled")

    def update_summary(self) -> None:
        preset = self.selected_preset()
        settings = self.selected_render_settings()
        center_size = foreground_square_size(preset)
        clip_text = describe_clip_range(settings.clip_start_seconds, settings.clip_end_seconds)
        self.summary_var.set(
            f"Сборка: {preset.name} ({preset.width}x{preset.height}), {settings.fps} FPS, режим '{settings.rate_control}', "
            f"CRF {settings.crf}, видео {settings.video_bitrate}, аудио {settings.audio_bitrate}, "
            f"x264 {settings.encoder_preset}, центр 1:1 {center_size}x{center_size}, фон двигается плавно, "
            f"обрезка: {clip_text}. Музыку можно открыть отдельно, а спектр построить отдельно вне видео. "
            "Для AAC/M4A/MP3 звук идёт без повторного пережатия."
        )
    def on_settings_changed(self, *_args: object) -> None:
        try:
            self.update_summary()
        except Exception:
            self.summary_var.set("Сборка: проверь значения в полях настроек.")

    def on_profile_selected(self, _event: object | None = None) -> None:
        self.apply_profile(self.profile_var.get())
        self.update_rate_control_state()
        self.on_settings_changed()

    def on_rate_control_selected(self, _event: object | None = None) -> None:
        self.update_rate_control_state()
        self.on_settings_changed()

    def validate_paths(self, need_audio: bool) -> tuple[Path, Path | None, Path]:
        image_path = Path(self.image_var.get().strip('" '))
        if not image_path.is_file():
            raise RuntimeError("Файл фотографии не найден.")
        audio_path: Path | None = None
        if need_audio:
            audio_path = Path(self.audio_var.get().strip('" '))
            if not audio_path.is_file():
                raise RuntimeError("Файл музыки не найден.")
        return image_path, audio_path, Path(self.output_var.get().strip('" '))
    def validate_audio_path(self) -> Path:
        audio_path = Path(self.audio_var.get().strip('" '))
        if not audio_path.is_file():
            raise RuntimeError("Файл музыки не найден.")
        return audio_path
    def run_async(self, title: str, task: Callable[[], str], need_ffmpeg: bool = True) -> None:
        if need_ffmpeg:
            missing = get_missing_tools()
            if missing:
                messagebox.showerror("Не хватает инструментов", f"В системе не найдены: {', '.join(missing)}\nСначала установи ffmpeg.")
                return
        self.cancel_event.clear()
        self.register_process(None)
        self.set_busy(True)
        self.status_var.set(f"{title}: обработка запущена...")
        def worker() -> None:
            try:
                done_message = task()
                self.root.after(0, lambda: self.status_var.set(done_message))
            except RuntimeError as exc:
                if "отмен" in str(exc).lower():
                    self.root.after(0, lambda: self.status_var.set("Рендер отменён."))
                else:
                    self.root.after(0, lambda: self.status_var.set(f"Ошибка: {exc}"))
                    self.root.after(0, lambda: messagebox.showerror("Ошибка", str(exc)))
            except Exception as exc:
                self.root.after(0, lambda: self.status_var.set(f"Ошибка: {exc}"))
                self.root.after(0, lambda: messagebox.showerror("Ошибка", str(exc)))
            finally:
                self.root.after(0, lambda: self.register_process(None))
                self.root.after(0, lambda: self.set_busy(False))
        threading.Thread(target=worker, daemon=True).start()
    def on_listen_audio(self) -> None:
        audio_path = self.validate_audio_path()
        os.startfile(str(audio_path))
        self.status_var.set(f"Открыл музыку: {audio_path}")
    def on_audio_spectrum(self) -> None:
        def task() -> str:
            audio_path = self.validate_audio_path()
            out_dir = Path(self.output_var.get().strip('" '))
            settings = self.selected_render_settings()
            spectrum_path = make_audio_spectrum_preview(
                audio_path,
                settings,
                out_dir,
                self.set_status,
                cancel_event=self.cancel_event,
                process_callback=self.register_process,
            )
            os.startfile(str(audio_path))
            os.startfile(str(spectrum_path))
            return (
                f"Музыка и спектр открыты:\n{audio_path}\n{spectrum_path}\n"
                f"Отрезок: {describe_clip_range(settings.clip_start_seconds, settings.clip_end_seconds)}"
            )
        self.run_async("Музыка и спектр", task)
    def on_preview(self) -> None:
        def task() -> str:
            image_path, _, out_dir = self.validate_paths(need_audio=False)
            output = make_preview(
                image_path,
                self.selected_preset(),
                out_dir,
                self.set_status,
                cancel_event=self.cancel_event,
                process_callback=self.register_process,
            )
            return f"Превью готово:\n{output}"
        self.run_async("Превью", task)
    def on_video(self) -> None:
        def task() -> str:
            image_path, audio_path, out_dir = self.validate_paths(need_audio=True)
            assert audio_path is not None
            settings = self.selected_render_settings()
            output = make_video(
                image_path,
                audio_path,
                self.selected_preset(),
                settings,
                out_dir,
                self.set_status,
                cancel_event=self.cancel_event,
                process_callback=self.register_process,
            )
            return (
                f"Видео готово:\n{output}\n"
                f"Режим: {settings.rate_control}, CRF: {settings.crf}, видео: {settings.video_bitrate}, "
                f"звук: {audio_mode_label(audio_path, settings)}, FPS: {settings.fps}, "
                f"обрезка: {describe_clip_range(settings.clip_start_seconds, settings.clip_end_seconds)}, "
                f"x264: {settings.encoder_preset}"
            )
        self.run_async("Видео", task)
    def on_all(self) -> None:
        def task() -> str:
            image_path, audio_path, out_dir = self.validate_paths(need_audio=True)
            assert audio_path is not None
            settings = self.selected_render_settings()
            preset = self.selected_preset()
            preview_out = make_preview(
                image_path,
                preset,
                out_dir,
                self.set_status,
                cancel_event=self.cancel_event,
                process_callback=self.register_process,
            )
            video_out = make_video(
                image_path,
                audio_path,
                preset,
                settings,
                out_dir,
                self.set_status,
                cancel_event=self.cancel_event,
                process_callback=self.register_process,
            )
            return (
                f"Готово:\nПревью: {preview_out}\nВидео: {video_out}\n"
                f"Режим: {settings.rate_control}, CRF: {settings.crf}, видео: {settings.video_bitrate}, "
                f"звук: {audio_mode_label(audio_path, settings)}, FPS: {settings.fps}, "
                f"обрезка: {describe_clip_range(settings.clip_start_seconds, settings.clip_end_seconds)}, "
                f"x264: {settings.encoder_preset}"
            )
        self.run_async("Превью и видео", task)

def main() -> None:
    root = tk.Tk()
    VideoMakerApp(root)
    root.mainloop()


if __name__ == "__main__":
    main()
