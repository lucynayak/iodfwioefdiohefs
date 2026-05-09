.class public final Ll2/h;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static canAttack(II)Z
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "canAttack"
    .end annotation

    int-to-long v0, p0

    int-to-long p0, p1

    invoke-static {v0, v1, p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->canAttack(JJ)Z

    move-result p0

    return p0
.end method

.method public static canFly(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "canFly"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->canFly(J)Z

    move-result p0

    return p0
.end method

.method public static canShowNameTag(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "canShowNameTag"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->canShowNameTag(J)Z

    move-result p0

    return p0
.end method

.method public static getCollisionSize(I)[F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getCollisionSize"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getCollisionSize(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static getFallDistance(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getFallDistance"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getFallDistance(J)F

    move-result p0

    return p0
.end method

.method public static getHealth(I)I
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getHealth"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getHealth(J)I

    move-result p0

    return p0
.end method

.method public static getNameTag(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getNameTag"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNametag(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getNametag"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPitch(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPitch"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPitch(J)F

    move-result p0

    return p0
.end method

.method public static getPositionX(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPositionX"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result p0

    return p0
.end method

.method public static getPositionY(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPositionY"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result p0

    return p0
.end method

.method public static getPositionZ(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPositionZ"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result p0

    return p0
.end method

.method public static getStatusFlag(II)Z
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getStatusFlag"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getStatusFlag(JI)Z

    move-result p0

    return p0
.end method

.method public static getVelocityX(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getVelocityX"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityX(J)F

    move-result p0

    return p0
.end method

.method public static getVelocityY(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getVelocityY"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityY(J)F

    move-result p0

    return p0
.end method

.method public static getVelocityZ(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getVelocityZ"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityZ(J)F

    move-result p0

    return p0
.end method

.method public static getYaw(I)F
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getYaw"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getYaw(J)F

    move-result p0

    return p0
.end method

.method public static isAlive(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isAlive"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isAlive(J)Z

    move-result p0

    return p0
.end method

.method public static isFalling(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isFalling"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isFalling(J)Z

    move-result p0

    return p0
.end method

.method public static isImmobile(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isImmobile"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isImmobile(J)Z

    move-result p0

    return p0
.end method

.method public static isInCreativeMode(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInCreativeMode"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInCreativeMode(J)Z

    move-result p0

    return p0
.end method

.method public static isInLava(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInLava"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInLava(J)Z

    move-result p0

    return p0
.end method

.method public static isInWall(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInWall"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWall(J)Z

    move-result p0

    return p0
.end method

.method public static isInWater(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInWater"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWater(J)Z

    move-result p0

    return p0
.end method

.method public static isInWorld(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInWorld"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWorld(J)Z

    move-result p0

    return p0
.end method

.method public static isInvisible(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isInvisible"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInvisible(J)Z

    move-result p0

    return p0
.end method

.method public static isLocalPlayer(I)Z
    .registers 5
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isLocalPlayer"
    .end annotation

    int-to-long v0, p0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOnFire(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isOnFire"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnFire(J)Z

    move-result p0

    return p0
.end method

.method public static isOnGround(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isOnGround"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnGround(J)Z

    move-result p0

    return p0
.end method

.method public static isOnLadder(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isOnLadder"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnLadder(J)Z

    move-result p0

    return p0
.end method

.method public static isSitting(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isSitting"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isSitting(J)Z

    move-result p0

    return p0
.end method

.method public static isSneaking(I)Z
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isSneaking"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isSneaking(J)Z

    move-result p0

    return p0
.end method

.method public static setCollisionSize(IDD)V
    .registers 7
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setCollisionSize"
    .end annotation

    int-to-long v0, p0

    double-to-float p0, p1

    double-to-float p1, p3

    invoke-static {v0, v1, p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->setCollisionSize(JFF)V

    return-void
.end method

.method public static setNameTag(ILjava/lang/String;)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setNameTag"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->setNameTag(JLjava/lang/String;)V

    return-void
.end method

.method public static setShadowRadius(ID)V
    .registers 5
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setShadowRadius"
    .end annotation

    int-to-long v0, p0

    double-to-float p0, p1

    invoke-static {v0, v1, p0}, Ldev/virus/variable/launcher/api/NativePlayer;->setShadowRadius(JF)V

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Player"

    return-object v0
.end method
