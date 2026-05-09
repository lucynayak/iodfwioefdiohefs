.class Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker<",
        "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final userPtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;->userPtr:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;-><init>(J)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;->userPtr:J

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker$1;

    invoke-direct {v2, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->InvokeXBLogout(JLcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;)V

    return-void
.end method
