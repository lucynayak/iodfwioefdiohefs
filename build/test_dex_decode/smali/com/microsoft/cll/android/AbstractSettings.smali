.class public abstract Lcom/microsoft/cll/android/AbstractSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public TAG:Ljava/lang/String;

.field public final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field public disableUploadOn404:Z

.field public endpoint:Ljava/lang/String;

.field public final logger:Lcom/microsoft/cll/android/ILogger;

.field private final partA:Lcom/microsoft/cll/android/PartA;

.field public queryParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/PartA;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-AbstractSettings"

    iput-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->disableUploadOn404:Z

    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iput-object p3, p0, Lcom/microsoft/cll/android/AbstractSettings;->partA:Lcom/microsoft/cll/android/PartA;

    return-void
.end method


# virtual methods
.method public abstract ParseSettings(Lorg/json/JSONObject;)V
.end method

.method public getSettings()Lorg/json/JSONObject;
    .locals 8

    const-string v0, "UTC"

    iget-object v1, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const-string v3, "Get Settings"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractSettings;->endpoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractSettings;->queryParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v3}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementSettingsHttpAttempts()V

    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getConnectTimeout()I

    invoke-virtual {v3}, Ljava/net/URLConnection;->getReadTimeout()I

    sget-object v4, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v4}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-static {v4}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "If-None-Match"

    iget-object v5, p0, Lcom/microsoft/cll/android/AbstractSettings;->ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v5}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsString(Lcom/microsoft/cll/android/SettingsStore$Settings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Lcom/microsoft/cll/android/ClientTelemetry;->SetAvgSettingsLatencyMs(I)V

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v0, v5}, Lcom/microsoft/cll/android/ClientTelemetry;->SetMaxSettingsLatencyMs(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0x194

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->disableUploadOn404:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const-string v5, "Your iKey is invalid. Your events will not be sent!"

    invoke-interface {v0, v4, v5}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v4, "false"

    :goto_0
    invoke-static {v0, v4}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->disableUploadOn404:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const-string v5, "Your iKey is valid."

    invoke-interface {v0, v4, v5}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v4, "true"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v5, 0x130

    if-ne v0, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementSettingsHttpFailures(I)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, "ETAG"

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/microsoft/cll/android/AbstractSettings;->ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v5, v0}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_7
    if-eqz v2, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_6
    :try_start_5
    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_8

    :try_start_6
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v2, v1

    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementSettingsHttpFailures(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_8
    :goto_8
    return-object v1

    :goto_9
    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_a

    :catch_5
    move-exception v1

    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_a
    throw v0

    :catch_6
    iget-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    const-string v3, "Settings URL is invalid"

    invoke-interface {v0, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
