.class Lcom/microsoft/xbox/idp/interop/XsapiUser$3;
.super Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignatureSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;->this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;-><init>(Lcom/microsoft/xbox/idp/interop/XsapiUser$1;)V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->onError(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
