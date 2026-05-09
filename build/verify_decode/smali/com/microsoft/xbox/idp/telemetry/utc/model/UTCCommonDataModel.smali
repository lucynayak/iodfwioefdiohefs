.class public Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    }
.end annotation


# static fields
.field public static final DEFAULTSERVICES:Ljava/lang/String; = "none"

.field public static final EVENTVERSION:Ljava/lang/String; = "1.1"

.field public static final UNKNOWNAPP:Ljava/lang/String; = "UNKNOWN"

.field public static final UNKNOWNUSER:Ljava/lang/String; = "UNKNOWN"

.field public static accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

.field public static appName:Ljava/lang/String;

.field public static applicationSession:Ljava/util/UUID;

.field public static deviceModel:Ljava/lang/String;

.field public static netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

.field public static osLocale:Ljava/lang/String;

.field public static userId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->osLocale:Ljava/lang/String;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->applicationSession:Ljava/util/UUID;

    const-string v1, "UNKNOWN"

    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;

    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->userId:Ljava/lang/String;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccessibilityInfo()Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;
    .locals 6

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    const-string v3, "isenabled"

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "none"

    move-object v3, v2

    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, ";%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    const-string v2, "enabledservices"

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    return-object v0
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 3

    const-string v0, "UNKNOWN"

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;

    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;

    return-object v0
.end method

.method private static getAppSessionId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->applicationSession:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->applicationSession:Ljava/util/UUID;

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->applicationSession:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCommonData(I)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object p0

    return-object p0
.end method

.method public static getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
    .locals 4

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1.1"

    aput-object v3, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s.%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setEventVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getDeviceModel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setDeviceModel(Ljava/lang/String;)V

    const-string p0, "1.0"

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setXsapiVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setAppName(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getDeviceLocale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setClientLanguage(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getNetworkConnection()Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setNetwork(I)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getSandboxId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setSandboxId(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getAppSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setAppSessionId(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setUserId(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setAdditionalInfo(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getAccessibilityInfo()Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setAccessibilityInfo(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getTitleDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setTitleDeviceId(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getTitleSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setTitleSessionId(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDeviceLocale()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->osLocale:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "%s-%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->osLocale:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->osLocale:Ljava/lang/String;

    return-object v0
.end method

.method private static getDeviceModel()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->removePipes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method private static getNetworkConnection()Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->CELLULAR:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    :cond_2
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->WIFI:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    :cond_3
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->WIRED:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    :goto_0
    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    :cond_4
    :goto_1
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    return-object v0
.end method

.method private static getSandboxId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    :cond_0
    return-object v0
.end method

.method private static removePipes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "x:"

    .line 1
    invoke-static {v0, p0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sput-object p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->userId:Ljava/lang/String;

    :cond_0
    return-void
.end method
