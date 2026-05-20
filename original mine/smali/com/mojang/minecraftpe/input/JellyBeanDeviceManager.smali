.class public Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;
.super Lcom/mojang/minecraftpe/input/InputDeviceManager;
.source "JellyBeanDeviceManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final inputManager:Landroid/hardware/input/InputManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;-><init>()V

    .line 18
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    .line 19
    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceAddedNative(I)V

    .line 41
    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    .line 42
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setCreteControllerNative(IZ)V

    .line 43
    return-void
.end method

.method native onInputDeviceAddedNative(I)V
.end method

.method public onInputDeviceChanged(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceChangedNative(I)V

    .line 48
    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    .line 49
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setCreteControllerNative(IZ)V

    .line 50
    return-void
.end method

.method native onInputDeviceChangedNative(I)V
.end method

.method public onInputDeviceRemoved(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceRemovedNative(I)V

    .line 55
    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    .line 56
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setCreteControllerNative(IZ)V

    .line 57
    return-void
.end method

.method native onInputDeviceRemovedNative(I)V
.end method

.method public register()V
    .registers 5

    .prologue
    .line 24
    iget-object v2, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    .line 25
    .local v1, "ids":[I
    iget-object v2, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 26
    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 29
    aget v2, v1, v0

    aget v3, v1, v0

    invoke-static {v3}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setCreteControllerNative(IZ)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method native setCreteControllerNative(IZ)V
.end method

.method native setDoubleTriggersSupportedNative(Z)V
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 36
    return-void
.end method
