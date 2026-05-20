.class public final Le2/ap;
.super Lc2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/ap$a;,
        Le2/ap$b;,
        Le2/ap$c;
    }
.end annotation


# static fields
.field public static sliderContainerStatic:Landroid/view/View;


# instance fields
.field public fovLabel:Landroid/widget/TextView;

.field public final o:Li2/d;

.field public final p:Li2/e;

.field public prevEditEnabled:I

.field public seekBar:Landroid/widget/SeekBar;

.field public sliderContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .registers 8

    const-string v0, "Zoom"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "FOV"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/ap;->o:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "Edit position"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/ap;->p:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    const/4 v0, -0x1

    iput v0, p0, Le2/ap;->prevEditEnabled:I

    return-void

    :array_0
    .array-data 8
        0x4051800000000000L    # 70.0
        0x3ff0000000000000L    # 1.0
        0x4066800000000000L    # 180.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static setSliderVisible(Z)V
    .registers 3

    sget-object v0, Le2/ap;->sliderContainerStatic:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xe7da86

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xe7da94

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    iget-object v0, p0, Le2/ap;->sliderContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    sget-object v1, Lk2/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Le2/ap;->sliderContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Le2/ap;->seekBar:Landroid/widget/SeekBar;

    iput-object v1, p0, Le2/ap;->fovLabel:Landroid/widget/TextView;

    sput-object v1, Le2/ap;->sliderContainerStatic:Landroid/view/View;

    :cond_2
    return-void

    nop

    :array_0
    .array-data 2
        0x10s
        0xees
        0x10s
        0xas
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x88s
        0x42s
    .end array-data
.end method

.method public final G()V
    .registers 16

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xe7da86

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xe7da94

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Le2/ap;->sliderContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0064

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Le2/ap;->sliderContainer:Landroid/widget/FrameLayout;

    sput-object v1, Le2/ap;->sliderContainerStatic:Landroid/view/View;

    const v2, 0x7f080190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Le2/ap;->seekBar:Landroid/widget/SeekBar;

    const v3, 0x7f080191

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Le2/ap;->fovLabel:Landroid/widget/TextView;

    iget-object v4, p0, Le2/ap;->o:Li2/d;

    invoke-virtual {v4}, Li2/d;->getCurrentValue()D

    move-result-wide v4

    double-to-int v4, v4

    rsub-int v5, v4, 0xb4

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v5, Le2/ap$a;

    invoke-direct {v5, p0}, Le2/ap$a;-><init>(Le2/ap;)V

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v5, Le2/ap$b;

    invoke-direct {v5, p0}, Le2/ap$b;-><init>(Le2/ap;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x42700000    # 60.0f

    mul-float v7, v7, v6

    float-to-int v7, v7

    const/high16 v8, 0x438c0000    # 280.0f

    mul-float v8, v8, v6

    float-to-int v8, v8

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    move v10, v7

    move v11, v8

    const/4 v12, 0x2

    const v13, 0x800028

    const/4 v14, -0x3

    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v10, 0x13

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v10, 0x41800000    # 16.0f

    mul-float v10, v10, v6

    float-to-int v10, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v11, 0x0

    iput v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v5, "variable"

    invoke-virtual {v0, v5, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v12, "zoom_slider_wx"

    invoke-interface {v5, v12, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v12, "zoom_slider_wy"

    invoke-interface {v5, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 2
        0x3s
        0x48s
        0x0s
        0xbfs
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x88s
        0x42s
    .end array-data
.end method

.method public final J()V
    .registers 6

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Le2/ap;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    iget-object v1, p0, Le2/ap;->p:Li2/e;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Li2/e;->e:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Le2/ap;->prevEditEnabled:I

    if-eq v2, v3, :cond_3

    iput v2, p0, Le2/ap;->prevEditEnabled:I

    new-instance v3, Le2/ap$c;

    invoke-direct {v3, v0, v2}, Le2/ap$c;-><init>(Landroid/widget/SeekBar;Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const-string v0, "current"

    iget-object v1, p0, Le2/ap;->o:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0xe7da94

    const/4 v2, 0x4

    new-array v2, v2, [C

    and-int/lit16 v3, v0, 0xff

    int-to-char v3, v3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/4 v4, 0x1

    aput-char v3, v2, v4

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/4 v4, 0x2

    aput-char v3, v2, v4

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/4 v4, 0x3

    aput-char v3, v2, v4

    invoke-static {v1, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void
.end method
