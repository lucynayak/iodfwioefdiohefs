.class Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenAndSignatureCallbackWithResult"
.end annotation


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private httpStatusCode:I

.field private tokenAndSignature:Lcom/microsoft/xbox/idp/interop/TokenAndSignature;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/idp/interop/XsapiUser$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    iget v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->httpStatusCode:I

    return v0
.end method

.method public getTokenAndSignature()Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->tokenAndSignature:Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    return-object v0
.end method

.method public onError(IILjava/lang/String;)V
    .registers 4

    iput p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->httpStatusCode:I

    iput p2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->errorCode:I

    iput-object p3, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->tokenAndSignature:Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    return-void
.end method
