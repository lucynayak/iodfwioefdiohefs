.class public Lcom/microsoft/onlineid/internal/log/LogInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LogTag:Ljava/lang/String; = "MSA"

.field public static final MaxLogLength:I = 0xfa0


# instance fields
.field private _isLoggingEnabled:Z

.field private _isRedactionEnabled:Z

.field private _isStackTraceLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    iput-boolean p2, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    iput-boolean p3, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    return-void
.end method

.method private logMessageLevel(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logInfo(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logError(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logWarning(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getStackTraceInfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getStackTrace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/2addr v3, p2

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p1, v3

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "()@"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p1, v3

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error in getStackTraceInfo"

    invoke-virtual {p0, p2, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logError(Ljava/lang/String;)V
    .registers 3

    const-string v0, "MSA"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "MSA"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public logInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "MSA"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "MSA"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;I)V

    return-void
.end method

.method public logMessage(Ljava/lang/String;ILjava/lang/Throwable;I)V
    .registers 8

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "MSA"

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit16 v2, v1, 0xfa0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/microsoft/onlineid/internal/log/LogInstance;->getStackTraceInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessageLevel(Ljava/lang/String;ILjava/lang/Throwable;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public logRedactedMessage(Lcom/microsoft/onlineid/internal/log/IRedactable;I)V
    .registers 7

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/log/IRedactable;->getRedactedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/log/IRedactable;->getUnredactedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public logWarning(Ljava/lang/String;)V
    .registers 3

    const-string v0, "MSA"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "MSA"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setIsLoggingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    return-void
.end method

.method public setIsRedactionEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    return-void
.end method

.method public setIsStackTraceLoggingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    return-void
.end method

.method public shouldRedact()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
