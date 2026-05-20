.class public Lcom/mojang/minecraftpe/input/InputCharacteristics;
.super Ljava/lang/Object;
.source "InputCharacteristics.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allControllersHaveDoubleTriggers()Z
    .registers 14

    .prologue
    const/4 v13, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    .local v5, "supportsDoubleTriggers":Z
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_c

    .line 22
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 23
    .local v3, "ids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v11, v3

    if-ge v2, v11, :cond_5

    .line 24
    aget v11, v3, v2

    invoke-static {v11}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 25
    .local v0, "device":Landroid/view/InputDevice;
    const/16 v1, 0x401

    .line 26
    .local v1, "flags":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v0}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result v11

    if-lez v11, :cond_b

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v11

    and-int/2addr v11, v1

    if-eqz v11, :cond_b

    .line 27
    new-array v11, v13, [I

    fill-array-data v11, :array_0

    invoke-virtual {v0, v11}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v4

    .line 32
    .local v4, "supportedTriggerKeys":[Z
    array-length v11, v4

    if-ne v11, v13, :cond_6

    move v5, v9

    .line 33
    :goto_1
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_2
    array-length v11, v4

    if-ge v8, v11, :cond_0

    .line 34
    aget-boolean v11, v4, v8

    if-nez v11, :cond_7

    .line 35
    const/4 v5, 0x0

    .line 41
    :cond_0
    if-nez v5, :cond_3

    aget-boolean v11, v4, v10

    if-eqz v11, :cond_3

    aget-boolean v11, v4, v9

    if-eqz v11, :cond_3

    .line 42
    const/16 v11, 0x11

    invoke-virtual {v0, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    if-nez v11, :cond_1

    const/16 v11, 0x17

    .line 43
    invoke-virtual {v0, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    if-eqz v11, :cond_8

    :cond_1
    move v6, v9

    .line 44
    .local v6, "supportsL2":Z
    :goto_3
    const/16 v11, 0x12

    invoke-virtual {v0, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    if-nez v11, :cond_2

    const/16 v11, 0x16

    .line 45
    invoke-virtual {v0, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    if-eqz v11, :cond_9

    :cond_2
    move v7, v9

    .line 47
    .local v7, "supportsR2":Z
    :goto_4
    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    move v5, v9

    .line 53
    .end local v6    # "supportsL2":Z
    .end local v7    # "supportsR2":Z
    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "EI-GP20"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 54
    const/4 v5, 0x0

    .line 58
    :cond_4
    if-nez v5, :cond_b

    .line 68
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "flags":I
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "supportedTriggerKeys":[Z
    .end local v8    # "x":I
    :cond_5
    :goto_6
    return v5

    .restart local v0    # "device":Landroid/view/InputDevice;
    .restart local v1    # "flags":I
    .restart local v2    # "i":I
    .restart local v3    # "ids":[I
    .restart local v4    # "supportedTriggerKeys":[Z
    :cond_6
    move v5, v10

    .line 32
    goto :goto_1

    .line 33
    .restart local v8    # "x":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    move v6, v10

    .line 43
    goto :goto_3

    .restart local v6    # "supportsL2":Z
    :cond_9
    move v7, v10

    .line 45
    goto :goto_4

    .restart local v7    # "supportsR2":Z
    :cond_a
    move v5, v10

    .line 47
    goto :goto_5

    .line 23
    .end local v4    # "supportedTriggerKeys":[Z
    .end local v6    # "supportsL2":Z
    .end local v7    # "supportsR2":Z
    .end local v8    # "x":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 66
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "flags":I
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    :cond_c
    const/4 v5, 0x1

    goto :goto_6

    .line 27
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
    .registers 11
    .param p0, "deviceId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 73
    .local v0, "device":Landroid/view/InputDevice;
    const/16 v3, 0x401

    .line 74
    .local v3, "flags":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v5, v8, :cond_0

    .line 75
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v5

    const/16 v8, 0x45e

    if-ne v5, v8, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v8

    const/16 v9, 0x2e0

    if-ne v8, v9, :cond_2

    move v8, v6

    :goto_1
    and-int/2addr v5, v8

    if-eqz v5, :cond_0

    .line 78
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "/system/usr/keylayout/Vendor_045e_Product_02e0.kl"

    aput-object v5, v4, v7

    const-string v5, "/data/system/devices/keylayout/Vendor_045e_Product_02e0.kl"

    aput-object v5, v4, v6

    .line 85
    .local v4, "keyLayoutFilePathsForCrete":[Ljava/lang/String;
    array-length v8, v4

    move v5, v7

    :goto_2
    if-ge v5, v8, :cond_4

    aget-object v2, v4, v5

    .line 86
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 98
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "keyLayoutFilePathsForCrete":[Ljava/lang/String;
    :cond_0
    :goto_3
    return v7

    :cond_1
    move v5, v7

    .line 77
    goto :goto_0

    :cond_2
    move v8, v7

    goto :goto_1

    .line 85
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v4    # "keyLayoutFilePathsForCrete":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_4
    move v7, v6

    .line 93
    goto :goto_3
.end method
