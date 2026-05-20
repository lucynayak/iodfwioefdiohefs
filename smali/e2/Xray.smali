.class public final Le2/Xray;
.super Lc2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/Xray$Sampler;
    }
.end annotation


# instance fields
.field public final o:Li2/d;

.field public oView:Le2/XrayView;

.field public final p:Li2/e;

.field public final q:Li2/d;

.field public final showDiamond:Li2/e;

.field public final showIron:Li2/e;

.field public final showGold:Li2/e;

.field public final showEmerald:Li2/e;

.field public sampler:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 8

    const-string v0, "Xray"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Range"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Xray;->o:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const-string v2, "Refresh"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Xray;->q:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "Diamond"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/Xray;->showDiamond:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "Iron"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/Xray;->showIron:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "Gold"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/Xray;->showGold:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "Emerald"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/Xray;->showEmerald:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "Edit position"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/Xray;->p:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4040000000000000L    # 32.0
        0x4000000000000000L    # 2.0
    .end array-data

    :array_1
    .array-data 8
        0x408f400000000000L    # 1000.0
        0x405f400000000000L    # 125.0
        0x40a3880000000000L    # 2500.0
        0x405f400000000000L    # 125.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 4

    iget-object v0, p0, Le2/Xray;->oView:Le2/XrayView;

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
    const/4 v0, 0x0

    iput-object v0, p0, Le2/Xray;->oView:Le2/XrayView;

    :cond_2
    iget-object v0, p0, Le2/Xray;->sampler:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Le2/Xray;->sampler:Ljava/lang/Thread;

    :cond_3
    return-void
.end method

.method public final G()V
    .registers 9

    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Le2/Xray;->oView:Le2/XrayView;

    if-nez v1, :cond_2

    new-instance v1, Le2/XrayView;

    invoke-direct {v1, v0}, Le2/XrayView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Le2/Xray;->oView:Le2/XrayView;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x2

    const/16 v6, 0x318

    iget-object v7, p0, Le2/Xray;->p:Li2/e;

    if-eqz v7, :cond_0

    iget-boolean v7, v7, Li2/e;->e:Z

    if-eqz v7, :cond_0

    const v6, 0x800328

    :cond_0
    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v3, "variable"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "xray_abs_wx"

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v4, "xray_abs_wy"

    const/16 v5, 0x64

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v3, Le2/HudDragTouch;

    const-string v4, "xray_abs_wx"

    const-string v5, "xray_abs_wy"

    iget-object v6, p0, Le2/Xray;->p:Li2/e;

    invoke-direct {v3, v4, v5, v6}, Le2/HudDragTouch;-><init>(Ljava/lang/String;Ljava/lang/String;Li2/e;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Le2/Xray$Sampler;

    invoke-direct {v2, p0}, Le2/Xray$Sampler;-><init>(Le2/Xray;)V

    const-string v3, "XraySampler"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    iput-object v0, p0, Le2/Xray;->sampler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public final J()V
    .registers 6

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/Xray;->oView:Le2/XrayView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le2/Xray;->showDiamond:Li2/e;

    iget-boolean v1, v1, Li2/e;->e:Z

    iget-object v2, p0, Le2/Xray;->showIron:Li2/e;

    iget-boolean v2, v2, Li2/e;->e:Z

    iget-object v3, p0, Le2/Xray;->showGold:Li2/e;

    iget-boolean v3, v3, Li2/e;->e:Z

    iget-object v4, p0, Le2/Xray;->showEmerald:Li2/e;

    iget-boolean v4, v4, Li2/e;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Le2/XrayView;->setShowFlags(ZZZZ)V

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
