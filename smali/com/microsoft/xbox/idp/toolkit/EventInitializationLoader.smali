.class public Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/idp/util/ResultCache<",
            "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;-><init>(JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$1;)V

    invoke-direct {p0, p1, v7}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method


# virtual methods
.method public isDataReleased(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)Z

    move-result p1

    return p1
.end method

.method public releaseData(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic releaseData(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)V

    return-void
.end method
