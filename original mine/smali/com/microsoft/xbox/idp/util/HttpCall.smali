.class public Lcom/microsoft/xbox/idp/util/HttpCall;
.super Ljava/lang/Object;
.source "HttpCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/util/HttpCall$CallbackWithHeaders;,
        Lcom/microsoft/xbox/idp/util/HttpCall$Callback;
    }
.end annotation


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "endpoint"    # Ljava/lang/String;
    .param p3, "pathAndQuery"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/microsoft/xbox/idp/util/HttpCall;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/idp/util/HttpCall;->id:J

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "endpoint"    # Ljava/lang/String;
    .param p3, "pathAndQuery"    # Ljava/lang/String;
    .param p4, "addDefaultHeaders"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1, p2, p3, p4}, Lcom/microsoft/xbox/idp/util/HttpCall;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/idp/util/HttpCall;->id:J

    .line 19
    return-void
.end method

.method private static native create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method private static native delete(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/HttpCall;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->delete(J)V

    .line 24
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 25
    return-void
.end method

.method public native getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V
.end method

.method public native getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$CallbackWithHeaders;)V
.end method

.method public native setContentTypeHeaderValue(Ljava/lang/String;)V
.end method

.method public native setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setRequestBody(Ljava/lang/String;)V
.end method

.method public native setRequestBody([B)V
.end method

.method public native setRetryAllowed(Z)V
.end method

.method public native setXboxContractVersionHeaderValue(Ljava/lang/String;)V
.end method
