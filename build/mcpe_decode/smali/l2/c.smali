.class public final Ll2/c;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static clearSlot(I)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "clearSlot"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeInventory;->clearSlot(I)V

    return-void
.end method

.method public static dropSlot(IZZ)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "dropSlot"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeInventory;->dropSlot(IZZ)V

    return-void
.end method

.method public static getArmor(I)I
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getArmor"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeInventory;->getArmor(I)I

    move-result p0

    return p0
.end method

.method public static getOffhandSlot()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getOffhandSlot"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getOffhandSlot()I

    move-result v0

    return v0
.end method

.method public static getSelectedSlot()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getSelectedSlot"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    return v0
.end method

.method public static setArmor(III)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setArmor"
    .end annotation

    invoke-static {p0, p1, p2}, Ldev/virus/variable/launcher/api/NativeInventory;->setArmor(III)V

    return-void
.end method

.method public static setOffhandSlot(I)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setOffhandSlot"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeInventory;->setOffhandSlot(I)V

    return-void
.end method

.method public static setSelectedSlot(I)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setSelectedSlot"
    .end annotation

    invoke-static {p0}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    return-void
.end method

.method public static swapSlots(II)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "swapSlots"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeInventory;->swapSlots(II)V

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Inventory"

    return-object v0
.end method
