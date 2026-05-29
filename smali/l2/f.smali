.class public final Ll2/f;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static addEffect(IIIZ)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "addEffect"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->addEffect(IIIZ)V

    return-void
.end method

.method public static attack(I)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "attack"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->attack(J)V

    return-void
.end method

.method public static attackTp(I)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "attackTp"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->attackTp(J)V

    return-void
.end method

.method public static buildBlock(IIII)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "buildBlock"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->buildBlock(IIII)V

    return-void
.end method

.method public static canFly()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "canFly"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->canFly(J)Z

    move-result v0

    return v0
.end method

.method public static canShowNameTag()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "canShowNameTag"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->canShowNameTag(J)Z

    move-result v0

    return v0
.end method

.method public static click(Z)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "click"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->click(Z)V

    return-void
.end method

.method public static closeScreen()V
    .registers 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "closeScreen"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->closeScreen()V

    return-void
.end method

.method public static destroyBlock(III)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "destroyBlock"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->destroyBlock(III)V

    return-void
.end method

.method public static getCollisionSize()[F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getCollisionSize"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getCollisionSize(J)[F

    move-result-object v0

    return-object v0
.end method

.method public static getDistanceTo(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getDistanceTo"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceTo(J)F

    move-result p0

    return p0
.end method

.method public static getDistanceToCoords(DDD)F
    .registers 6
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getDistanceToCoords"
    .end annotation

    double-to-float p0, p0

    double-to-float p1, p2

    double-to-float p2, p4

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceToCoords(FFF)F

    move-result p0

    return p0
.end method

.method public static getFallDistance()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getFallDistance"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getFallDistance(J)F

    move-result v0

    return v0
.end method

.method public static getHealth()I
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getHealth"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getHealth()I

    move-result v0

    return v0
.end method

.method public static getNameTag()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getNameTag"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNametag()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getNametag"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNearestPlayer(D)J
    .registers 15
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getNearestPlayer"
    .end annotation

    invoke-static {}, Ll2/e;->getAllPlayers()[J

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-wide v5, v0, v4

    long-to-int v7, v5

    invoke-static {v7}, Ll2/f;->getDistanceTo(I)F

    move-result v8

    float-to-double v8, v8

    cmpg-double v10, v8, p0

    if-gez v10, :cond_0

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-lez v12, :cond_0

    invoke-static {v7}, Ll2/h;->isLocalPlayer(I)Z

    move-result v7

    if-nez v7, :cond_0

    move-wide v2, v5

    move-wide p0, v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static getPitch()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPitch"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPitch(J)F

    move-result v0

    return v0
.end method

.method public static getPointedPlayer()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPointedPlayer"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getPointedPlayer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPointedVector()[I
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPointedVector"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getPointedVector()[I

    move-result-object v0

    return-object v0
.end method

.method public static getPositionX()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPositionX"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v0

    return v0
.end method

.method public static getPositionY()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPositionY"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v0

    return v0
.end method

.method public static getPositionZ()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPositionZ"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v0

    return v0
.end method

.method public static getStatusFlag(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getStatusFlag"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Ldev/virus/variable/launcher/api/NativePlayer;->getStatusFlag(JI)Z

    move-result p0

    return p0
.end method

.method public static getUniqueID()I
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getUniqueID"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static getVelocityX()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getVelocityX"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityX(J)F

    move-result v0

    return v0
.end method

.method public static getVelocityY()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getVelocityY"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityY(J)F

    move-result v0

    return v0
.end method

.method public static getVelocityZ()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getVelocityZ"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityZ(J)F

    move-result v0

    return v0
.end method

.method public static getViewPerspective()I
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getViewPerspective"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getViewPerspective()I

    move-result v0

    return v0
.end method

.method public static getYaw()F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getYaw"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getYaw(J)F

    move-result v0

    return v0
.end method

.method public static isAlive()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isAlive"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isAlive(J)Z

    move-result v0

    return v0
.end method

.method public static isFalling()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isFalling"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isFalling(J)Z

    move-result v0

    return v0
.end method

.method public static isImmobile()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isImmobile"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isImmobile(J)Z

    move-result v0

    return v0
.end method

.method public static isInCreativeMode()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInCreativeMode"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInCreativeMode(J)Z

    move-result v0

    return v0
.end method

.method public static isInGame()Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInGame"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    return v0
.end method

.method public static isInLava()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInLava"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInLava(J)Z

    move-result v0

    return v0
.end method

.method public static isInWall()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInWall"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWall(J)Z

    move-result v0

    return v0
.end method

.method public static isInWater()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInWater"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWater(J)Z

    move-result v0

    return v0
.end method

.method public static isInvisible()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInvisible"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInvisible(J)Z

    move-result v0

    return v0
.end method

.method public static isMoveButtonPressed(I)Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isMoveButtonPressed"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result p0

    return p0
.end method

.method public static isMovingForward()Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isMovingForward"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMovingForward()Z

    move-result v0

    return v0
.end method

.method public static isOnFire()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isOnFire"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnFire(J)Z

    move-result v0

    return v0
.end method

.method public static isOnGround()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isOnGround"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnGround(J)Z

    move-result v0

    return v0
.end method

.method public static isOnLadder()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isOnLadder"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnLadder(J)Z

    move-result v0

    return v0
.end method

.method public static isSitting()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isSitting"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isSitting(J)Z

    move-result v0

    return v0
.end method

.method public static isSneaking()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isSneaking"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isSneaking(J)Z

    move-result v0

    return v0
.end method

.method public static longClick()V
    .registers 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "longClick"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->longClick()V

    return-void
.end method

.method public static lookAt(I)V
    .registers 11
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "lookAt"
    .end annotation

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ll2/h;->getPositionX(I)F

    move-result v0

    invoke-static {}, Ll2/f;->getPositionX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {p0}, Ll2/h;->getPositionY(I)F

    move-result v2

    invoke-static {}, Ll2/f;->getPositionY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {p0}, Ll2/h;->getPositionZ(I)F

    move-result p0

    invoke-static {}, Ll2/f;->getPositionZ()F

    move-result v4

    sub-float/2addr p0, v4

    float-to-double v4, p0

    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v8, v6

    mul-double v6, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v2, v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    neg-double v2, v2

    invoke-static {}, Ll2/f;->getYaw()F

    move-result p0

    float-to-double v4, p0

    invoke-static {}, Ll2/f;->getYaw()F

    move-result p0

    float-to-double v6, p0

    invoke-static {v0, v1, v6, v7}, Ly1/b;->b(DD)D

    move-result-wide v0

    sub-double/2addr v4, v0

    double-to-float p0, v4

    float-to-double v0, p0

    invoke-static {}, Ll2/f;->getPitch()F

    move-result p0

    float-to-double v4, p0

    invoke-static {}, Ll2/f;->getPitch()F

    move-result p0

    float-to-double v6, p0

    invoke-static {v2, v3, v6, v7}, Ly1/b;->b(DD)D

    move-result-wide v2

    sub-double/2addr v4, v2

    double-to-float p0, v4

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ll2/f;->setRot(DD)V

    :cond_0
    return-void
.end method

.method public static openContainer(III)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "openContainer"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->openContainer(III)V

    return-void
.end method

.method public static openInventory()V
    .registers 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "openInventory"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->openInventory()V

    return-void
.end method

.method public static removeEffect(I)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "removeEffect"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->removeEffect(I)V

    return-void
.end method

.method public static sendChatMessage(Ljava/lang/Object;)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "sendChatMessage"
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->sendChatMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static setMoveButtonStatus(IZ)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setMoveButtonStatus"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V

    return-void
.end method

.method public static setNameTag(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setNameTag"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Ldev/virus/variable/launcher/api/NativePlayer;->setNameTag(JLjava/lang/String;)V

    return-void
.end method

.method public static setOnGround(Z)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setOnGround"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setOnGround(Z)V

    return-void
.end method

.method public static setPosition(DDD)V
    .registers 6
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setPosition"
    .end annotation

    double-to-float p0, p0

    double-to-float p1, p2

    double-to-float p2, p4

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPosition(FFF)V

    return-void
.end method

.method public static setPositionRelative(DDD)V
    .registers 6
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setPositionRelative"
    .end annotation

    double-to-float p0, p0

    double-to-float p1, p2

    double-to-float p2, p4

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelative(FFF)V

    return-void
.end method

.method public static setPositionRelativeX(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setPositionRelativeX"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelativeX(F)V

    return-void
.end method

.method public static setPositionRelativeY(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setPositionRelativeY"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelativeY(F)V

    return-void
.end method

.method public static setPositionRelativeZ(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setPositionRelativeZ"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelativeZ(F)V

    return-void
.end method

.method public static setPositionX(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setPositionX"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionX(F)V

    return-void
.end method

.method public static setPositionY(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setPositionY"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionY(F)V

    return-void
.end method

.method public static setPositionZ(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setPositionZ"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionZ(F)V

    return-void
.end method

.method public static setRot(DD)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setRot"
    .end annotation

    double-to-float p0, p0

    double-to-float p1, p2

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setRot(FF)V

    return-void
.end method

.method public static setSprinting(Z)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setSprinting"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setSprinting(Z)V

    return-void
.end method

.method public static setStatusFlag(IZ)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setStatusFlag"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    return-void
.end method

.method public static setStepHeight(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setStepHeight"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStepHeight(F)V

    return-void
.end method

.method public static setVelocity(DDD)V
    .registers 6
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setVelocity"
    .end annotation

    double-to-float p0, p0

    double-to-float p1, p2

    double-to-float p2, p4

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    return-void
.end method

.method public static setVelocityX(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setVelocityX"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityX(F)V

    return-void
.end method

.method public static setVelocityY(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setVelocityY"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    return-void
.end method

.method public static setVelocityZ(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setVelocityZ"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityZ(F)V

    return-void
.end method

.method public static setViewPerspective(I)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setViewPerspective"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setViewPerspective(I)V

    return-void
.end method

.method public static smoothLookAt(ID)V
    .registers 13
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "smoothLookAt"
    .end annotation

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Ll2/h;->getPositionX(I)F

    move-result v0

    invoke-static {}, Ll2/f;->getPositionX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {p0}, Ll2/h;->getPositionY(I)F

    move-result v2

    invoke-static {}, Ll2/f;->getPositionY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {p0}, Ll2/h;->getPositionZ(I)F

    move-result p0

    invoke-static {}, Ll2/f;->getPositionZ()F

    move-result v4

    sub-float/2addr p0, v4

    float-to-double v4, p0

    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v8, v6

    mul-double v6, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    neg-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double p0, v4, p1

    const-wide/16 v6, 0x0

    cmpl-double p2, p0, v6

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, p0

    :goto_0
    invoke-static {}, Ll2/f;->getYaw()F

    move-result p0

    float-to-double p0, p0

    invoke-static {}, Ll2/f;->getYaw()F

    move-result p2

    float-to-double v6, p2

    invoke-static {v0, v1, v6, v7}, Ly1/b;->b(DD)D

    move-result-wide v0

    mul-double v0, v0, v4

    sub-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {}, Ll2/f;->getPitch()F

    move-result p2

    float-to-double v0, p2

    invoke-static {}, Ll2/f;->getPitch()F

    move-result p2

    float-to-double v6, p2

    invoke-static {v2, v3, v6, v7}, Ly1/b;->b(DD)D

    move-result-wide v2

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    double-to-float p2, v0

    float-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Ll2/f;->setRot(DD)V

    :cond_1
    return-void
.end method

.method public static worldToScreen(DDDDD)[F
    .registers 10
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "worldToScreen"
    .end annotation

    double-to-float p0, p0

    double-to-float p1, p2

    double-to-float p2, p4

    double-to-float p3, p6

    double-to-float p4, p8

    invoke-static {p0, p1, p2, p3, p4}, Ldev/virus/variable/launcher/api/ScreenUtils;->worldToScreen(FFFFF)[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "LocalPlayer"

    return-object v0
.end method
