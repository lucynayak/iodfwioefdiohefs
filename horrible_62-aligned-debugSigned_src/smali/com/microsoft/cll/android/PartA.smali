.class public abstract Lcom/microsoft/cll/android/PartA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final appExt:Lcom/microsoft/telemetry/extensions/app;

.field public appId:Ljava/lang/String;

.field public appVer:Ljava/lang/String;

.field private correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

.field private final csVer:Ljava/lang/String;

.field public final deviceExt:Lcom/microsoft/telemetry/extensions/device;

.field private epoch:J

.field private flags:J

.field private final hexArray:[C

.field public final iKey:Ljava/lang/String;

.field public final logger:Lcom/microsoft/cll/android/ILogger;

.field public final osExt:Lcom/microsoft/telemetry/extensions/os;

.field public osName:Ljava/lang/String;

.field public osVer:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private final salt:Ljava/lang/String;

.field public final seqCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private serializer:Lcom/microsoft/cll/android/EventSerializer;

.field public uniqueId:Ljava/lang/String;

.field private useLegacyCS:Z

.field public final userExt:Lcom/microsoft/telemetry/extensions/user;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/CorrelationVector;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.1"

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->csVer:Ljava/lang/String;

    const-string v0, "AndroidCll-PartA"

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->TAG:Ljava/lang/String;

    const-string v0, "oRq=MAHHHC~6CCe|JfEqRZ+gc0ESI||g2Jlb^PYjc5UYN2P 27z_+21xxd2n"

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->salt:Ljava/lang/String;

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->hexArray:[C

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/PartA;->useLegacyCS:Z

    iput-object p1, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    iput-object p2, p0, Lcom/microsoft/cll/android/PartA;->iKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/microsoft/cll/android/PartA;->seqCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Lcom/microsoft/cll/android/EventSerializer;

    invoke-direct {p2, p1}, Lcom/microsoft/cll/android/EventSerializer;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    iput-object p2, p0, Lcom/microsoft/cll/android/PartA;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    new-instance p1, Lcom/microsoft/telemetry/extensions/user;

    invoke-direct {p1}, Lcom/microsoft/telemetry/extensions/user;-><init>()V

    iput-object p1, p0, Lcom/microsoft/cll/android/PartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    new-instance p1, Lcom/microsoft/telemetry/extensions/device;

    invoke-direct {p1}, Lcom/microsoft/telemetry/extensions/device;-><init>()V

    iput-object p1, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    new-instance p1, Lcom/microsoft/telemetry/extensions/os;

    invoke-direct {p1}, Lcom/microsoft/telemetry/extensions/os;-><init>()V

    iput-object p1, p0, Lcom/microsoft/cll/android/PartA;->osExt:Lcom/microsoft/telemetry/extensions/os;

    new-instance p1, Lcom/microsoft/telemetry/extensions/app;

    invoke-direct {p1}, Lcom/microsoft/telemetry/extensions/app;-><init>()V

    iput-object p1, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/microsoft/cll/android/PartA;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/cll/android/PartA;->epoch:J

    return-void
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .registers 8

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/microsoft/cll/android/PartA;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private createExtensions(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/telemetry/Extension;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->osExt:Lcom/microsoft/telemetry/extensions/os;

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/microsoft/telemetry/extensions/android;

    invoke-direct {v1}, Lcom/microsoft/telemetry/extensions/android;-><init>()V

    const-string v2, "3.2.2"

    invoke-virtual {v1, v2}, Lcom/microsoft/telemetry/extensions/android;->setLibVer(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/microsoft/telemetry/extensions/android;->setTickets(Ljava/util/List;)V

    :cond_0
    const-string p1, "android"

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {p1}, Lcom/microsoft/telemetry/extensions/app;->getExpId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {p1}, Lcom/microsoft/telemetry/extensions/app;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private getDateTime()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFlags(Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    sget-object v3, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    if-eq v2, v3, :cond_0

    iget v2, v2, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->id:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/microsoft/cll/android/EventEnums$Latency;->id:I

    int-to-long v2, p1

    or-long/2addr v0, v2

    iget p1, p2, Lcom/microsoft/cll/android/EventEnums$Persistence;->id:I

    int-to-long p1, p1

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private getHighestSensitivityLevel(Ljava/util/EnumSet;)Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getSeqNum(Ljava/util/EnumSet;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)J"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->seqCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method private populateSerializedEvent(Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;DLjava/lang/String;)Lcom/microsoft/cll/android/SerializedEvent;
    .registers 7

    new-instance p6, Lcom/microsoft/cll/android/SerializedEvent;

    invoke-direct {p6}, Lcom/microsoft/cll/android/SerializedEvent;-><init>()V

    invoke-virtual {p6, p1}, Lcom/microsoft/cll/android/SerializedEvent;->setSerializedData(Ljava/lang/String;)V

    invoke-virtual {p6, p4, p5}, Lcom/microsoft/cll/android/SerializedEvent;->setSampleRate(D)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {p1}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/microsoft/cll/android/SerializedEvent;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p6, p3}, Lcom/microsoft/cll/android/SerializedEvent;->setPersistence(Lcom/microsoft/cll/android/EventEnums$Persistence;)V

    invoke-virtual {p6, p2}, Lcom/microsoft/cll/android/SerializedEvent;->setLatency(Lcom/microsoft/cll/android/EventEnums$Latency;)V

    return-object p6
.end method

.method private scrubPII(Lcom/microsoft/telemetry/Envelope;Ljava/util/EnumSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Envelope;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/microsoft/cll/android/PartA;->getHighestSensitivityLevel(Ljava/util/EnumSet;)Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    move-result-object p2

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    if-eq p2, v0, :cond_7

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/telemetry/extensions/user;

    new-instance v2, Lcom/microsoft/telemetry/extensions/user;

    invoke-direct {v2}, Lcom/microsoft/telemetry/extensions/user;-><init>()V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/user;->getLocalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/user;->getAuthId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/telemetry/extensions/user;->setAuthId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/user;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/telemetry/extensions/user;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/Extension;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/microsoft/telemetry/Extension;->setVer(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v0

    const-string v2, "device"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/telemetry/extensions/device;

    new-instance v3, Lcom/microsoft/telemetry/extensions/device;

    invoke-direct {v3}, Lcom/microsoft/telemetry/extensions/device;-><init>()V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/Extension;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/telemetry/Extension;->setVer(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/device;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/telemetry/extensions/device;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/device;->getAuthId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/telemetry/extensions/device;->setAuthId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/device;->getAuthSecId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/telemetry/extensions/device;->setAuthSecId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/device;->getDeviceClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/microsoft/telemetry/extensions/device;->setDeviceClass(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v0

    const-string v3, "app"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/telemetry/extensions/app;

    new-instance v4, Lcom/microsoft/telemetry/extensions/app;

    invoke-direct {v4}, Lcom/microsoft/telemetry/extensions/app;-><init>()V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/app;->getExpId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/telemetry/extensions/app;->setExpId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/app;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    if-ne p2, v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/telemetry/extensions/user;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/telemetry/extensions/device;

    const-string v1, "r:"

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {p2, v0}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iget-boolean p2, p2, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Lcom/microsoft/telemetry/Envelope;->setCV(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Lcom/microsoft/telemetry/Envelope;->setEpoch(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/telemetry/Envelope;->setSeqNum(J)V

    return-void

    :cond_4
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    if-ne p2, v0, :cond_7

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/telemetry/extensions/user;

    const-string v0, "d:"

    .line 3
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/telemetry/extensions/user;

    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/user;->getLocalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/telemetry/extensions/device;

    .line 5
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v2}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/telemetry/extensions/app;

    .line 7
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/app;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iget-boolean p2, p2, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getCV()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/telemetry/Envelope;->setCV(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getEpoch()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/telemetry/Envelope;->setEpoch(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private setBaseType(Lcom/microsoft/telemetry/Base;)V
    .registers 4

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/microsoft/telemetry/Data;

    invoke-virtual {v0}, Lcom/microsoft/telemetry/Data;->getBaseData()Lcom/microsoft/telemetry/Domain;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/telemetry/Domain;->QualifiedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/microsoft/telemetry/Base;->setBaseType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCll-PartA"

    const-string v1, "This event doesn\'t extend data"

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public HashStringSha256(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    const-string p1, "oRq=MAHHHC~6CCe|JfEqRZ+gc0ESI||g2Jlb^PYjc5UYN2P 27z_+21xxd2n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/PartA;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract PopulateConstantValues()V
.end method

.method public getAppUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/app;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public populate(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/cll/android/SerializedEvent;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/cll/android/SerializedEvent;"
        }
    .end annotation

    move-object v9, p0

    move-object v1, p1

    invoke-static/range {p1 .. p2}, Lcom/microsoft/cll/android/SettingsStore;->getLatencyForEvent(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;)Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/microsoft/cll/android/SettingsStore;->getPersistenceForEvent(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Persistence;)Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-static {p1, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSensitivityForEvent(Lcom/microsoft/telemetry/Base;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v5

    move-wide/from16 v2, p5

    invoke-static {p1, v2, v3}, Lcom/microsoft/cll/android/SettingsStore;->getSampleRateForEvent(Lcom/microsoft/telemetry/Base;D)D

    move-result-wide v12

    iget-boolean v0, v9, Lcom/microsoft/cll/android/PartA;->useLegacyCS:Z

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, v10

    move-object v4, v11

    move-wide v6, v12

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/cll/android/PartA;->populateLegacyEnvelope(Lcom/microsoft/telemetry/Base;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/telemetry/cs2/Envelope;

    move-result-object v0

    iget-object v1, v9, Lcom/microsoft/cll/android/PartA;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    invoke-virtual {v1, v0}, Lcom/microsoft/cll/android/EventSerializer;->serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/telemetry/cs2/Envelope;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v10

    move-object/from16 p4, v11

    move-wide/from16 p5, v12

    move-object/from16 p7, v0

    :goto_0
    invoke-direct/range {p1 .. p7}, Lcom/microsoft/cll/android/PartA;->populateSerializedEvent(Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;DLjava/lang/String;)Lcom/microsoft/cll/android/SerializedEvent;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v9, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, v10

    move-object v4, v11

    move-wide v6, v12

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/cll/android/PartA;->populateEnvelope(Lcom/microsoft/telemetry/Base;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/telemetry/Envelope;

    move-result-object v0

    iget-object v1, v9, Lcom/microsoft/cll/android/PartA;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    invoke-virtual {v1, v0}, Lcom/microsoft/cll/android/EventSerializer;->serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v1

    move-object p1, p0

    move-object/from16 p2, v0

    move-object/from16 p3, v10

    move-object/from16 p4, v11

    move-wide/from16 p5, v12

    move-object/from16 p7, v1

    goto :goto_0
.end method

.method public populateEnvelope(Lcom/microsoft/telemetry/Base;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/telemetry/Envelope;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Ljava/lang/String;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/telemetry/Envelope;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/telemetry/Envelope;

    invoke-direct {v0}, Lcom/microsoft/telemetry/Envelope;-><init>()V

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/PartA;->setBaseType(Lcom/microsoft/telemetry/Base;)V

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setVer(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/cll/android/PartA;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setTime(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p6, p7}, Lcom/microsoft/telemetry/Envelope;->setPopSample(D)V

    iget-wide p6, p0, Lcom/microsoft/cll/android/PartA;->epoch:J

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Lcom/microsoft/telemetry/Envelope;->setEpoch(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/microsoft/cll/android/PartA;->getSeqNum(Ljava/util/EnumSet;)J

    move-result-wide p6

    invoke-virtual {v0, p6, p7}, Lcom/microsoft/telemetry/Envelope;->setSeqNum(J)V

    iget-object p6, p0, Lcom/microsoft/cll/android/PartA;->osName:Ljava/lang/String;

    invoke-virtual {v0, p6}, Lcom/microsoft/telemetry/Envelope;->setOs(Ljava/lang/String;)V

    iget-object p6, p0, Lcom/microsoft/cll/android/PartA;->osVer:Ljava/lang/String;

    invoke-virtual {v0, p6}, Lcom/microsoft/telemetry/Envelope;->setOsVer(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/Envelope;->setData(Lcom/microsoft/telemetry/Base;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/Envelope;->setAppId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appVer:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/Envelope;->setAppVer(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iget-boolean p1, p1, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/microsoft/telemetry/Envelope;->setCV(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p3, p4, p5}, Lcom/microsoft/cll/android/PartA;->getFlags(Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/telemetry/Envelope;->setFlags(J)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->iKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/Envelope;->setIKey(Ljava/lang/String;)V

    invoke-direct {p0, p8}, Lcom/microsoft/cll/android/PartA;->createExtensions(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/Envelope;->setExt(Ljava/util/Map;)V

    invoke-direct {p0, v0, p5}, Lcom/microsoft/cll/android/PartA;->scrubPII(Lcom/microsoft/telemetry/Envelope;Ljava/util/EnumSet;)V

    return-object v0
.end method

.method public populateLegacyEnvelope(Lcom/microsoft/telemetry/Base;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/telemetry/cs2/Envelope;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Ljava/lang/String;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/telemetry/cs2/Envelope;"
        }
    .end annotation

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iget-boolean v0, v0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "cV"

    invoke-virtual {p8, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p2, Lcom/microsoft/telemetry/cs2/Envelope;

    invoke-direct {p2}, Lcom/microsoft/telemetry/cs2/Envelope;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/microsoft/telemetry/cs2/Envelope;->setVer(I)V

    invoke-direct {p0}, Lcom/microsoft/cll/android/PartA;->getDateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/telemetry/cs2/Envelope;->setTime(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/microsoft/telemetry/cs2/Envelope;->setName(Ljava/lang/String;)V

    invoke-virtual {p2, p6, p7}, Lcom/microsoft/telemetry/cs2/Envelope;->setSampleRate(D)V

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p0, Lcom/microsoft/cll/android/PartA;->epoch:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ":"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Lcom/microsoft/cll/android/PartA;->getSeqNum(Ljava/util/EnumSet;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Lcom/microsoft/telemetry/cs2/Envelope;->setSeq(Ljava/lang/String;)V

    iget-object p6, p0, Lcom/microsoft/cll/android/PartA;->osName:Ljava/lang/String;

    invoke-virtual {p2, p6}, Lcom/microsoft/telemetry/cs2/Envelope;->setOs(Ljava/lang/String;)V

    iget-object p6, p0, Lcom/microsoft/cll/android/PartA;->osVer:Ljava/lang/String;

    invoke-virtual {p2, p6}, Lcom/microsoft/telemetry/cs2/Envelope;->setOsVer(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->setData(Lcom/microsoft/telemetry/Base;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->setAppId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appVer:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->setAppVer(Ljava/lang/String;)V

    invoke-virtual {p2, p8}, Lcom/microsoft/telemetry/cs2/Envelope;->setTags(Ljava/util/Map;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/microsoft/cll/android/PartA;->getFlags(Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/microsoft/telemetry/cs2/Envelope;->setFlags(J)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->iKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->setIKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    invoke-virtual {p1}, Lcom/microsoft/telemetry/extensions/user;->getLocalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->setUserId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {p1}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->setDeviceId(Ljava/lang/String;)V

    return-object p2
.end method

.method public abstract setAppInfo()V
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {p1, v0}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "^((c:)|(i:)|(w:)).*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {p1, v0}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v0, "AndroidCll-PartA"

    const-string v1, "The userId supplied does not match the required format which requires the appId to start with \'c:\', \'i:\', or \'w:\'."

    invoke-interface {p1, v0, v1}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public abstract setDeviceInfo()V
.end method

.method public setExpId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/extensions/app;->setExpId(Ljava/lang/String;)V

    return-void
.end method

.method public abstract setOs()V
.end method

.method public abstract setUserId()V
.end method

.method public useLegacyCS(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/cll/android/PartA;->useLegacyCS:Z

    return-void
.end method
