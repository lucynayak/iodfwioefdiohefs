.class public Lcom/microsoft/cll/android/EventSender;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final NO_HTTPS_CONN:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final endpoint:Ljava/net/URL;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "URL didn\'t return HttpsUrlConnection instance."

    iput-object v0, p0, Lcom/microsoft/cll/android/EventSender;->NO_HTTPS_CONN:Ljava/lang/String;

    const-string v0, "AndroidCll-EventSender"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventSender;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/cll/android/EventSender;->endpoint:Ljava/net/URL;

    iput-object p2, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iput-object p3, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    return-void
.end method

.method private getTime()J
    .registers 3

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public openConnection(IZLcom/microsoft/cll/android/TicketHeaders;)Ljava/net/HttpURLConnection;
    .registers 12

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v3, p3, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p3, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    move-object v5, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-nez v4, :cond_0

    const-string v4, ";"

    .line 1
    invoke-static {v5, v4}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v4, "\""

    .line 2
    invoke-static {v5, v4}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4
    invoke-static {v5, v6, v4}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 5
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSS\'Z\'"

    invoke-direct {v3, v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v4, p0, Lcom/microsoft/cll/android/EventSender;->endpoint:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    instance-of v6, v4, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_5

    check-cast v4, Ljava/net/HttpURLConnection;

    sget-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v0, "POST"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v2, "application/x-json-stream; charset=utf-8"

    invoke-virtual {v4, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-UploadTime"

    invoke-virtual {v4, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Length"

    invoke-virtual {v4, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string p1, "Accept"

    const-string p2, "application/json"

    invoke-virtual {v4, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Encoding"

    const-string p2, "gzip, deflate"

    invoke-virtual {v4, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "deflate"

    invoke-virtual {v4, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eq v5, v1, :cond_4

    const-string p1, "X-Tickets"

    invoke-virtual {v4, p1, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/microsoft/cll/android/TicketHeaders;->authXToken:Ljava/lang/String;

    const-string p2, "X-AuthXToken"

    invoke-virtual {v4, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p2, "X-AuthMsaDeviceTicket"

    invoke-virtual {v4, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v4

    :cond_5
    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "URL didn\'t return HttpsUrlConnection instance."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processResponseBody(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    .registers 6

    const-string v0, "AndroidCll-EventSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "Couldn\'t read response body"

    invoke-interface {p1, v0, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "rej"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {p2, p1}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementRejectDropCount(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    iget-object p2, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendEvent([BZLcom/microsoft/cll/android/TicketHeaders;)I
    .registers 15

    const-string v0, "Bad Response Code"

    const-string v1, "Error writing data"

    const-string v2, "Error connecting."

    const-string v3, "AndroidCll-EventSender"

    iget-object v4, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v4}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpAttempts()V

    array-length v4, p1

    invoke-virtual {p0, v4, p2, p3}, Lcom/microsoft/cll/android/EventSender;->openConnection(IZLcom/microsoft/cll/android/TicketHeaders;)Ljava/net/HttpURLConnection;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object p3, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p3, v3, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p1, v3, v1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide v1

    const/16 p1, 0x258

    const/16 p3, 0x1f4

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    move-object v6, v5

    const/16 v7, 0x1f4

    :goto_0
    move-object v5, v4

    goto/16 :goto_5

    :catch_0
    const/16 v5, 0x1f4

    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v8, :cond_2

    :try_start_4
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v10, 0xc8

    if-ne v5, v10, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {p0, v9, v10}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v6

    move v7, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_5

    :catchall_2
    move-exception v6

    move v7, v5

    goto :goto_0

    :catch_1
    move-object v8, v4

    :catch_2
    :try_start_5
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v10, 0x190

    if-ne v5, v10, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {p0, v9, v6}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_4
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_4
    if-lt v5, p3, :cond_5

    if-ge v5, p1, :cond_5

    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p1, v3, v0}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    :cond_5
    invoke-direct {p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    iget-object p3, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Lcom/microsoft/cll/android/ClientTelemetry;->SetAvgVortexLatencyMs(I)V

    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {p1, p2}, Lcom/microsoft/cll/android/ClientTelemetry;->SetMaxVortexLatencyMs(I)V

    return v5

    :goto_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_7
    if-lt v7, p3, :cond_8

    if-ge v7, p1, :cond_8

    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p1, v3, v0}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    :cond_8
    invoke-direct {p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    iget-object p3, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Lcom/microsoft/cll/android/ClientTelemetry;->SetAvgVortexLatencyMs(I)V

    iget-object p1, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {p1, p2}, Lcom/microsoft/cll/android/ClientTelemetry;->SetMaxVortexLatencyMs(I)V

    throw v6

    :catchall_3
    move-exception p1

    iget-object p2, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p2, v3, v1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catchall_4
    move-exception p1

    iget-object p2, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {p2, v3, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
