.class public final Le2/at;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public cachedB:F

.field public cachedG:F

.field public cachedR:F

.field public o:Landroid/view/View;

.field public overlay:Landroid/widget/PopupWindow;

.field public p:Li2/d;

.field public q:Li2/d;

.field public r:Li2/d;

.field public screenH:F

.field public screenW:F

.field public tracerView:Le2/at$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 7

    const-string v0, "Tracers"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Le2/at;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Le2/at;->screenW:F

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Le2/at;->screenH:F

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Red"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/at;->p:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const-string v2, "Green"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/at;->q:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_2

    const-string v2, "Blue"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/at;->r:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x406fe00000000000L    # 255.0
        0x0
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final C(J)V
    .registers 3

    return-void
.end method

.method public final D()V
    .registers 1

    return-void
.end method

.method public final E()V
    .registers 5

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_0

    new-instance v1, Le2/at$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le2/at$b;-><init>(Le2/at;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final F()V
    .registers 16

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le2/at;->tracerView:Le2/at$a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Le2/at$a;->b:[F

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_2
    iget-object v1, p0, Le2/at;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iput v2, p0, Le2/at;->screenW:F

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Le2/at;->screenH:F

    iget-object v3, p0, Le2/at;->p:Li2/d;

    iget-object v3, v3, Li2/d;->e:[D

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    double-to-float v3, v5

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    iput v3, p0, Le2/at;->cachedR:F

    iget-object v3, p0, Le2/at;->q:Li2/d;

    iget-object v3, v3, Li2/d;->e:[D

    aget-wide v6, v3, v4

    double-to-float v3, v6

    div-float/2addr v3, v5

    iput v3, p0, Le2/at;->cachedG:F

    iget-object v3, p0, Le2/at;->r:Li2/d;

    iget-object v3, v3, Li2/d;->e:[D

    aget-wide v6, v3, v4

    double-to-float v3, v6

    div-float/2addr v3, v5

    iput v3, p0, Le2/at;->cachedB:F

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v4, 0x0

    iput-object v4, v0, Le2/at$a;->b:[F

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_3
    array-length v4, v3

    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v8

    iget v10, p0, Le2/at;->screenW:F

    iget v11, p0, Le2/at;->screenH:F

    :goto_0
    if-ge v7, v4, :cond_5

    aget-wide v12, v3, v7

    cmp-long v14, v12, v8

    if-eqz v14, :cond_4

    invoke-static {v12, v13}, Ldev/virus/variable/launcher/api/NativePlayer;->isAlive(J)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v12, v13}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v14

    invoke-static {v12, v13}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result p0

    const v1, 0x3f666666    # 0.9f

    add-float/2addr p0, v1

    invoke-static {v12, v13}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v1

    invoke-static {v14, p0, v1, v10, v11}, Ldev/virus/variable/launcher/api/ScreenUtils;->worldToScreen(FFFFF)[F

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v14, 0x0

    aget v14, v1, v14

    aput v14, v5, v6

    add-int/lit8 v14, v6, 0x1

    const/4 p0, 0x1

    aget p0, v1, p0

    aput p0, v5, v14

    add-int/lit8 v6, v6, 0x2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    array-length v7, v5

    if-eq v6, v7, :cond_6

    new-array v7, v6, [F

    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, v0, Le2/at$a;->b:[F

    goto :goto_1

    :cond_6
    iput-object v5, v0, Le2/at$a;->b:[F

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final G()V
    .registers 5

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_0

    new-instance v1, Le2/at$b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Le2/at$b;-><init>(Le2/at;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final H()V
    .registers 1

    return-void
.end method

.method public final I()V
    .registers 1

    return-void
.end method

.method public final J()V
    .registers 1

    return-void
.end method

.method public final K(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public final M()V
    .registers 1

    invoke-super {p0}, Lc2/b;->M()V

    return-void
.end method

.method public final O()V
    .registers 2

    iget-object v0, p0, Le2/at;->tracerView:Le2/at$a;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Le2/at$a;->b:[F

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
