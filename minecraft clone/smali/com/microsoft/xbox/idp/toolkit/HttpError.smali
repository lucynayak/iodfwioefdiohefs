.class public Lcom/microsoft/xbox/idp/toolkit/HttpError;
.super Ljava/lang/Object;
.source "HttpError.java"


# instance fields
.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final httpStatus:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "httpStatus"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    .line 13
    iput p2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    .line 14
    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatus()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", httpStatus: "

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", errorMessage: "

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
