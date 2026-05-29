.class public final Ll2/g;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Object;)[C
    .registers 6

    instance-of v0, p0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Context;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBoolean(II)Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getBoolean"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->getBoolean(II)Z

    move-result p0

    return p0
.end method

.method public static getChar(II)C
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getChar"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->getChar(II)C

    move-result p0

    return p0
.end method

.method public static getDimension()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getDimension"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getDimension()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloat(II)F
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getFloat"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->getFloat(II)F

    move-result p0

    return p0
.end method

.method public static getGameMode()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getGameMode"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getGameMode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getHitResult()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getHitResult"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getHitResult()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInt(II)I
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getInt"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static getLevel()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getLevel"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getLevel()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLevelRenderer()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getLevelRenderer"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getLevelRenderer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLibrary()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getLibrary"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getLibrary()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocalPlayer()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getLocalPlayer"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getLocalPlayer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOptions()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getOptions"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getOptions()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPlayer(I)J
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getPlayer"
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->getPlayer(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(II)Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getString"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSymbolAddress(Ljava/lang/String;)J
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getSymbol"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeMemory;->getSymbol(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimer()J
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getTimer"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeMemory;->getTimer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static patch(ILjava/lang/Object;)I
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "patch"
    .end annotation

    invoke-static {p1}, Ll2/g;->A(Ljava/lang/Object;)[C

    move-result-object p1

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    move-result p0

    return p0
.end method

.method public static read(II)Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "read"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->read(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setBoolean(IIZ)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setBoolean"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeMemory;->setBoolean(IIZ)V

    return-void
.end method

.method public static setChar(III)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setChar"
    .end annotation

    int-to-char p2, p2

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeMemory;->setChar(IIC)V

    return-void
.end method

.method public static setFloat(IID)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setFloat"
    .end annotation

    double-to-float p2, p2

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeMemory;->setFloat(IIF)V

    return-void
.end method

.method public static setInt(III)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setInt"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeMemory;->setInt(III)V

    return-void
.end method

.method public static setString(IILjava/lang/String;)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setString"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeMemory;->setString(IILjava/lang/String;)V

    return-void
.end method

.method public static write(ILjava/lang/Object;)I
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "write"
    .end annotation

    invoke-static {p1}, Ll2/g;->A(Ljava/lang/Object;)[C

    move-result-object p1

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Memory"

    return-object v0
.end method
