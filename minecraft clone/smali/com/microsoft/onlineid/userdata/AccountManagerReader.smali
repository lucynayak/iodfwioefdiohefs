.class public Lcom/microsoft/onlineid/userdata/AccountManagerReader;
.super Ljava/lang/Object;
.source "AccountManagerReader.java"


# instance fields
.field private final _accountManager:Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;-><init>(Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;)V
    .registers 2
    .param p1, "accountManagerWrapper"    # Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->_accountManager:Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    .line 46
    return-void
.end method


# virtual methods
.method public getDeviceEmail()Ljava/lang/String;
    .registers 9

    .prologue
    .line 94
    iget-object v1, p0, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->_accountManager:Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 96
    .local v0, "googleAccounts":[Landroid/accounts/Account;
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v2

    const-string v3, "User data"

    const-string v4, "Google email"

    array-length v1, v0

    if-nez v1, :cond_0

    const-string v1, "Does not exist in Account Manager"

    :goto_0
    invoke-interface {v2, v3, v4, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 103
    array-length v1, v0

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x0

    .line 116
    :goto_1
    return-object v1

    .line 96
    :cond_0
    const-string v1, "Exists in Account Manager"

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    const-string v2, "User data"

    const-string v3, "Google email count"

    const-string v4, "Exists in Account Manager"

    array-length v5, v0

    int-to-long v6, v5

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 109
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 116
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public getEmails()Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 55
    .local v1, "accountNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->_accountManager:Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 56
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 58
    .local v0, "account":Landroid/accounts/Account;
    sget-object v5, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    const-string v4, "User data"

    const-string v5, "Unique email count"

    const-string v6, "Exists in Account Manager"

    .line 68
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 64
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 70
    return-object v1
.end method

.method public getEmailsAsJsonArray()Ljava/lang/String;
    .registers 6

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->getEmails()Ljava/util/Set;

    move-result-object v1

    .line 80
    .local v1, "accountNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v2, "json":Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 86
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
