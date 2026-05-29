.class public final Ll2/a;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static findAll(II)[I
    .registers 16
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "findAll"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    neg-int v6, p1

    :goto_0
    if-gt v6, p1, :cond_3

    add-int v7, v2, v6

    neg-int v8, p1

    :goto_1
    if-gt v8, p1, :cond_2

    add-int v9, v3, v8

    neg-int v10, p1

    :goto_2
    if-gt v10, p1, :cond_1

    add-int v11, v4, v10

    invoke-static {v7, v9, v11}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v12

    if-ne v12, p0, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    return-object v7
.end method

.method public static getBrightness(III)I
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getBrightness"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeBlock;->getBrightness(III)I

    move-result p0

    return p0
.end method

.method public static getData(III)J
    .registers 8
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getData"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v2

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeBlock;->getMeta(III)I

    move-result v3

    shl-int/lit8 v2, v2, 0x10

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long v0, v2

    return-wide v0
.end method

.method public static getFriction(I)F
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getFriction"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeBlock;->getFriction(I)F

    move-result p0

    return p0
.end method

.method public static getID(III)I
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getID"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result p0

    return p0
.end method

.method public static isSolid(I)Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isSolid"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeBlock;->isSolid(I)Z

    move-result p0

    return p0
.end method

.method public static setDestroyTime(ID)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setDestroyTime"
    .end annotation

    double-to-float p1, p1

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeBlock;->setDestroyTime(IF)V

    return-void
.end method

.method public static setFriction(ID)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setFriction"
    .end annotation

    double-to-float p1, p1

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeBlock;->setFriction(IF)V

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Block"

    return-object v0
.end method
