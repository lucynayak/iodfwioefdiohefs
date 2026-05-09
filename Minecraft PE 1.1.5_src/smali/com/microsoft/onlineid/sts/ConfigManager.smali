.class public Lcom/microsoft/onlineid/sts/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static compareVersions(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 309
    const/4 v0, 0x0

    .line 312
    .local v0, "diff":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v2, v7, [Ljava/lang/String;

    .line 313
    .local v2, "leftTokens":[Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-array v4, v7, [Ljava/lang/String;

    .line 316
    .local v4, "rightTokens":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    array-length v6, v2

    if-lt v1, v6, :cond_0

    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 318
    :cond_0
    const/4 v3, 0x0

    .line 319
    .local v3, "leftValue":I
    const/4 v5, 0x0

    .line 322
    .local v5, "rightValue":I
    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 324
    aget-object v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 326
    :cond_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 328
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 331
    :cond_2
    sub-int v0, v3, v5

    .line 332
    if-eqz v0, :cond_6

    .line 338
    .end local v3    # "leftValue":I
    .end local v5    # "rightValue":I
    :cond_3
    int-to-long v6, v0

    return-wide v6

    .line 312
    .end local v1    # "index":I
    .end local v2    # "leftTokens":[Ljava/lang/String;
    .end local v4    # "rightTokens":[Ljava/lang/String;
    :cond_4
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 313
    .restart local v2    # "leftTokens":[Ljava/lang/String;
    :cond_5
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 316
    .restart local v1    # "index":I
    .restart local v3    # "leftValue":I
    .restart local v4    # "rightTokens":[Ljava/lang/String;
    .restart local v5    # "rightValue":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .registers 8
    .param p1, "environment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 228
    .local v2, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading new PPCRL config file ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getTransportFactory()Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v3

    .line 233
    .local v3, "transport":Lcom/microsoft/onlineid/internal/transport/Transport;
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->openGetRequest(Ljava/net/URL;)V

    .line 234
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseCode()I

    move-result v1

    .line 235
    .local v1, "responseCode":I
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_0

    .line 237
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->parseConfig(Ljava/io/InputStream;Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    :try_end_0
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/microsoft/onlineid/sts/exception/StsParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 266
    :goto_0
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 269
    .end local v1    # "responseCode":I
    :goto_1
    if-eqz v2, :cond_1

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully updated ppcrlconfig to version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeConfigLastDownloadedTime()V

    .line 280
    :goto_2
    return v2

    .line 241
    .restart local v1    # "responseCode":I
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update ppcrlconfig due to HTTP response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/microsoft/onlineid/sts/exception/StsParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    .end local v1    # "responseCode":I
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Lcom/microsoft/onlineid/exception/NetworkException;
    :try_start_2
    const-string v4, "Failed to update ppcrlconfig."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    goto :goto_1

    .line 249
    .end local v0    # "ex":Lcom/microsoft/onlineid/exception/NetworkException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v4, "Failed to update ppcrlconfig."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    goto :goto_1

    .line 254
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 256
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v4, "Failed to update ppcrlconfig."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    goto :goto_1

    .line 259
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 261
    .local v0, "ex":Lcom/microsoft/onlineid/sts/exception/StsParseException;
    :try_start_5
    const-string v4, "Failed to update ppcrlconfig."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    goto :goto_1

    .end local v0    # "ex":Lcom/microsoft/onlineid/sts/exception/StsParseException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    throw v4

    .line 277
    :cond_1
    const-string v4, "Failed to update ppcrlconfig (parseConfig() returned false)."

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    return-object v0
.end method

.method public getCurrentConfigVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-object v0
.end method

.method protected getTransportFactory()Lcom/microsoft/onlineid/internal/transport/TransportFactory;
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public hasConfigBeenUpdatedRecently(J)Z
    .registers 8
    .param p1, "configLastDownloadedTime"    # J

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v2

    sget-object v3, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MinSecondsBetweenConfigDownloads:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 133
    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClientConfigVersionOlder(Ljava/lang/String;)Z
    .registers 8
    .param p1, "clientConfigVersion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 111
    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {p1, v2}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid client version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected parseConfig(Ljava/io/InputStream;Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .registers 10
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "environment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v4, 0x0

    .line 357
    .local v4, "result":Z
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 358
    .local v3, "rawParser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/ServerConfig;->getNgcCloudPinLength()Ljava/lang/Integer;

    move-result-object v0

    .line 362
    .local v0, "cloudPinLength":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/ServerConfig;->edit()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v1

    .line 363
    .local v1, "editor":Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->clear()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 364
    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 365
    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;Ljava/net/URL;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 368
    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig;->NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 371
    new-instance v2, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;

    invoke-direct {v2, v3, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ServerConfig$Editor;)V

    .line 372
    .local v2, "parser":Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->parse()V

    .line 376
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 380
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 383
    return v4

    .line 380
    .end local v0    # "cloudPinLength":Ljava/lang/Integer;
    .end local v1    # "editor":Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .end local v2    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;
    .end local v3    # "rawParser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v5
.end method

.method public switchEnvironment(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .registers 3
    .param p1, "newEnvironment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v0

    goto :goto_0
.end method

.method public update()Z
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v0

    return v0
.end method

.method public updateIfFirstDownloadNeeded()Z
    .registers 5

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->update()Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateIfNeeded(Ljava/lang/String;)Z
    .registers 10
    .param p1, "desiredVersion"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readConfigLastDownloadedTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/microsoft/onlineid/sts/ConfigManager;->hasConfigBeenUpdatedRecently(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v2

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "currentVersion":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Checking for PPCRL config update from version \"%s\" to version \"%s\""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object p1, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 202
    :try_start_0
    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v2

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 209
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid server configuration requested: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 210
    goto :goto_0
.end method
