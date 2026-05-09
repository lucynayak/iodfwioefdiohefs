.class public Lcom/mojang/minecraftpe/input/InputCharacteristics;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allControllersHaveDoubleTriggers()Z
    .registers 9

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_b

    aget v4, v0, v2

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/lit16 v5, v5, 0x401

    if-eqz v5, :cond_a

    const/4 v3, 0x4

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    array-length v8, v5

    if-ge v6, v8, :cond_2

    aget-boolean v8, v5, v6

    if-nez v8, :cond_1

    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-nez v3, :cond_8

    aget-boolean v6, v5, v1

    if-eqz v6, :cond_8

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_8

    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    if-nez v3, :cond_4

    const/16 v3, 0x17

    invoke-virtual {v4, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v3, 0x1

    :goto_5
    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v5

    if-nez v5, :cond_6

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v5, 0x1

    :goto_7
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    :cond_8
    move v7, v3

    :goto_8
    if-eqz v7, :cond_9

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EI-GP20"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    move v3, v7

    :goto_9
    if-nez v3, :cond_a

    goto :goto_a

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_a
    return v3

    nop

    :array_0
    .array-data 4
        0x66
        0x67
        0x68
        0x69
    .end array-data
.end method

.method public static isCreteController(I)Z
    .registers 7

    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit16 v1, v1, 0x401

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    const/16 v2, 0x45e

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    const/16 v2, 0x2e0

    if-ne p0, v2, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    const-string v1, "/system/usr/keylayout/Vendor_045e_Product_02e0.kl"

    const-string v2, "/data/system/devices/keylayout/Vendor_045e_Product_02e0.kl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_3

    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v2

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method
