.class public Lcom/microsoft/xbox/idp/toolkit/HttpError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final httpStatus:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    iput p2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatus()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", httpStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
