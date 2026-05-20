.class Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field public final synthetic val$data:[B

.field public final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;[B)V
    .registers 4

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$1;->val$data:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method
