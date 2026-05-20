.class public final Ll2/e;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static addParticle(IDDDDDDI)V
    .registers 14
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "addParticle"
    .end annotation

    double-to-float p1, p1

    double-to-float p2, p3

    double-to-float p3, p5

    double-to-float p4, p7

    double-to-float p5, p9

    double-to-float p6, p11

    move p7, p13

    invoke-static/range {p0 .. p7}, Ldev/virus/variable/launcher/api/NativeLevel;->addParticle(IFFFFFFI)V

    return-void
.end method

.method public static displayClientMessage(Ljava/lang/String;)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "displayClientMessage"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLevel;->displayClientMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static getAddress()Ljava/lang/String;
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getAddress"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllPlayers()[J
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getAllPlayers"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    return-object v0
.end method

.method public static getAllPlayersNames()[Ljava/lang/String;
    .registers 7
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getAllPlayersNames"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    :try_start_0
    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, ""

    aput-object v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getGameSpeed()F
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getGameSpeed"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getGameSpeed()F

    move-result v0

    return v0
.end method

.method public static getPort()I
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPort"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getPort()I

    move-result v0

    return v0
.end method

.method public static getTime()I
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getTime"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getTime()I

    move-result v0

    return v0
.end method

.method public static setGameSpeed(D)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setGameSpeed"
    .end annotation

    double-to-float p0, p0

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLevel;->setGameSpeed(F)V

    return-void
.end method

.method public static setTime(I)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setTime"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLevel;->setTime(I)V

    return-void
.end method

.method public static setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setTitle"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeLevel;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showTipMessage(Ljava/lang/String;)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "showTipMessage"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeLevel;->showTipMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static testMethod(Ljava/lang/String;)V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "testMethod"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/Api;->testMethod(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Level"

    return-object v0
.end method
