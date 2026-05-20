.class public Lcom/microsoft/cll/android/SerializedEvent;
.super Ljava/lang/Object;
.source "SerializedEvent.java"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private latency:Lcom/microsoft/cll/android/EventEnums$Latency;

.field private persistence:Lcom/microsoft/cll/android/EventEnums$Persistence;

.field private sampleRate:D

.field private serializedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatency()Lcom/microsoft/cll/android/EventEnums$Latency;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->latency:Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object v0
.end method

.method public getPersistence()Lcom/microsoft/cll/android/EventEnums$Persistence;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->persistence:Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object v0
.end method

.method public getSampleRate()D
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->sampleRate:D

    return-wide v0
.end method

.method public getSerializedData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/microsoft/cll/android/SerializedEvent;->serializedData:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->deviceId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setLatency(Lcom/microsoft/cll/android/EventEnums$Latency;)V
    .registers 2
    .param p1, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->latency:Lcom/microsoft/cll/android/EventEnums$Latency;

    .line 32
    return-void
.end method

.method public setPersistence(Lcom/microsoft/cll/android/EventEnums$Persistence;)V
    .registers 2
    .param p1, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->persistence:Lcom/microsoft/cll/android/EventEnums$Persistence;

    .line 40
    return-void
.end method

.method public setSampleRate(D)V
    .registers 4
    .param p1, "sampleRate"    # D

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->sampleRate:D

    .line 48
    return-void
.end method

.method public setSerializedData(Ljava/lang/String;)V
    .registers 2
    .param p1, "serializedData"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/microsoft/cll/android/SerializedEvent;->serializedData:Ljava/lang/String;

    .line 24
    return-void
.end method
