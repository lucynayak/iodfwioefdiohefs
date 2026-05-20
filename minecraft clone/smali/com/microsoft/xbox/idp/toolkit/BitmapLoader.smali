.class public Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;,
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .param p3, "resultKey"    # Ljava/lang/Object;
    .param p4, "httpCall"    # Lcom/microsoft/xbox/idp/util/HttpCall;

    .prologue
    .line 26
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpCall"    # Lcom/microsoft/xbox/idp/util/HttpCall;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    .line 23
    return-void
.end method

.method static synthetic access$100(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->readStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static readStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "oneByte":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 140
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method protected isDataReleased(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)Z
    .registers 3
    .param p1, "result"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 19
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)Z

    move-result v0

    return v0
.end method

.method protected releaseData(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V
    .registers 2
    .param p1, "result"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->release()V

    .line 37
    return-void
.end method

.method protected bridge synthetic releaseData(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 19
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V

    return-void
.end method
