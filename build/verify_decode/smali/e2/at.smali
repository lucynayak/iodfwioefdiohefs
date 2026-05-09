.class public final Le2/at;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public cachedB:F

.field public cachedG:F

.field public cachedR:F

.field public guiH:F

.field public guiW:F

.field public halfGuiW:F

.field public localUidHi:I

.field public localUidLo:I

.field public o:Landroid/view/View;

.field public p:Li2/d;

.field public q:Li2/d;

.field public r:Li2/d;

.field public screenH:F

.field public screenW:F


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 4

    const-string v0, "Tracers"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Le2/at;->o:Landroid/view/View;

    iget-object v0, p0, Le2/at;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

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
        0x0
        0x0
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x406fe00000000000L    # 255.0
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
    .locals 0

    return-void
.end method

.method public final D()V
    .locals 0

    return-void
.end method

.method public final E()V
    .locals 0

    return-void
.end method

.method public final F()V
    .locals 15

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le2/at;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

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

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getGuiScale()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-float v0, v0

    iget v5, p0, Le2/at;->screenW:F

    div-float/2addr v5, v0

    iput v5, p0, Le2/at;->guiW:F

    iget v6, p0, Le2/at;->screenH:F

    div-float/2addr v6, v0

    iput v6, p0, Le2/at;->guiH:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v5, v0

    iput v0, p0, Le2/at;->halfGuiW:F

    iget-object v0, p0, Le2/at;->p:Li2/d;

    iget-object v0, v0, Li2/d;->e:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    double-to-float v0, v2

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Le2/at;->cachedR:F

    iget-object v0, p0, Le2/at;->q:Li2/d;

    iget-object v0, v0, Li2/d;->e:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    double-to-float v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Le2/at;->cachedG:F

    iget-object v0, p0, Le2/at;->r:Li2/d;

    iget-object v0, v0, Li2/d;->e:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    double-to-float v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Le2/at;->cachedB:F

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-wide v7, v0, v2

    cmp-long v9, v7, v3

    if-eqz v9, :cond_2

    invoke-static {v7, v8}, Ldev/virus/variable/launcher/api/NativePlayer;->isAlive(J)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v7, v8}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v9

    invoke-static {v7, v8}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v10

    const v11, 0x3f666666    # 0.9f

    add-float/2addr v10, v11

    invoke-static {v7, v8}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v11

    invoke-static {v9, v10, v11, v5, v6}, Ldev/virus/variable/launcher/api/ScreenUtils;->worldToScreen(FFFFF)[F

    move-result-object v12

    if-eqz v12, :cond_2

    const/4 v9, 0x0

    aget v13, v12, v9

    const/4 v9, 0x1

    aget v14, v12, v9

    iget v9, p0, Le2/at;->halfGuiW:F

    sub-float v5, v13, v9

    sub-float v6, v14, v6

    const/4 v3, 0x0

    const/16 v4, 0xf

    :goto_1
    if-ge v3, v4, :cond_1

    int-to-float v7, v3

    int-to-float v8, v4

    div-float v7, v7, v8

    mul-float v8, v5, v7

    iget v9, p0, Le2/at;->halfGuiW:F

    add-float v11, v9, v8

    mul-float v8, v6, v7

    iget v9, p0, Le2/at;->guiH:F

    add-float v12, v9, v8

    const-string v7, "."

    iget v8, p0, Le2/at;->cachedR:F

    iget v9, p0, Le2/at;->cachedG:F

    iget v10, p0, Le2/at;->cachedB:F

    const v13, 0x40400000    # 3.0f

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Ldev/virus/variable/launcher/api/Api;->drawText(Ljava/lang/String;FFFFFFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v3

    iget v5, p0, Le2/at;->guiW:F

    iget v6, p0, Le2/at;->guiH:F

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final G()V
    .locals 0

    return-void
.end method

.method public final H()V
    .locals 0

    return-void
.end method

.method public final I()V
    .locals 0

    return-void
.end method

.method public final J()V
    .locals 0

    return-void
.end method

.method public final K(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public final M()V
    .locals 0

    invoke-super {p0}, Lc2/b;->M()V

    return-void
.end method

.method public final O()V
    .locals 0

    return-void
.end method
