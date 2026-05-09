.class public Lcom/microsoft/cll/android/BondJsonSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private final resultString:Ljava/lang/StringBuilder;

.field private final writer:Lcom/microsoft/bond/ProtocolWriter;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-EventSerializer"

    iput-object v0, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->resultString:Ljava/lang/StringBuilder;

    new-instance v1, Lcom/microsoft/cll/android/JsonProtocol;

    invoke-direct {v1, v0}, Lcom/microsoft/cll/android/JsonProtocol;-><init>(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->writer:Lcom/microsoft/bond/ProtocolWriter;

    iput-object p1, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    return-void
.end method


# virtual methods
.method public serialize(Lcom/microsoft/bond/BondSerializable;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->writer:Lcom/microsoft/bond/ProtocolWriter;

    invoke-interface {p1, v0}, Lcom/microsoft/bond/BondSerializable;->write(Lcom/microsoft/bond/ProtocolWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCll-EventSerializer"

    const-string v1, "IOException when serializing"

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->writer:Lcom/microsoft/bond/ProtocolWriter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->resultString:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method
