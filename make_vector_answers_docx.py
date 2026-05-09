from pathlib import Path
from xml.sax.saxutils import escape
import re
import zipfile


OUTPUT_DOCX = "Решу ЕГЭ математика профильная - векторы - ответы.docx"
OUTPUT_TXT = "Решу ЕГЭ математика профильная - векторы - ответы.txt"
TEMPLATE_DOCX = "Проверочная работа по периоду 1953-1964 гг - ОТВЕТЫ.docx"


TITLE = "Решу ЕГЭ. Векторы. Краткие решения"

ANSWERS = [
    "1. a = (-2; 0), b = (5; -3). a·b = -2·5 + 0·(-3) = -10. Ответ: -10.",
    "2. По рисунку: a = (-2; 6), b = (3; 1), c = (2; 4). Из c = ka + lb получаем систему: -2k + 3l = 2, 6k + l = 4. Отсюда k = 0,5. Ответ: 0,5.",
    "3. |a| = sqrt((-3)^2 + (-4)^2) = 5. Ответ: 5.",
    "4. a - 12b = (17; 0) - (12; -12) = (5; 12). Длина: sqrt(25 + 144) = 13. Ответ: 13.",
    "5. По рисунку: a = (-4; 2), b = (1; 5). a + b = (-3; 7). Квадрат длины: 9 + 49 = 58. Ответ: 58.",
    "6. a·b = 2,5·(-4) + 6·3 = -10 + 18 = 8. Ответ: 8.",
    "7. По рисунку: a = (3; 3), b = (6; 1). a - b = (-3; 2). Квадрат длины: 9 + 4 = 13. Ответ: 13.",
    "8. По рисунку: a = (3; -4), b = (5; 2). a·b = 3·5 + (-4)·2 = 15 - 8 = 7. Ответ: 7.",
    "9. В прямоугольном треугольнике AB = AC + CB, причём AC ⟂ CB. Значит, AB·AC = AC·AC = |AC|^2 = 3. Ответ: 3.",
    "10. Диагональ прямоугольника: sqrt((6 - 2)^2 + (4 - 1)^2) = sqrt(16 + 9) = 5. Ответ: 5.",
    "11. a - b = (5; 2) - (3; -6) = (2; 8). 5a - b = (25; 10) - (3; -6) = (22; 16). Тогда (a - b)(5a - b) = 2·22 + 8·16 = 172. Ответ: 172.",
    "12. AB = (3; 1), B = (5; 4). Тогда A = (5 - 3; 4 - 1) = (2; 3). Сумма координат A: 2 + 3 = 5. Ответ: 5.",
    "13. A = (-21; 4), AB = (8; 9). Тогда B = (-13; 13). Сумма координат B: -13 + 13 = 0. Ответ: 0.",
    "14. AB·AC = |AB||AC|cos60° = 35·35·1/2 = 1225/2 = 612,5. Ответ: 612,5.",
    "15. |a| = sqrt((-8)^2 + 6^2) = 10. Тогда |3a| = 3·10 = 30. Ответ: 30.",
    "16. 4a + 3b - c = (28; -20) + (-27; 15) - (25; -12) = (-24; 7). Длина: sqrt(576 + 49) = 25. Ответ: 25.",
    "17. AB + AD = AC. По рисунку AC — большая диагональ ромба, она равна 16. Ответ: 16.",
    "18. По рисунку: a = (2; 6), b = (8; 4). a·b = 2·8 + 6·4 = 40. Ответ: 40.",
    "19. AB = (0; 5), A = (12; 1). Тогда B = (12; 6). Абсцисса точки B равна 12. Ответ: 12.",
    "20. AB = (4; 12), B = (14; -3). Тогда A = (14 - 4; -3 - 12) = (10; -15). Ордината точки A равна -15. Ответ: -15.",
    "21. По рисунку: a = (1; -1), b = (-2; 1). 2a - b = (4; -3). Длина: sqrt(16 + 9) = 5. Ответ: 5.",
    "22. a + b = (-3; 8) + (14; -5) = (11; 3). Тогда (a + b)·c = (11; 3)·(-2; 6) = -22 + 18 = -4. Ответ: -4.",
    "23. В ромбе диагонали взаимно перпендикулярны. Значит, AO ⟂ BO, поэтому AO·BO = 0. Ответ: 0.",
    "24. По рисунку: a = (3; 2), b = (6; 1). a·b = 3·6 + 2·1 = 20. Ответ: 20.",
    "25. По рисунку: a = (2; 6), b = (8; 4). a + b = (10; 10). Квадрат длины: 100 + 100 = 200. Ответ: 200.",
    "26. По рисунку: a = (3; 2), b = (6; 1). a + b = (9; 3). Квадрат длины: 81 + 9 = 90. Ответ: 90.",
    "27. По рисунку: a = (1; 2), b = (-1; -3), c = (5; 3). a + b = (0; -1). Тогда (a + b)·c = 0·5 + (-1)·3 = -3. Ответ: -3.",
    "28. AB - AC = B - A - (C - A) = B - C = CB. Значит, длина вектора AB - AC равна стороне треугольника: 33. Ответ: 33.",
    "29. По рисунку: a = (2; 6), b = (8; 4). a - b = (-6; 2). Квадрат длины: 36 + 4 = 40. Ответ: 40.",
    "30. cos(a, b) = (a·b)/(|a||b|) = (3·(-4) + 4·(-3)) / (5·5) = -24/25 = -0,96. Ответ: -0,96.",
]


def build_txt() -> None:
    lines = [TITLE, ""]
    lines.extend(ANSWERS)
    Path(OUTPUT_TXT).write_text("\n".join(lines) + "\n", encoding="utf-8")


def make_paragraph_xml(text: str) -> str:
    if not text:
        return "<w:p/>"
    return (
        "<w:p>"
        "<w:r>"
        f'<w:t xml:space="preserve">{escape(text)}</w:t>'
        "</w:r>"
        "</w:p>"
    )


def build_document_xml(template_xml: str) -> str:
    match = re.search(r"(<w:sectPr[\s\S]*?</w:sectPr>)", template_xml)
    sect_pr = match.group(1) if match else ""

    paragraphs = [make_paragraph_xml(TITLE), make_paragraph_xml(""), make_paragraph_xml("Короткие решения по каждому номеру.")]
    paragraphs.extend(make_paragraph_xml(line) for line in ANSWERS)
    body = "".join(paragraphs) + sect_pr

    return (
        "<?xml version='1.0' encoding='UTF-8' standalone='yes'?>"
        '<w:document xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" '
        'xmlns:mo="http://schemas.microsoft.com/office/mac/office/2008/main" '
        'xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" '
        'xmlns:mv="urn:schemas-microsoft-com:mac:vml" '
        'xmlns:o="urn:schemas-microsoft-com:office:office" '
        'xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" '
        'xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" '
        'xmlns:v="urn:schemas-microsoft-com:vml" '
        'xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" '
        'xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" '
        'xmlns:w10="urn:schemas-microsoft-com:office:word" '
        'xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" '
        'xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" '
        'xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" '
        'xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" '
        'xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" '
        'xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" '
        'mc:Ignorable="w14 wp14">'
        f"<w:body>{body}</w:body>"
        "</w:document>"
    )


def build_docx() -> None:
    template_path = Path(TEMPLATE_DOCX)
    if not template_path.exists():
        raise FileNotFoundError(f"Не найден шаблон: {TEMPLATE_DOCX}")

    with zipfile.ZipFile(template_path, "r") as source_zip:
        template_xml = source_zip.read("word/document.xml").decode("utf-8")
        new_document_xml = build_document_xml(template_xml).encode("utf-8")

        with zipfile.ZipFile(OUTPUT_DOCX, "w", zipfile.ZIP_DEFLATED) as target_zip:
            for info in source_zip.infolist():
                data = source_zip.read(info.filename)
                if info.filename == "word/document.xml":
                    data = new_document_xml
                target_zip.writestr(info, data)


if __name__ == "__main__":
    build_txt()
    build_docx()
    print(f"Созданы файлы: {OUTPUT_TXT}, {OUTPUT_DOCX}")
