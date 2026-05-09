.class public Ldev/virus/variable/launcher/api/NativeInventory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clearSlot(I)V
.end method

.method public static native dropSlot(IZZ)V
.end method

.method public static native getArmor(I)I
.end method

.method public static native getOffhandSlot()I
.end method

.method public static native getSelectedSlot()I
.end method

.method public static native setArmor(III)V
.end method

.method public static native setOffhandSlot(I)V
.end method

.method public static native setSelectedSlot(I)V
.end method

.method public static native swapSlots(II)V
.end method
