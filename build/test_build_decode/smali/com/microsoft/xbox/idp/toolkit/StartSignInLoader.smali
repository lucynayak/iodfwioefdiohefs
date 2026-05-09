.class public Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Data;,
        Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$MyWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method


# virtual methods
.method public isDataReleased(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;->isReleased()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)Z

    move-result p1

    return p1
.end method

.method public releaseData(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;->release()V

    return-void
.end method

.method public bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)V

    return-void
.end method
