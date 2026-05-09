.class public Ldev/virus/variable/launcher/api/ScreenUtils;
.super Ljava/lang/Object;


# direct methods
.method public static worldToScreen(FFFFF)[F
    .locals 11

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v2

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v3

    const v4, 0x3fcf5c29    # 1.62f

    add-float/2addr v3, v4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getYaw(J)F

    move-result v5

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPitch(J)F

    move-result v6

    sub-float v2, p0, v2

    sub-float v3, p1, v3

    sub-float v4, p2, v4

    float-to-double v0, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-double v0, v6

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v9, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v10, v5

    mul-float v0, v2, v8

    mul-float v1, v4, v7

    add-float/2addr v0, v1

    neg-float v5, v0

    mul-float v0, v2, v7

    neg-float v0, v0

    mul-float v1, v4, v8

    add-float/2addr v0, v1

    mul-float/2addr v0, v9

    mul-float v1, v3, v10

    add-float v6, v0, v1

    mul-float v0, v2, v7

    neg-float v0, v0

    mul-float v1, v4, v8

    add-float/2addr v0, v1

    mul-float/2addr v0, v10

    mul-float v1, v3, v9

    sub-float v0, v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-wide v1, 0x4041800000000000L    # 35.0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v7, v1

    div-float v8, p3, p4

    mul-float v1, v0, v7

    mul-float/2addr v1, v8

    div-float v1, v5, v1

    mul-float v2, v0, v7

    div-float v2, v6, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    add-float v5, v3, v1

    mul-float/2addr v5, p3

    div-float/2addr v5, v4

    sub-float v6, v3, v2

    mul-float/2addr v6, p4

    div-float/2addr v6, v4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v5, v0, v1

    const/4 v1, 0x1

    aput v6, v0, v1

    return-object v0
.end method
