.class public Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;,
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    const-string v0, "BitmapLoader"

    sput-object v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .locals 2

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->readStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static readStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public isDataReleased(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->isReleased()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)Z

    move-result p1

    return p1
.end method

.method public releaseData(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->release()V

    return-void
.end method

.method public bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V

    return-void
.end method
