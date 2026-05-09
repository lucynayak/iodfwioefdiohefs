.class public Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;
.super Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<",
        "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Data;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Data;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    return-void
.end method


# virtual methods
.method public isReleased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
