.class public Lcom/mojang/minecraftpe/platforms/Platform21;
.super Lcom/mojang/minecraftpe/platforms/Platform19;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/platforms/Platform19;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getABIS()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
