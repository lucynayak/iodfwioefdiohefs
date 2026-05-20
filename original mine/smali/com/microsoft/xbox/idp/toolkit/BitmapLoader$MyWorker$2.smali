.class Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

.field final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHttpError(IILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "httpStatus"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", httpStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v2, p1, p2, p3}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public processResponse(Ljava/io/InputStream;)V
    .registers 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1, v0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->access$100(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 110
    .local v2, "data":[B
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    :try_start_2
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v3

    iget-object v5, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->put(Ljava/lang/Object;[B)[B

    .line 113
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v4, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 120
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 122
    return-void

    .line 113
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 117
    .end local v2    # "data":[B
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 120
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v3
.end method
