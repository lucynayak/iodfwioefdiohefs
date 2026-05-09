.class public final enum Lcom/microsoft/cll/android/SettingsStore$Settings;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/SettingsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/cll/android/SettingsStore$Settings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum LATENCY:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum PERSISTENCE:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum SAMPLERATE:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;


# direct methods
.method public static constructor <clinit>()V
    .registers 25

    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "SYNCREFRESHINTERVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v1, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v3, "QUEUEDRAININTERVAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v3, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v5, "SNAPSHOTSCHEDULEINTERVAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v5, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v7, "MAXEVENTSIZEINBYTES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v7, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v9, "MAXEVENTSPERPOST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v9, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v11, "SAMPLERATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/cll/android/SettingsStore$Settings;->SAMPLERATE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v11, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v13, "MAXFILESSPACE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v13, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v15, "UPLOADENABLED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v15, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v14, "PERSISTENCE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/cll/android/SettingsStore$Settings;->PERSISTENCE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v14, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v12, "LATENCY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/cll/android/SettingsStore$Settings;->LATENCY:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v12, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v10, "HTTPTIMEOUTINTERVAL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v10, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v8, "THREADSTOUSEWITHEXECUTOR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/cll/android/SettingsStore$Settings;->THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v8, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v6, "MAXCORRELATIONVECTORLENGTH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v6, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v4, "MAXCRITICALCANADDATTEMPTS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v4, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, "MAXRETRYPERIOD"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v2, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v6, "BASERETRYPERIOD"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v6, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v4, "CONSTANTFORRETRYPERIOD"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v4, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, "NORMALEVENTMEMORYQUEUESIZE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/cll/android/SettingsStore$Settings;->NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v2, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v6, "CLLSETTINGSURL"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v6, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v4, "HOSTSETTINGSETAG"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v4, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, "CLLSETTINGSETAG"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    new-instance v2, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v6, "VORTEXPRODURL"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v6, 0x16

    new-array v6, v6, [Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->$VALUES:[Lcom/microsoft/cll/android/SettingsStore$Settings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/SettingsStore$Settings;
    .registers 2

    const-class v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/cll/android/SettingsStore$Settings;
    .registers 1

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->$VALUES:[Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/SettingsStore$Settings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/SettingsStore$Settings;

    return-object v0
.end method
