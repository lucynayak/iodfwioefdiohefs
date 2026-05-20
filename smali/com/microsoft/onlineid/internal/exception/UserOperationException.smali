.class public Lcom/microsoft/onlineid/internal/exception/UserOperationException;
.super Lcom/microsoft/onlineid/exception/AuthenticationException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _bodyString:Ljava/lang/String;

.field private final _headerString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    const-string v0, "bodyMessage"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, " "

    .line 1
    invoke-static {p1, v0, p2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    const-string v0, "bodyMessage"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "headerString"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, " "

    .line 9
    invoke-static {p1, v0, p2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0, p3}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "bodyMessage"

    invoke-static {p2, p3}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "headerString"

    invoke-static {p1, p3}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "bodyMessage"

    invoke-static {p1, p2}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBodyMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    return-object v0
.end method
