.class public Lcom/microsoft/onlineid/userdata/SignUpData;
.super Ljava/lang/Object;
.source "SignUpData.java"


# instance fields
.field private final _accountManagerReader:Lcom/microsoft/onlineid/userdata/AccountManagerReader;

.field private final _fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

.field private final _meContactReader:Lcom/microsoft/onlineid/userdata/MeContactReader;

.field private final _telephonyManagerReader:Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/microsoft/onlineid/userdata/AccountManagerReader;

    invoke-direct {v1, p1}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/microsoft/onlineid/userdata/MeContactReader;

    invoke-direct {v2, p1}, Lcom/microsoft/onlineid/userdata/MeContactReader;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/onlineid/userdata/SignUpData;-><init>(Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;Lcom/microsoft/onlineid/userdata/AccountManagerReader;Lcom/microsoft/onlineid/userdata/MeContactReader;)V

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;Lcom/microsoft/onlineid/userdata/AccountManagerReader;Lcom/microsoft/onlineid/userdata/MeContactReader;)V
    .registers 5
    .param p1, "telephonyManagerReader"    # Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;
    .param p2, "accountManagerReader"    # Lcom/microsoft/onlineid/userdata/AccountManagerReader;
    .param p3, "meContactReader"    # Lcom/microsoft/onlineid/userdata/MeContactReader;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_telephonyManagerReader:Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    .line 48
    iput-object p2, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_accountManagerReader:Lcom/microsoft/onlineid/userdata/AccountManagerReader;

    .line 49
    iput-object p3, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_meContactReader:Lcom/microsoft/onlineid/userdata/MeContactReader;

    .line 51
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_meContactReader:Lcom/microsoft/onlineid/userdata/MeContactReader;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/MeContactReader;->getFullName()Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    .line 52
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_telephonyManagerReader:Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_accountManagerReader:Lcom/microsoft/onlineid/userdata/AccountManagerReader;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->getDeviceEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_telephonyManagerReader:Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_meContactReader:Lcom/microsoft/onlineid/userdata/MeContactReader;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/MeContactReader;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
