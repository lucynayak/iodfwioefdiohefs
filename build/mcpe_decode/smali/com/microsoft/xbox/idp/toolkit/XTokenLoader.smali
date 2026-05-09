.class public Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;,
        Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;-><init>(Landroid/content/Context;JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;-><init>(JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method


# virtual methods
.method public isDataReleased(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;->isReleased()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)Z

    move-result p1

    return p1
.end method

.method public releaseData(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;->release()V

    return-void
.end method

.method public bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)V

    return-void
.end method
