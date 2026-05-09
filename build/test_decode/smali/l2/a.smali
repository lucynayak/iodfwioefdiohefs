.class public final Ll2/a;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static getBrightness(III)I
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getBrightness"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeBlock;->getBrightness(III)I

    move-result p0

    return p0
.end method

.method public static getFriction(I)F
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getFriction"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeBlock;->getFriction(I)F

    move-result p0

    return p0
.end method

.method public static getID(III)I
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getID"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result p0

    return p0
.end method

.method public static isSolid(I)Z
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isSolid"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeBlock;->isSolid(I)Z

    move-result p0

    return p0
.end method

.method public static setDestroyTime(ID)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setDestroyTime"
    .end annotation

    double-to-float p1, p1

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeBlock;->setDestroyTime(IF)V

    return-void
.end method

.method public static setFriction(ID)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setFriction"
    .end annotation

    double-to-float p1, p1

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeBlock;->setFriction(IF)V

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Block"

    return-object v0
.end method
