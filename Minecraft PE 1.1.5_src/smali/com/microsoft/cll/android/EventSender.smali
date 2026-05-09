.class public Lcom/microsoft/cll/android/EventSender;
.super Ljava/lang/Object;
.source "EventSender.java"


# instance fields
.field private final NO_HTTPS_CONN:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final endpoint:Ljava/net/URL;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;)V
    .registers 5
    .param p1, "endpoint"    # Ljava/net/URL;
    .param p2, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p3, "logger"    # Lcom/microsoft/cll/android/ILogger;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "URL didn\'t return HttpsUrlConnection instance."

    iput-object v0, p0, Lcom/microsoft/cll/android/EventSender;->NO_HTTPS_CONN:Ljava/lang/String;

    .line 28
    const-string v0, "AndroidCll-EventSender"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventSender;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/microsoft/cll/android/EventSender;->endpoint:Ljava/net/URL;

    .line 36
    iput-object p2, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 37
    iput-object p3, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 38
    return-void
.end method

.method private getTime()J
    .registers 3

    .prologue
    .line 277
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
.method protected openConnection(IZLcom/microsoft/cll/android/TicketHeaders;)Ljava/net/HttpURLConnection;
    .registers 14
    .param p1, "length"    # I
    .param p2, "compressed"    # Z
    .param p3, "ticketHeaders"    # Lcom/microsoft/cll/android/TicketHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 154
    const-string v5, ""

    .line 155
    .local v5, "ticketString":Ljava/lang/String;
    if-eqz p3, :cond_1

    iget-object v6, p3, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 158
    const/4 v3, 0x1

    .line 159
    .local v3, "first":Z
    iget-object v6, p3, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 168
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\"=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    const/4 v3, 0x0

    .line 170
    goto :goto_0

    .line 174
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "first":Z
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSS\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 175
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 178
    iget-object v6, p0, Lcom/microsoft/cll/android/EventSender;->endpoint:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 181
    .local v0, "connection":Ljava/net/URLConnection;
    instance-of v6, v0, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_4

    move-object v4, v0

    .line 183
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 184
    .local v4, "httpsConnection":Ljava/net/HttpURLConnection;
    sget-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 185
    sget-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 186
    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 187
    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 188
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 190
    const-string v6, "POST"

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    const-string v6, "Content-Type"

    const-string v7, "application/x-json-stream; charset=utf-8"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v6, "X-UploadTime"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v6, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz p2, :cond_2

    .line 198
    const-string v6, "Accept"

    const-string v7, "application/json"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip, deflate"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v6, "Content-Encoding"

    const-string v7, "deflate"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_2
    const-string v6, ""

    if-eq v5, v6, :cond_3

    .line 206
    const-string v6, "X-Tickets"

    invoke-virtual {v4, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v6, "X-AuthXToken"

    iget-object v7, p3, Lcom/microsoft/cll/android/TicketHeaders;->authXToken:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v6, p3, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 212
    const-string v6, "X-AuthMsaDeviceTicket"

    iget-object v7, p3, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_3
    return-object v4

    .line 220
    .end local v4    # "httpsConnection":Ljava/net/HttpURLConnection;
    :cond_4
    iget-object v6, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    .line 221
    new-instance v6, Ljava/io/IOException;

    const-string v7, "URL didn\'t return HttpsUrlConnection instance."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected processResponseBody(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 3
    .param p1, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    .registers 11
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "parseJson"    # Z

    .prologue
    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v4, "responseBuilder":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-EventSender"

    const-string v7, "Couldn\'t read response body"

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    if-eqz p2, :cond_1

    .line 255
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "rej"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 257
    .local v3, "rejectCount":I
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v5, v3}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementRejectDropCount(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 267
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "rejectCount":I
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-EventSender"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 258
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-EventSender"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-EventSender"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendEvent([BZLcom/microsoft/cll/android/TicketHeaders;)I
    .registers 23
    .param p1, "body"    # [B
    .param p2, "compressed"    # Z
    .param p3, "ticketHeaders"    # Lcom/microsoft/cll/android/TicketHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/16 v11, 0x1f4

    .line 54
    .local v11, "responseCode":I
    const/4 v9, 0x0

    .line 55
    .local v9, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 57
    .local v8, "errorStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v15}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpAttempts()V

    .line 58
    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/microsoft/cll/android/EventSender;->openConnection(IZLcom/microsoft/cll/android/TicketHeaders;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 62
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v16, "AndroidCll-EventSender"

    const-string v17, "Error connecting."

    invoke-interface/range {v15 .. v17}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 72
    .local v14, "stream":Ljava/io/OutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 73
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 74
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v16, "AndroidCll-EventSender"

    const-string v17, "Error writing data"

    invoke-interface/range {v15 .. v17}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide v12

    .line 90
    .local v12, "start":J
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v11

    .line 98
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 100
    if-eqz v9, :cond_0

    .line 102
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 103
    .local v10, "reader":Ljava/io/BufferedReader;
    const/16 v15, 0xc8

    if-ne v11, v15, :cond_4

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 119
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    if-eqz v9, :cond_1

    .line 121
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_1
    if-eqz v8, :cond_2

    .line 126
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 129
    :cond_2
    const/16 v15, 0x1f4

    if-lt v11, v15, :cond_3

    const/16 v15, 0x258

    if-ge v11, v15, :cond_3

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v16, "AndroidCll-EventSender"

    const-string v17, "Bad Response Code"

    invoke-interface/range {v15 .. v17}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    .line 135
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide v16

    sub-long v6, v16, v12

    .line 136
    .local v6, "diff":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    long-to-int v0, v6

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/microsoft/cll/android/ClientTelemetry;->SetAvgVortexLatencyMs(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    long-to-int v0, v6

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/microsoft/cll/android/ClientTelemetry;->SetMaxVortexLatencyMs(I)V

    .line 140
    return v11

    .line 66
    .end local v6    # "diff":J
    .end local v12    # "start":J
    .end local v14    # "stream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v16, v0

    const-string v17, "AndroidCll-EventSender"

    const-string v18, "Error connecting."

    invoke-interface/range {v16 .. v18}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw v15

    .line 78
    :catchall_1
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v16, v0

    const-string v17, "AndroidCll-EventSender"

    const-string v18, "Error writing data"

    invoke-interface/range {v16 .. v18}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw v15

    .line 103
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "start":J
    .restart local v14    # "stream":Ljava/io/OutputStream;
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 106
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 108
    .local v5, "e2":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    .line 110
    if-eqz v8, :cond_0

    .line 112
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    const/16 v15, 0x190

    if-ne v11, v15, :cond_8

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 119
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v15

    if-eqz v9, :cond_5

    .line 121
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_5
    if-eqz v8, :cond_6

    .line 126
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 129
    :cond_6
    const/16 v16, 0x1f4

    move/from16 v0, v16

    if-lt v11, v0, :cond_7

    const/16 v16, 0x258

    move/from16 v0, v16

    if-ge v11, v0, :cond_7

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v16, v0

    const-string v17, "AndroidCll-EventSender"

    const-string v18, "Bad Response Code"

    invoke-interface/range {v16 .. v18}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    .line 135
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide v16

    sub-long v6, v16, v12

    .line 136
    .restart local v6    # "diff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v16, v0

    long-to-int v0, v6

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/microsoft/cll/android/ClientTelemetry;->SetAvgVortexLatencyMs(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v16, v0

    long-to-int v0, v6

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/microsoft/cll/android/ClientTelemetry;->SetMaxVortexLatencyMs(I)V

    throw v15

    .line 113
    .end local v6    # "diff":J
    .restart local v5    # "e2":Ljava/io/IOException;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_8
    const/4 v15, 0x0

    goto :goto_3

    .line 92
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v15

    goto/16 :goto_0
.end method
