.class public Lcom/microsoft/cll/android/AndroidPartA;
.super Lcom/microsoft/cll/android/PartA;
.source "SourceFile"


# instance fields
.field private final DeviceTypePC:Ljava/lang/String;

.field private final DeviceTypePhone:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Landroid/content/Context;Lcom/microsoft/cll/android/CorrelationVector;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/cll/android/PartA;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/CorrelationVector;)V

    const-string p1, "AndroidCll-AndroidPartA"

    iput-object p1, p0, Lcom/microsoft/cll/android/AndroidPartA;->TAG:Ljava/lang/String;

    const-string p1, "Android.Phone"

    iput-object p1, p0, Lcom/microsoft/cll/android/AndroidPartA;->DeviceTypePhone:Ljava/lang/String;

    const-string p1, "Android.PC"

    iput-object p1, p0, Lcom/microsoft/cll/android/AndroidPartA;->DeviceTypePC:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->PopulateConstantValues()V

    return-void
.end method

.method private testRadioVersion()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public PopulateConstantValues()V
    .registers 1

    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->setDeviceInfo()V

    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->setUserId()V

    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->setAppInfo()V

    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->setOs()V

    return-void
.end method

.method public getDeviceScreenSize(III)D
    .registers 8

    int-to-double v0, p2

    int-to-double p2, p3

    div-double/2addr v0, p2

    int-to-double v2, p1

    div-double/2addr v2, p2

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public setAppInfo()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/cll/android/PartA;->appVer:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->appId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-AndroidPartA"

    const-string v2, "Could not get package name"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceInfo()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->uniqueId:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->uniqueId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->uniqueId:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->uniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->uniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-AndroidPartA"

    const-string v2, "Access Wifi State permission was not Provided. DeviceID will be blank"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/microsoft/cll/android/AndroidPartA;->testRadioVersion()Z

    move-result v0

    const-string v1, "Android.Phone"

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/extensions/device;->setDeviceClass(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v3, v2, v0}, Lcom/microsoft/cll/android/AndroidPartA;->getDeviceScreenSize(III)D

    move-result-wide v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    const-string v1, "Android.PC"

    goto :goto_2

    :goto_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->osVer:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->osExt:Lcom/microsoft/telemetry/extensions/os;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/extensions/os;->setLocale(Ljava/lang/String;)V

    return-void
.end method

.method public setOs()V
    .registers 2

    const-string v0, "Android"

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->osName:Ljava/lang/String;

    return-void
.end method

.method public setUserId()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-AndroidPartA"

    const-string v2, "Get_Accounts permission was not provided. UserID will be blank"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V

    return-void
.end method
