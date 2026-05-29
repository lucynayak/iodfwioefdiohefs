.class public Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;
.super Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    return-void
.end method


# virtual methods
.method public isReleased()Z
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
