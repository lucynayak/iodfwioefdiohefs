.class public Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Data;,
        Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$1;)V

    invoke-direct {p0, p1, v6}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method


# virtual methods
.method public isDataReleased(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;->isReleased()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)Z

    move-result p1

    return p1
.end method

.method public releaseData(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;->release()V

    return-void
.end method

.method public bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)V

    return-void
.end method
