.class public final Le2/rd;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public final r:Li2/d;

.field public final colorR:Li2/d;

.field public final colorG:Li2/d;

.field public final colorB:Li2/d;

.field public oView:Le2/RadarView;

.field public sampler:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 8

    const-string v0, "Radar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    # Size slider: default=1.0, min=0.5, max=2.0, step=0.1
    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_size

    const-string v2, "Size"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/rd;->o:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    # Refresh slider: default=500ms, min=100ms, max=1500ms, step=50ms
    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_refresh

    const-string v2, "Refresh"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/rd;->r:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    # R slider: default=255, min=0, max=255, step=1 (matches the previous hard-coded magenta dot)
    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_colorR

    const-string v2, "R"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/rd;->colorR:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    # G slider: default=0, min=0, max=255, step=1
    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_colorG

    const-string v2, "G"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/rd;->colorG:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    # B slider: default=255, min=0, max=255, step=1
    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_colorB

    const-string v2, "B"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/rd;->colorB:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :array_size
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x4000000000000000L    # 2.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_refresh
    .array-data 8
        0x407f400000000000L    # 500.0 ms
        0x4059000000000000L    # 100.0 ms
        0x4097700000000000L    # 1500.0 ms
        0x4049000000000000L    # 50.0 ms
    .end array-data

    :array_colorR
    .array-data 8
        0x406fe00000000000L    # 255.0 (current)
        0x0L                   # 0.0 (min)
        0x406fe00000000000L    # 255.0 (max)
        0x3ff0000000000000L    # 1.0 (step)
    .end array-data

    :array_colorG
    .array-data 8
        0x0L                   # 0.0 (current)
        0x0L                   # 0.0 (min)
        0x406fe00000000000L    # 255.0 (max)
        0x3ff0000000000000L    # 1.0 (step)
    .end array-data

    :array_colorB
    .array-data 8
        0x406fe00000000000L    # 255.0 (current)
        0x0L                   # 0.0 (min)
        0x406fe00000000000L    # 255.0 (max)
        0x3ff0000000000000L    # 1.0 (step)
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 4

    iget-object v0, p0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :cond_no_view

    sget-object v1, Lk2/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_no_ctx

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_no_ctx

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :cond_no_ctx

    :catch_0
    move-exception v1

    :cond_no_ctx
    const/4 v0, 0x0

    iput-object v0, p0, Le2/rd;->oView:Le2/RadarView;

    :cond_no_view
    iget-object v0, p0, Le2/rd;->sampler:Ljava/lang/Thread;

    if-eqz v0, :cond_no_thread

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_clear_thread

    :catch_1
    move-exception v1

    :goto_clear_thread
    const/4 v0, 0x0

    iput-object v0, p0, Le2/rd;->sampler:Ljava/lang/Thread;

    :cond_no_thread
    return-void
.end method

.method public final G()V
    .registers 11

    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_done

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_done

    iget-object v1, p0, Le2/rd;->oView:Le2/RadarView;

    if-nez v1, :cond_done

    # Compute initial size from slider
    iget-object v1, p0, Le2/rd;->o:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x430c0000    # 140.0f base size

    mul-float/2addr v1, v2

    float-to-int v3, v1    # size px

    :try_start_0
    new-instance v1, Le2/RadarView;

    invoke-direct {v1, v0}, Le2/RadarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Le2/rd;->oView:Le2/RadarView;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    move v5, v3

    move v6, v3

    const/4 v7, 0x2          # TYPE_APPLICATION

    const/16 v8, 0x18        # FLAG_NOT_FOCUSABLE | FLAG_NOT_TOUCHABLE

    const/4 v9, -0x3         # TRANSLUCENT

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v5, 0x35        # gravity = TOP | RIGHT

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :start_thread

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :start_thread
    :try_start_1
    new-instance v0, Le2/rd$Sampler;

    invoke-direct {v0, p0}, Le2/rd$Sampler;-><init>(Le2/rd;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "RadarSampler"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iput-object v1, p0, Le2/rd;->sampler:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :cond_done

    :catch_1
    move-exception v0

    :cond_done
    return-void
.end method

.method public final J()V
    .registers 11

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_done

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_done

    iget-object v0, p0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :cond_done

    # ---- Update yaw ----
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ldev/virus/variable/launcher/api/NativePlayer;->getYaw(J)F

    move-result v3

    invoke-virtual {v0, v3}, Le2/RadarView;->setYaw(F)V

    # ---- Push R/G/B slider values to RadarView.mPaintOther ----
    # Sliders enforce 0..255, so we can pack directly without masking.
    iget-object v1, p0, Le2/rd;->colorR:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Le2/rd;->colorG:Li2/d;

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Le2/rd;->colorB:Li2/d;

    invoke-virtual {v3}, Li2/d;->getCurrentValue()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Le2/RadarView;->setOtherColor(III)V

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    # ---- Update size from slider if changed ----
    iget-object v1, p0, Le2/rd;->o:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x430c0000    # 140.0f base

    mul-float/2addr v1, v2

    float-to-int v2, v1     # new size px

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_done

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v4, v2, :cond_done

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    # Need to call WindowManager.updateViewLayout on UI thread -> use Compass's LayoutRunnable
    sget-object v4, Lk2/a;->b:Landroid/content/Context;

    if-eqz v4, :cond_done

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_done

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    new-instance v5, Le2/cb$LayoutRunnable;

    invoke-direct {v5, v0, v3, v4}, Le2/cb$LayoutRunnable;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_done
    return-void
.end method
