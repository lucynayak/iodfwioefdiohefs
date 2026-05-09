.class public Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;
.super Lcom/mojang/minecraftpe/input/InputDeviceManager;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final inputManager:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;-><init>()V

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceAddedNative(I)V

    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setCreteControllerNative(IZ)V

    return-void
.end method

.method public native onInputDeviceAddedNative(I)V
.end method

.method public onInputDeviceChanged(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceChangedNative(I)V

    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setCreteControllerNative(IZ)V

    return-void
.end method

.method public native onInputDeviceChangedNative(I)V
.end method

.method public onInputDeviceRemoved(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceRemovedNative(I)V

    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setCreteControllerNative(IZ)V

    return-void
.end method

.method public native onInputDeviceRemovedNative(I)V
.end method

.method public register()V
    .registers 5

    iget-object v0, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    aget v3, v0, v1

    invoke-static {v3}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setCreteControllerNative(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public native setCreteControllerNative(IZ)V
.end method

.method public native setDoubleTriggersSupportedNative(Z)V
.end method

.method public unregister()V
    .registers 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method
