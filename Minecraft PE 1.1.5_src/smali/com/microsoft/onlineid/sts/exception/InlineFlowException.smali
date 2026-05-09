.class public Lcom/microsoft/onlineid/sts/exception/InlineFlowException;
.super Lcom/microsoft/onlineid/exception/AuthenticationException;
.source "InlineFlowException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _errorCode:Ljava/lang/String;

.field private final _errorUrl:Ljava/lang/String;

.field private final _extendedErrorString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorUrl"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "extendedErrorString"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorUrl:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorCode:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_extendedErrorString:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedErrorString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_extendedErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 68
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Inline flow error to be resolved at \'%s\': %s (code = %s, extended = %s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorCode:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_extendedErrorString:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 68
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
