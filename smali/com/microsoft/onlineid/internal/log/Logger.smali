.class public Lcom/microsoft/onlineid/internal/log/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/onlineid/internal/log/LogInstance;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/log/LogInstance;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Lcom/microsoft/onlineid/internal/log/IRedactable;)V
    .registers 3

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logRedactedMessage(Lcom/microsoft/onlineid/internal/log/IRedactable;I)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public static getLogTag()Ljava/lang/String;
    .registers 1

    const-string v0, "MSA"

    return-object v0
.end method

.method public static info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V
    .registers 3

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logRedactedMessage(Lcom/microsoft/onlineid/internal/log/IRedactable;I)V

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lcom/microsoft/onlineid/internal/log/Logger;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object p0

    sget-object v1, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/onlineid/internal/log/LogInstance;

    const-string v2, "isRedactionEnabled"

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "isLoggingEnabled"

    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/microsoft/onlineid/internal/log/LogInstance;-><init>(ZZZ)V

    sput-object v1, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    goto :goto_0

    :cond_0
    const-string v2, "isLoggingEnabled"

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->setIsLoggingEnabled(Z)V

    sget-object v1, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const-string v2, "isRedactionEnabled"

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/microsoft/onlineid/internal/log/LogInstance;->setIsRedactionEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLogInstance(Lcom/microsoft/onlineid/internal/log/LogInstance;)V
    .registers 1

    sput-object p0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    return-void
.end method

.method public static setStackTraceLoggingOption(Z)V
    .registers 2

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    invoke-virtual {v0, p0}, Lcom/microsoft/onlineid/internal/log/LogInstance;->setIsStackTraceLoggingEnabled(Z)V

    return-void
.end method

.method public static shouldRedact()Z
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/log/LogInstance;->shouldRedact()Z

    move-result v0

    return v0
.end method

.method public static warning(Lcom/microsoft/onlineid/internal/log/IRedactable;)V
    .registers 3

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logRedactedMessage(Lcom/microsoft/onlineid/internal/log/IRedactable;I)V

    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method
