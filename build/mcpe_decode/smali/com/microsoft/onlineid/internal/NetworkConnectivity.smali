.class public Lcom/microsoft/onlineid/internal/NetworkConnectivity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getMobileNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile4G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile3G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile2G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
    .locals 2

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 p0, 0x7

    if-eq v0, p0, :cond_2

    const/16 p0, 0x9

    if-eq v0, p0, :cond_1

    sget-object p0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Unknown:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Ethernet:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Bluetooth:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->WiFi:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getMobileNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->None:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object p0
.end method

.method public static getNetworkTypeForAnalytics(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$1;->$SwitchMap$com$microsoft$onlineid$internal$NetworkConnectivity$NetworkType:[I

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "Bluetooth"

    return-object p0

    :pswitch_1
    const-string p0, "Ethernet"

    return-object p0

    :pswitch_2
    const-string p0, "Mobile"

    return-object p0

    :pswitch_3
    const-string p0, "WiFi"

    return-object p0

    :pswitch_4
    const-string p0, "Not connected"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkTypeForServerTelemetry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$1;->$SwitchMap$com$microsoft$onlineid$internal$NetworkConnectivity$NetworkType:[I

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "4G"

    return-object p0

    :cond_1
    const-string p0, "3G"

    return-object p0

    :cond_2
    const-string p0, "2G"

    return-object p0

    :cond_3
    const-string p0, "WIFI"

    return-object p0

    :cond_4
    const-string p0, "NONE"

    return-object p0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static hasInternetConnectivity(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
