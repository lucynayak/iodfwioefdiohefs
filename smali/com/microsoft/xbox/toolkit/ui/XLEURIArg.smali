.class public Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final errorResourceId:I

.field private final loadingResourceId:I

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;-><init>(Ljava/net/URI;II)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    iput p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    iget v2, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    iget v2, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    if-eq v1, p1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getErrorResourceId()I
    .registers 2

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    return v0
.end method

.method public getLoadingResourceId()I
    .registers 2

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    return v0
.end method

.method public getTextureBindingOption()Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
    .registers 8

    new-instance v6, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    iget v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    return-object v6
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x17

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
