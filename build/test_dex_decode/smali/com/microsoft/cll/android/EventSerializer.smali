.class public Lcom/microsoft/cll/android/EventSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EventSerializer"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventSerializer;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/cll/android/EventSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    return-void
.end method


# virtual methods
.method public serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;
    .locals 3

    const-string v0, "EventSerializer"

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {p1, v1}, Lcom/microsoft/telemetry/IJsonSerializable;->serialize(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/microsoft/cll/android/EventSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "IOException when serializing"

    invoke-interface {p1, v0, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/cll/android/EventSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {v1, v0, p1}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
