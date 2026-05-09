.class public Lcom/microsoft/onlineid/sts/exception/InlineFlowException;
.super Lcom/microsoft/onlineid/exception/AuthenticationException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _errorCode:Ljava/lang/String;

.field private final _errorUrl:Ljava/lang/String;

.field private final _extendedErrorString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_extendedErrorString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedErrorString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_extendedErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorUrl:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_errorCode:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;->_extendedErrorString:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "Inline flow error to be resolved at \'%s\': %s (code = %s, extended = %s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
