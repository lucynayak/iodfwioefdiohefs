.class public Lcom/mojang/android/net/HTTPResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABORTED:I = 0x2

.field public static final DONE:I = 0x1

.field public static final IN_PROGRESS:I = 0x0

.field public static final TIME_OUT:I = 0x3


# instance fields
.field public body:Ljava/lang/String;

.field public headers:[Lorg/apache/http/Header;

.field public responseCode:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mojang/android/net/HTTPResponse;->status:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    const/16 v0, -0x64

    iput v0, p0, Lcom/mojang/android/net/HTTPResponse;->responseCode:I

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .registers 2

    iget-object v0, p0, Lcom/mojang/android/net/HTTPResponse;->headers:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/mojang/android/net/HTTPResponse;->responseCode:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/mojang/android/net/HTTPResponse;->status:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .registers 2

    iput-object p1, p0, Lcom/mojang/android/net/HTTPResponse;->headers:[Lorg/apache/http/Header;

    return-void
.end method

.method public setResponseCode(I)V
    .registers 2

    iput p1, p0, Lcom/mojang/android/net/HTTPResponse;->responseCode:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/mojang/android/net/HTTPResponse;->status:I

    return-void
.end method
