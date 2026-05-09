.class public Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;,
        Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    const-string v0, "ObjectLoader"

    sput-object v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lp1/e;",
            "Lcom/microsoft/xbox/idp/util/HttpCall;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$1;)V

    invoke-direct {p0, p1, v7}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lp1/e;",
            "Lcom/microsoft/xbox/idp/util/HttpCall;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-void
.end method

.method public static synthetic access$600()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isDataReleased(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->isReleased()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Z

    move-result p1

    return p1
.end method

.method public releaseData(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->release()V

    return-void
.end method

.method public bridge synthetic releaseData(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method
