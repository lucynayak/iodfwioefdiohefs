.class Lcom/microsoft/xbox/idp/interop/XsapiUser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/XsapiUser$LongCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

.field public final synthetic val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;->this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorCallback;->onError(IILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(J)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;

    new-instance v1, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    invoke-direct {v1, p1, p2}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;->onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V

    return-void
.end method
