.class public final Le2/Xray;
.super Lc2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/Xray$Sampler;,
        Le2/Xray$VisRunnable;
    }
.end annotation


# instance fields
.field public final colorB:Li2/d;

.field public final colorG:Li2/d;

.field public final colorR:Li2/d;

.field public final customId:Li2/f;

.field public oView:Le2/XrayView;

.field public final ore:Li2/b;

.field public final range:Li2/d;

.field public final refresh:Li2/d;

.field public sampler:Ljava/lang/Thread;

.field public final style:Li2/b;

.field public final thickness:Li2/d;


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

    iput-object v0, p0, Le2/Xray;->range:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const-string v2, "Refresh"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Xray;->refresh:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/b;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Diamond"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Iron"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Gold"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Emerald"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Coal"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Lapis"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Redstone"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Quartz"

    aput-object v3, v1, v2

    const-string v2, "Ore"

    invoke-direct {v0, v2, v1}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Le2/Xray;->ore:Li2/b;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/f;

    const-string v1, "BlockID"

    const-string v2, "empty = use Ore"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Le2/Xray;->customId:Li2/f;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Box"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Filled"

    aput-object v3, v1, v2

    const-string v2, "Style"

    invoke-direct {v0, v2, v1}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Le2/Xray;->style:Li2/b;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_2

    const-string v2, "Thickness"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Xray;->thickness:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_3

    const-string v2, "Red"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Xray;->colorR:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_4

    const-string v2, "Green"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Xray;->colorG:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_5

    const-string v2, "Blue"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Xray;->colorB:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4050000000000000L    # 64.0
        0x4000000000000000L    # 2.0
    .end array-data

    :array_1
    .array-data 8
        0x408f400000000000L    # 1000.0
        0x405f400000000000L    # 125.0
        0x40a3880000000000L    # 2500.0
        0x405f400000000000L    # 125.0
    .end array-data

    :array_2
    .array-data 8
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x4069000000000000L    # 200.0
        0x0
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x406fe00000000000L    # 255.0
        0x0
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 4

    iget-object v0, p0, Le2/Xray;->oView:Le2/XrayView;

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

    iput-object v0, p0, Le2/Xray;->oView:Le2/XrayView;

    :cond_1
    iget-object v0, p0, Le2/Xray;->sampler:Ljava/lang/Thread;

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

    iput-object v0, p0, Le2/Xray;->sampler:Ljava/lang/Thread;

    :cond_2
    return-void
.end method

.method public final G()V
    .registers 9

    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Le2/Xray;->oView:Le2/XrayView;

    if-nez v1, :cond_0

    new-instance v1, Le2/XrayView;

    invoke-direct {v1, v0, p0}, Le2/XrayView;-><init>(Landroid/content/Context;Le2/Xray;)V

    iput-object v1, p0, Le2/Xray;->oView:Le2/XrayView;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/16 v6, 0x118

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

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

    :cond_0
    return-void
.end method

.method public final J()V
    .registers 4

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le2/Xray;->oView:Le2/XrayView;

    if-eqz v0, :cond_1

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "hud_screen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Le2/Xray$VisRunnable;

    invoke-direct {v2, v0, v1}, Le2/Xray$VisRunnable;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    new-instance v2, Le2/Xray$VisRunnable;

    invoke-direct {v2, v0, v1}, Le2/Xray$VisRunnable;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
