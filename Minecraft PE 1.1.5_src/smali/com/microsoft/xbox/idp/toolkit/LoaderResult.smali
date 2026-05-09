.class public abstract Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.super Ljava/lang/Object;
.source "LoaderResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final error:Lcom/microsoft/xbox/idp/toolkit/HttpError;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .registers 3
    .param p2, "error"    # Lcom/microsoft/xbox/idp/toolkit/HttpError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/microsoft/xbox/idp/toolkit/HttpError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    .line 13
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;
    .registers 2

    .prologue
    .line 20
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    return-object v0
.end method

.method public hasData()Z
    .registers 2

    .prologue
    .line 24
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasError()Z
    .registers 2

    .prologue
    .line 28
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isReleased()Z
.end method

.method public abstract release()V
.end method
