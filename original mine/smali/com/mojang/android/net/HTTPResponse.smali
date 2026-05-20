.class public Lcom/mojang/android/net/HTTPResponse;
.super Ljava/lang/Object;
.source "HTTPResponse.java"


# static fields
.field public static final ABORTED:I = 0x2

.field public static final DONE:I = 0x1

.field public static final IN_PROGRESS:I = 0x0

.field public static final TIME_OUT:I = 0x3


# instance fields
.field body:Ljava/lang/String;

.field headers:[Lorg/apache/http/Header;

.field responseCode:I

.field status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/mojang/android/net/HTTPResponse;->status:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    .line 13
    const/16 v0, -0x64

    iput v0, p0, Lcom/mojang/android/net/HTTPResponse;->responseCode:I

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mojang/android/net/HTTPResponse;->headers:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/mojang/android/net/HTTPResponse;->responseCode:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/mojang/android/net/HTTPResponse;->status:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2
    .param p1, "newBody"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .registers 2
    .param p1, "newHeaders"    # [Lorg/apache/http/Header;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mojang/android/net/HTTPResponse;->headers:[Lorg/apache/http/Header;

    .line 46
    return-void
.end method

.method public setResponseCode(I)V
    .registers 2
    .param p1, "newResonseCode"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/mojang/android/net/HTTPResponse;->responseCode:I

    .line 38
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "newStatus"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/mojang/android/net/HTTPResponse;->status:I

    .line 22
    return-void
.end method
