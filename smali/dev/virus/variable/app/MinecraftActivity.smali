.class public Ldev/virus/variable/app/MinecraftActivity;
.super Lcom/mojang/minecraftpe/MainActivity;
.source "SourceFile"


# static fields
.field public static b:La2/d;

.field public static bindOpacity:I

.field public static bindShape:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:Ljava/lang/String;

.field public static i:F

.field public static j:F

.field public static k:I

.field public static splashView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 1
    sget-object v0, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    .line 2
    iget-object v0, v0, Lm2/b;->b:Landroid/support/v4/app/i;

    .line 3
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Lm2/b;

    .line 4
    iget-object v0, v0, Lm2/b;->a:Lm2/a;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lt/o;->c:Lt/o;

    if-nez v0, :cond_0

    new-instance v0, Lt/o;

    invoke-direct {v0}, Lt/o;-><init>()V

    .line 7
    :cond_0
    iget-object v0, v0, Lt/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public final getPixelsPerMillimeter()F
    .registers 4

    const-string v0, "variable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "custom_dpi_value"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 14

    invoke-super {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ldev/virus/variable/app/CrashHandler;

    invoke-direct {p1}, Ldev/virus/variable/app/CrashHandler;-><init>()V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p1, Ldev/virus/variable/app/MinecraftActivity;->c:I

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p1, Ldev/virus/variable/app/MinecraftActivity;->d:I

    const-string p1, "variable"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "main_color_red"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->e:I

    const-string v1, "main_color_green"

    const/16 v2, 0xbc

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->f:I

    const-string v1, "main_color_blue"

    const/16 v2, 0xd4

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->g:I

    const-string v1, "#%02x%02x%02x"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Ldev/virus/variable/app/MinecraftActivity;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    sget v4, Ldev/virus/variable/app/MinecraftActivity;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget v4, Ldev/virus/variable/app/MinecraftActivity;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    const-string v1, "bind_text_size"

    const/high16 v3, 0x41100000    # 9.0f

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->i:F

    const-string v1, "bind_size"

    const v3, 0x3d851eb8    # 0.065f

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->j:F

    const-string v1, "menu_position"

    const v3, 0x800015

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const/16 v3, 0x11

    if-eq v1, v3, :cond_0

    const v3, 0x800015

    if-eq v1, v3, :cond_0

    sput v3, Ldev/virus/variable/app/MinecraftActivity;->k:I

    :cond_0
    const-string v1, "bind_shape"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->bindShape:I

    const-string v1, "bind_opacity"

    const/16 v3, 0x64

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->bindOpacity:I

    sget-object p1, Lz1/b;->a:Ljava/lang/String;

    .line 1
    new-instance p1, Ljava/io/File;

    sget-object v1, Lz1/b;->a:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lz1/b;->b:Ljava/util/ArrayList;

    new-instance v8, Lz1/a;

    invoke-direct {v8, v4}, Lz1/a;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x69

    new-array p1, p1, [Lc2/b;

    .line 2
    new-instance v1, Ld2/b;

    invoke-direct {v1}, Ld2/b;-><init>()V

    aput-object v1, p1, v0

    new-instance v1, Ld2/d;

    invoke-direct {v1}, Ld2/d;-><init>()V

    aput-object v1, p1, v5

    new-instance v1, Ld2/e;

    invoke-direct {v1, v0}, Ld2/e;-><init>(I)V

    aput-object v1, p1, v6

    new-instance v1, Ld2/f;

    invoke-direct {v1}, Ld2/f;-><init>()V

    aput-object v1, p1, v2

    new-instance v1, Ld2/g;

    invoke-direct {v1, v0}, Ld2/g;-><init>(I)V

    const/4 v3, 0x4

    aput-object v1, p1, v3

    new-instance v1, Ld2/i;

    invoke-direct {v1}, Ld2/i;-><init>()V

    const/4 v4, 0x5

    aput-object v1, p1, v4

    new-instance v1, Ld2/j;

    invoke-direct {v1}, Ld2/j;-><init>()V

    const/4 v7, 0x6

    aput-object v1, p1, v7

    new-instance v1, Ld2/l;

    invoke-direct {v1}, Ld2/l;-><init>()V

    const/4 v8, 0x7

    aput-object v1, p1, v8

    const/16 v1, 0x8

    new-instance v9, Ld2/m;

    invoke-direct {v9, v0}, Ld2/m;-><init>(I)V

    aput-object v9, p1, v1

    const/16 v1, 0x9

    new-instance v9, Ld2/g;

    invoke-direct {v9, v5}, Ld2/g;-><init>(I)V

    aput-object v9, p1, v1

    const/16 v1, 0xa

    new-instance v9, Ld2/n;

    invoke-direct {v9}, Ld2/n;-><init>()V

    aput-object v9, p1, v1

    const/16 v1, 0xb

    new-instance v9, Ld2/o;

    invoke-direct {v9}, Ld2/o;-><init>()V

    aput-object v9, p1, v1

    const/16 v1, 0xc

    new-instance v9, Ld2/g;

    invoke-direct {v9, v3}, Ld2/g;-><init>(I)V

    aput-object v9, p1, v1

    const/16 v1, 0xd

    new-instance v9, Lf2/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lf2/c;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v9, p1, v1

    const/16 v1, 0xe

    new-instance v9, Le2/t;

    invoke-direct {v9, v5}, Le2/t;-><init>(I)V

    aput-object v9, p1, v1

    const/16 v1, 0xf

    new-instance v9, Lf2/d;

    invoke-direct {v9}, Lf2/d;-><init>()V

    aput-object v9, p1, v1

    const/16 v1, 0x10

    new-instance v9, Lf2/f;

    invoke-direct {v9}, Lf2/f;-><init>()V

    aput-object v9, p1, v1

    const/16 v1, 0x11

    new-instance v9, Lf2/h;

    invoke-direct {v9}, Lf2/h;-><init>()V

    aput-object v9, p1, v1

    const/16 v1, 0x12

    new-instance v9, Lf2/i;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lf2/i;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v9, p1, v1

    const/16 v1, 0x13

    new-instance v9, Lf2/j;

    invoke-direct {v9, v0}, Lf2/j;-><init>(I)V

    aput-object v9, p1, v1

    const/16 v1, 0x14

    new-instance v9, Ld2/g;

    invoke-direct {v9, v4}, Ld2/g;-><init>(I)V

    aput-object v9, p1, v1

    const/16 v1, 0x15

    new-instance v4, Lf2/k;

    invoke-direct {v4}, Lf2/k;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x16

    new-instance v4, Lf2/j;

    invoke-direct {v4, v5}, Lf2/j;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x17

    new-instance v4, Le2/w;

    invoke-direct {v4, v5}, Le2/w;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x18

    new-instance v4, Lf2/l;

    invoke-direct {v4, v0}, Lf2/l;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x19

    new-instance v4, Lh2/a;

    invoke-direct {v4}, Lh2/a;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x1a

    new-instance v4, Lh2/b;

    invoke-direct {v4}, Lh2/b;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x1b

    new-instance v4, Lh2/c;

    invoke-direct {v4, v0}, Lh2/c;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x1c

    new-instance v4, Lf2/l;

    invoke-direct {v4, v6}, Lf2/l;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x1d

    new-instance v4, Lh2/d;

    invoke-direct {v4}, Lh2/d;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x1e

    new-instance v4, Ld2/m;

    invoke-direct {v4, v6}, Ld2/m;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x1f

    new-instance v4, Lh2/c;

    invoke-direct {v4, v5}, Lh2/c;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x20

    new-instance v4, Lh2/e;

    invoke-direct {v4}, Lh2/e;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x21

    new-instance v4, Lh2/h;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Lh2/h;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v4, p1, v1

    const/16 v1, 0x22

    new-instance v4, Lh2/j;

    invoke-direct {v4}, Lh2/j;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x23

    new-instance v4, Le2/w;

    invoke-direct {v4, v6}, Le2/w;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x24

    new-instance v4, Lh2/k;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Lh2/k;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v4, p1, v1

    const/16 v1, 0x25

    new-instance v4, Lh2/l;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Lh2/l;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v4, p1, v1

    const/16 v1, 0x26

    new-instance v4, Ld2/g;

    invoke-direct {v4, v8}, Ld2/g;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x27

    new-instance v4, Lh2/m;

    invoke-direct {v4}, Lh2/m;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x28

    new-instance v4, Ld2/m;

    invoke-direct {v4, v2}, Ld2/m;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x29

    new-instance v4, Le2/w;

    invoke-direct {v4, v2}, Le2/w;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x2a

    new-instance v4, Le2/b;

    invoke-direct {v4}, Le2/b;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x2b

    new-instance v4, Le2/c;

    invoke-direct {v4, v0}, Le2/c;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x2c

    new-instance v4, Le2/d;

    invoke-direct {v4, v0}, Le2/d;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x2d

    new-instance v4, Le2/g;

    invoke-direct {v4}, Le2/g;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x2e

    new-instance v4, Le2/d;

    invoke-direct {v4, v5}, Le2/d;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x2f

    new-instance v4, Le2/h;

    invoke-direct {v4}, Le2/h;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x30

    new-instance v4, Le2/j;

    invoke-direct {v4}, Le2/j;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x31

    new-instance v4, Le2/m;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-direct {v4, p0, v8, v9}, Le2/m;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v4, p1, v1

    const/16 v1, 0x32

    new-instance v4, Ld2/g;

    invoke-direct {v4, v6}, Ld2/g;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x33

    new-instance v4, Le2/n;

    invoke-direct {v4}, Le2/n;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x34

    new-instance v4, Le2/o;

    invoke-direct {v4}, Le2/o;-><init>()V

    aput-object v4, p1, v1

    const/16 v1, 0x35

    new-instance v4, Le2/w;

    invoke-direct {v4, v3}, Le2/w;-><init>(I)V

    aput-object v4, p1, v1

    const/16 v1, 0x36

    new-instance v3, Ld2/e;

    invoke-direct {v3, v5}, Ld2/e;-><init>(I)V

    aput-object v3, p1, v1

    const/16 v1, 0x37

    new-instance v3, Le2/q;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-direct {v3, p0, v4, v6}, Le2/q;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v3, p1, v1

    const/16 v1, 0x38

    new-instance v3, Le2/s;

    invoke-direct {v3}, Le2/s;-><init>()V

    aput-object v3, p1, v1

    const/16 v1, 0x39

    new-instance v3, Le2/t;

    invoke-direct {v3, v0}, Le2/t;-><init>(I)V

    aput-object v3, p1, v1

    const/16 v1, 0x3a

    new-instance v3, Le2/v;

    invoke-direct {v3}, Le2/v;-><init>()V

    aput-object v3, p1, v1

    const/16 v1, 0x3b

    new-instance v3, Le2/w;

    invoke-direct {v3, v0}, Le2/w;-><init>(I)V

    aput-object v3, p1, v1

    const/16 v1, 0x3c

    new-instance v3, Le2/c;

    invoke-direct {v3, v5}, Le2/c;-><init>(I)V

    aput-object v3, p1, v1

    const/16 v1, 0x3d

    new-instance v3, Ld2/m;

    invoke-direct {v3, v5}, Ld2/m;-><init>(I)V

    aput-object v3, p1, v1

    const/16 v1, 0x3e

    new-instance v3, Ld2/g;

    invoke-direct {v3, v2}, Ld2/g;-><init>(I)V

    aput-object v3, p1, v1

    const/16 v1, 0x3f

    new-instance v2, Le2/a0;

    invoke-direct {v2}, Le2/a0;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x40

    new-instance v2, Le2/d0;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le2/d0;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v2, p1, v1

    const/16 v1, 0x41

    new-instance v2, Le2/f0;

    invoke-direct {v2}, Le2/f0;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x42

    new-instance v2, Le2/g0;

    invoke-direct {v2}, Le2/g0;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x43

    new-instance v2, Lg2/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lg2/b;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v2, p1, v1

    const/16 v1, 0x44

    new-instance v2, Lg2/c;

    invoke-direct {v2, p0}, Lg2/c;-><init>(Landroid/content/Context;)V

    aput-object v2, p1, v1

    const/16 v1, 0x45

    new-instance v2, Lg2/e;

    invoke-direct {v2}, Lg2/e;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x46

    new-instance v2, Lg2/f;

    invoke-direct {v2, p0}, Lg2/f;-><init>(Landroid/content/Context;)V

    aput-object v2, p1, v1

    const/16 v1, 0x47

    new-instance v2, Lf2/l;

    invoke-direct {v2, p0}, Lf2/l;-><init>(Landroid/content/Context;)V

    aput-object v2, p1, v1

    const/16 v1, 0x48

    new-instance v2, Lg2/g;

    invoke-direct {v2}, Lg2/g;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x49

    new-instance v2, Ld2/g;

    invoke-direct {v2, v7}, Ld2/g;-><init>(I)V

    aput-object v2, p1, v1

    const/16 v1, 0x4a

    new-instance v2, Lg2/a;

    invoke-direct {v2, p0}, Lg2/a;-><init>(Landroid/content/Context;)V

    aput-object v2, p1, v1

    const/16 v1, 0x4b

    new-instance v2, Lg2/h;

    invoke-direct {v2, p0}, Lg2/h;-><init>(Landroid/content/Context;)V

    aput-object v2, p1, v1

    const/16 v1, 0x4c

    new-instance v2, Le2/h0;

    invoke-direct {v2}, Le2/h0;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x4d

    new-instance v2, Le2/j0;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le2/j0;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v2, p1, v1

    const/16 v1, 0x4e

    new-instance v2, Le2/ad;

    invoke-direct {v2}, Le2/ad;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x4f

    new-instance v2, Le2/ae;

    invoke-direct {v2}, Le2/ae;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x50

    new-instance v2, Le2/ag;

    invoke-direct {v2}, Le2/ag;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x51

    new-instance v2, Le2/ai;

    invoke-direct {v2}, Le2/ai;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x52

    new-instance v2, Le2/aj;

    invoke-direct {v2}, Le2/aj;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x53

    new-instance v2, Le2/ak;

    invoke-direct {v2}, Le2/ak;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x54

    new-instance v2, Le2/am;

    invoke-direct {v2}, Le2/am;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x55

    new-instance v2, Le2/an;

    invoke-direct {v2}, Le2/an;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x56

    new-instance v2, Le2/ao;

    invoke-direct {v2}, Le2/ao;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x57

    new-instance v2, Le2/ap;

    invoke-direct {v2}, Le2/ap;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x58

    new-instance v2, Le2/aq;

    invoke-direct {v2}, Le2/aq;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x59

    new-instance v2, Ld2/g;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ld2/g;-><init>(I)V

    aput-object v2, p1, v1

    const/16 v1, 0x5a

    new-instance v2, Le2/ar;

    invoke-direct {v2}, Le2/ar;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x5b

    new-instance v2, Ld2/s;

    invoke-direct {v2}, Ld2/s;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x5c

    new-instance v2, Le2/at;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le2/at;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v2, p1, v1

    const/16 v1, 0x5d

    new-instance v2, Le2/aw;

    invoke-direct {v2}, Le2/aw;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x5e

    new-instance v2, Lg2/i;

    invoke-direct {v2}, Lg2/i;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x5f

    new-instance v2, Le2/cc;

    invoke-direct {v2}, Le2/cc;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x60

    new-instance v2, Le2/qd;

    invoke-direct {v2}, Le2/qd;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x61

    new-instance v2, Le2/pm;

    invoke-direct {v2}, Le2/pm;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x62

    new-instance v2, Le2/hb;

    invoke-direct {v2}, Le2/hb;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x63

    new-instance v2, Le2/jb;

    invoke-direct {v2}, Le2/jb;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x64

    new-instance v2, Le2/lb;

    invoke-direct {v2}, Le2/lb;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x65

    new-instance v2, Le2/cb;

    invoke-direct {v2}, Le2/cb;-><init>()V

    aput-object v2, p1, v1

    const/16 v1, 0x66

    new-instance v2, Ld2/p;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Ld2/p;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v2, p1, v1

    const/16 v1, 0x67

    new-instance v2, Ldev/virus/variable/app/Keystrokes;

    invoke-direct {v2, p0, v3, v4}, Ldev/virus/variable/app/Keystrokes;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V

    aput-object v2, p1, v1

    const/16 v1, 0x68

    new-instance v2, Le2/DebugOverlayModule;

    invoke-direct {v2}, Le2/DebugOverlayModule;-><init>()V

    aput-object v2, p1, v1

    .line 3
    sget-object v1, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ldev/virus/variable/launcher/module/ModuleNameComparator;

    invoke-direct {v3}, Ldev/virus/variable/launcher/module/ModuleNameComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "Notifications"

    .line 4
    invoke-static {p1}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p1

    invoke-virtual {p1}, Lc2/b;->R()V

    .line 5
    sput-object p0, Lk2/a;->b:Landroid/content/Context;

    .line 6
    sput-object p0, Lk2/c;->d:Landroid/content/Context;

    .line 7
    sget-object p1, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    .line 8
    iget-object p1, p1, Lm2/b;->b:Landroid/support/v4/app/i;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/games/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldev/virus/variable/sdk/LibraryLoader;->nativeSetDataDirectory(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldev/virus/variable/app/MinecraftActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object p1, p1, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast p1, Lm2/b;

    .line 11
    iget-object p1, p1, Lm2/b;->a:Lm2/a;

    .line 12
    iget-object p1, p1, Lm2/a;->b:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object p1

    .line 14
    :try_start_0
    const-class v2, Landroid/content/res/AssetManager;

    const-string v3, "addAssetPath"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 15
    :goto_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lx1/g;

    invoke-direct {v0, p0, v5}, Lx1/g;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x4

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    const v1, 0x5ec48

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0x33cb8

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, -0xf5f5f6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "HORRIBLE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-object v0, Ldev/virus/variable/app/MinecraftActivity;->splashView:Landroid/view/View;

    const-string v1, "Horrible loaded \u2714"

    invoke-static {v1}, Ll2/k;->showToast(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 2
        0x70s
        0x47s
        0x0s
        0xbfs
    .end array-data
.end method

.method public final onDestroy()V
    .registers 2

    .line 1
    sget-object v0, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    .line 2
    iget-object v0, v0, Lm2/b;->b:Landroid/support/v4/app/i;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Ldev/virus/variable/app/MinecraftActivity;->b:La2/d;

    invoke-super {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDestroy()V

    return-void
.end method
