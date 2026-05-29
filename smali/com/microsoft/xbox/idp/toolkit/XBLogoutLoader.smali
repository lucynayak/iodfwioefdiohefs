.class public Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .registers 6

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;-><init>(JLcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method


# virtual methods
.method public isDataReleased(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;->isReleased()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)Z

    move-result p1

    return p1
.end method

.method public releaseData(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)V
    .registers 2

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;->release()V

    return-void
.end method

.method public bridge synthetic releaseData(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)V

    return-void
.end method
