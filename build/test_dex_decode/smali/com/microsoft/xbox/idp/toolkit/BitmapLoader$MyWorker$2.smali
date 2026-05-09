.class Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

.field public final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHttpError(IILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", httpStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v2, p1, p2, p3}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v1, v0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->access$100(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->put(Ljava/lang/Object;[B)[B

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v3, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p1
.end method
