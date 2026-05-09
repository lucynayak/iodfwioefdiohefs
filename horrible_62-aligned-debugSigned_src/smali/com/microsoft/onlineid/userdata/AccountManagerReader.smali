.class public Lcom/microsoft/onlineid/userdata/AccountManagerReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _accountManager:Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;-><init>(Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->_accountManager:Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    return-void
.end method


# virtual methods
.method public getDeviceEmail()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->_accountManager:Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    array-length v2, v0

    const-string v3, "Exists in Account Manager"

    if-nez v2, :cond_0

    const-string v2, "Does not exist in Account Manager"

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "User data"

    const-string v5, "Google email"

    invoke-interface {v1, v4, v5, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    array-length v1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    array-length v2, v0

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "Google email count"

    invoke-interface {v1, v4, v5, v3, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->_accountManager:Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    sget-object v5, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "User data"

    const-string v4, "Unique email count"

    const-string v5, "Exists in Account Manager"

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-object v0
.end method

.method public getEmailsAsJsonArray()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->getEmails()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
