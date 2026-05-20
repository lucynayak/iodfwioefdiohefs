.class public final Le2/rd;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public oView:Le2/RadarView;

.field public final p:Li2/e;

.field public final r:Li2/d;

.field public sampler:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 8

    const-string v0, "Radar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Size"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/rd;->o:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const-string v2, "Refresh"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/rd;->r:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "Edit position"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/rd;->p:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x4000000000000000L    # 2.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_1
    .array-data 8
        0x407f400000000000L    # 500.0
        0x4059000000000000L    # 100.0
        0x4097700000000000L    # 1500.0
        0x4049000000000000L    # 50.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 4

    iget-object v0, p0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :cond_1

    sget-object v1, Lk2/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

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

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Le2/rd;->oView:Le2/RadarView;

    :cond_1
    iget-object v0, p0, Le2/rd;->sampler:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Le2/rd;->sampler:Ljava/lang/Thread;

    :cond_2
    return-void
.end method

.method public final G()V
    .registers 11

    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Le2/rd;->oView:Le2/RadarView;

    if-nez v1, :cond_1

    iget-object v1, p0, Le2/rd;->o:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    const/16 v3, 0x118

    :try_start_0
    new-instance v1, Le2/RadarView;

    invoke-direct {v1, v0}, Le2/RadarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Le2/rd;->oView:Le2/RadarView;

    const/4 v2, 0x0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Le2/rd;->o:Li2/d;

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v6

    double-to-float v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Le2/rd;->o:Li2/d;

    new-instance v7, Le2/rd$a;

    invoke-direct {v7, p0}, Le2/rd$a;-><init>(Le2/rd;)V

    iput-object v7, v6, Li2/d;->f:Li2/d$a;

    iget-object v6, p0, Le2/rd;->p:Li2/e;

    new-instance v7, Le2/rd$b;

    invoke-direct {v7, p0}, Le2/rd$b;-><init>(Le2/rd;)V

    iput-object v7, v6, Li2/e;->f:Li2/e$a;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    move v5, v3

    move v6, v3

    const/4 v7, 0x2

    const/16 v8, 0x318

    iget-object v9, p0, Le2/rd;->p:Li2/e;

    if-eqz v9, :cond_0

    iget-boolean v9, v9, Li2/e;->e:Z

    if-eqz v9, :cond_0

    const v8, 0x800328

    :cond_0
    const/4 v9, -0x3

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v5, "variable"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "radar_abs_wx"

    const/16 v7, 0x10

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v6, "radar_abs_wy"

    const/16 v7, 0x10

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Le2/HudDragTouch;

    const-string v6, "radar_abs_wx"

    const-string v7, "radar_abs_wy"

    iget-object v8, p0, Le2/rd;->p:Li2/e;

    invoke-direct {v5, v6, v7, v8}, Le2/HudDragTouch;-><init>(Ljava/lang/String;Ljava/lang/String;Li2/e;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_0
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

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_1
    :goto_1
    return-void
.end method

.method public final J()V
    .registers 12

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ldev/virus/variable/launcher/api/NativePlayer;->getYaw(J)F

    move-result v3

    invoke-virtual {v0, v3}, Le2/RadarView;->setYaw(F)V

    iget-object v1, p0, Le2/rd;->o:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
