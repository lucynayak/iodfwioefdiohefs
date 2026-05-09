.class public abstract Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public constructor <init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/microsoft/xbox/idp/toolkit/HttpError;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

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

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    return-object v0
.end method

.method public hasData()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasError()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isReleased()Z
.end method

.method public abstract release()V
.end method
