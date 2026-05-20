.class public Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/userdata/IPhoneNumberReader;


# instance fields
.field private final _telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;-><init>(Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->_telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public getIsoCountryCode()Ljava/lang/String;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->_telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not obtain country code via getSimCountryIso(): "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Does not exist in Telephony Manager"

    goto :goto_1

    :cond_0
    const-string v2, "Exists in Telephony Manager"

    :goto_1
    const-string v3, "User data"

    const-string v4, "Country code"

    invoke-interface {v1, v3, v4, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->_telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not obtain phone number via getLine1Number(): "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Does not exist in Telephony Manager"

    goto :goto_1

    :cond_0
    const-string v2, "Exists in Telephony Manager"

    :goto_1
    const-string v3, "User data"

    const-string v4, "Mobile phone number"

    invoke-interface {v1, v3, v4, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-object v0
.end method
