.class public Lcom/microsoft/onlineid/sts/ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    return-void
.end method

.method public static compareVersions(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\\."

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p1, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v3, p0

    if-lt v0, v3, :cond_2

    array-length v3, p1

    if-ge v0, v3, :cond_5

    :cond_2
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_4

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    sub-int/2addr v1, v3

    if-eqz v1, :cond_6

    :cond_5
    int-to-long p0, v1

    return-wide p0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .locals 5

    const-string v0, "Failed to update ppcrlconfig."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading new PPCRL config file ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getTransportFactory()Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->openGetRequest(Ljava/net/URL;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->parseConfig(Ljava/io/InputStream;Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v2

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update ppcrlconfig due to HTTP response code "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/onlineid/sts/exception/StsParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    invoke-interface {v0, p1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    if-eqz v2, :cond_1

    const-string p1, "Successfully updated ppcrlconfig to version: "

    .line 1
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeConfigLastDownloadedTime()V

    return v2

    :cond_1
    const-string p1, "Failed to update ppcrlconfig (parseConfig() returned false)."

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    return v2

    :goto_3
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    throw p1
.end method


# virtual methods
.method public getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    return-object v0
.end method

.method public getCurrentConfigVersion()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-object v0
.end method

.method public getTransportFactory()Lcom/microsoft/onlineid/internal/transport/TransportFactory;
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public hasConfigBeenUpdatedRecently(J)Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object p1

    sget-object p2, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MinSecondsBetweenConfigDownloads:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result p1

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isClientConfigVersionOlder(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid client version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public parseConfig(Ljava/io/InputStream;Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getNgcCloudPinLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ServerConfig;->edit()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->clear()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    sget-object v3, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    sget-object v3, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;Ljava/net/URL;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    sget-object p2, Lcom/microsoft/onlineid/sts/ServerConfig;->NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, v1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    new-instance p2, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;

    invoke-direct {p2, v0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ServerConfig$Editor;)V

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->commit()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
.end method

.method public switchEnvironment(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result p1

    return p1
.end method

.method public update()Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v0

    return v0
.end method

.method public updateIfFirstDownloadNeeded()Z
    .locals 5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->update()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateIfNeeded(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readConfigLastDownloadedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/sts/ConfigManager;->hasConfigBeenUpdatedRecently(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p1, v3, v1

    const-string v5, "Checking for PPCRL config update from version \"%s\" to version \"%s\""

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid server configuration requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method
