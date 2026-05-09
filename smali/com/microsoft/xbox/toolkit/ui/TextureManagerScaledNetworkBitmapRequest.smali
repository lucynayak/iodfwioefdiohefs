.class public Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;


# instance fields
.field public final bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public getKeyString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
