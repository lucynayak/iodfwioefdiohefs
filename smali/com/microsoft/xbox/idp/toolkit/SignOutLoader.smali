.class public Lcom/microsoft/xbox/idp/toolkit/SignOutLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Data;,
        Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method


# virtual methods
.method public isDataReleased(Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;->isReleased()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;)Z

    move-result p1

    return p1
.end method

.method public releaseData(Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;->release()V

    return-void
.end method

.method public bridge synthetic releaseData(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;)V

    return-void
.end method
