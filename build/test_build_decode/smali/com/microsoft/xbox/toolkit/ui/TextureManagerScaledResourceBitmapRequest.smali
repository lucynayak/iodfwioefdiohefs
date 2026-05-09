.class public Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field public final resourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;-><init>(ILcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method

.method public constructor <init>(ILcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    iget v2, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

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

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    return v0
.end method
