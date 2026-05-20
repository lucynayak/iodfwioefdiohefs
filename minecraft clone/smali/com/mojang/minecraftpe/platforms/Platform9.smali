.class public Lcom/mojang/minecraftpe/platforms/Platform9;
.super Lcom/mojang/minecraftpe/platforms/Platform;
.source "Platform9.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mojang/minecraftpe/platforms/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method public getABIS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public onAppStart(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9
    return-void
.end method

.method public onViewFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 11
    return-void
.end method

.method public onVolumePressed()V
    .registers 1

    .prologue
    .line 7
    return-void
.end method
