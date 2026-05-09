.class public Lcom/microsoft/cll/android/SerializedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private latency:Lcom/microsoft/cll/android/EventEnums$Latency;

.field private persistence:Lcom/microsoft/cll/android/EventEnums$Persistence;

.field private sampleRate:D

.field private serializedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatency()Lcom/microsoft/cll/android/EventEnums$Latency;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->latency:Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object v0
.end method

.method public getPersistence()Lcom/microsoft/cll/android/EventEnums$Persistence;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->persistence:Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object v0
.end method

.method public getSampleRate()D
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->sampleRate:D

    return-wide v0
.end method

.method public getSerializedData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->serializedData:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setLatency(Lcom/microsoft/cll/android/EventEnums$Latency;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->latency:Lcom/microsoft/cll/android/EventEnums$Latency;

    return-void
.end method

.method public setPersistence(Lcom/microsoft/cll/android/EventEnums$Persistence;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->persistence:Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-void
.end method

.method public setSampleRate(D)V
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->sampleRate:D

    return-void
.end method

.method public setSerializedData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->serializedData:Ljava/lang/String;

    return-void
.end method
