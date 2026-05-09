.class public Lcom/microsoft/cll/android/SettingsStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/cll/android/SettingsStore$Settings;,
        Lcom/microsoft/cll/android/SettingsStore$UpdateListener;
    }
.end annotation


# static fields
.field public static cllSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/cll/android/SettingsStore$Settings;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static hostEventSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/high16 v2, 0xa00000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const v2, 0xea60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, "https://settings.data.microsoft.com/settings/v2.0/androidLL/app"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, "https://vortex.data.microsoft.com/collect/v1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCllSettingsAsBoolean(Lcom/microsoft/cll/android/SettingsStore$Settings;)Z
    .registers 2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I
    .registers 2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J
    .registers 3

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCllSettingsAsString(Lcom/microsoft/cll/android/SettingsStore$Settings;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLatencyForEvent(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;)Lcom/microsoft/cll/android/EventEnums$Latency;
    .registers 4

    const-string v0, "LATENCY"

    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Latency;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    :goto_1
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/microsoft/cll/android/EventEnums$Latency;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/microsoft/cll/android/EventEnums$Latency;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object p0
.end method

.method public static getPersistenceForEvent(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Persistence;)Lcom/microsoft/cll/android/EventEnums$Persistence;
    .registers 4

    const-string v0, "PERSISTENCE"

    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Persistence;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    :goto_1
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/microsoft/cll/android/EventEnums$Persistence;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/microsoft/cll/android/EventEnums$Persistence;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object p0
.end method

.method public static getSampleRateForEvent(Lcom/microsoft/telemetry/Base;D)D
    .registers 7

    const-string v0, "SAMPLERATE"

    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums;->SampleRateFromString(Ljava/lang/String;)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide v1, -0x411b074a771c970fL    # -1.0E-5

    cmpl-double v3, p1, v1

    if-gez v3, :cond_3

    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/microsoft/cll/android/EventEnums;->SampleRateFromString(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/microsoft/cll/android/EventEnums;->SampleRateFromString(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_2
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    return-wide p0

    :cond_3
    :goto_0
    return-wide p1
.end method

.method public static getSensitivityForEvent(Lcom/microsoft/telemetry/Base;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;"
        }
    .end annotation

    const-string v0, "SENSITIVITY"

    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->FromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    :goto_1
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->FromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->FromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method private static getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object p0, p0, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, v1

    :goto_0
    sget-object v1, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object v1, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/microsoft/telemetry/Base;->Attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static setUpdateListener(Lcom/microsoft/cll/android/SettingsStore$UpdateListener;)V
    .registers 1

    sput-object p0, Lcom/microsoft/cll/android/SettingsStore;->updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    return-void
.end method

.method public static updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/microsoft/cll/android/SettingsStore$UpdateListener;->OnCllSettingUpdate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static updateHostSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/microsoft/cll/android/SettingsStore$UpdateListener;->OnHostSettingUpdate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
