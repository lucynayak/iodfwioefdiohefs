.class public Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;
.super Ljava/lang/Object;
.source "ServiceFinder.java"


# static fields
.field public static final MasterPrecedenceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ">;"
        }
    .end annotation
.end field

.field public static final SdkVersionMetaDataName:Ljava/lang/String; = "com.microsoft.msa.service.sdk_version"

.field public static final SsoVersionMetaDataName:Ljava/lang/String; = "com.microsoft.msa.service.sso_version"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder$1;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder$1;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->MasterPrecedenceComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_applicationContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    .line 74
    return-void
.end method


# virtual methods
.method protected getFirstInstallTime(Ljava/lang/String;)J
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    return-wide v0
.end method

.method public getOrderedSsoServices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getTrustedSsoServices()Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "orderedSsoServices":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/onlineid/internal/sso/SsoService;>;"
    sget-object v1, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->MasterPrecedenceComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available trusted/ordered SSO services: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method protected getSelfSsoService()Lcom/microsoft/onlineid/internal/sso/SsoService;
    .registers 7

    .prologue
    .line 161
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/SsoService;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sso/SsoService;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    return-object v0
.end method

.method public getSsoService(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/sso/SsoService;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "orderedSsoServices":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/onlineid/internal/sso/SsoService;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/internal/sso/SsoService;

    .line 179
    .local v1, "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    .end local v0    # "orderedSsoServices":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/onlineid/internal/sso/SsoService;>;"
    .end local v1    # "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTrustedSsoServices()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.microsoft.msa.action.SSO_SERVICE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v8, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 89
    .local v10, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v11, "ssoServices":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/onlineid/internal/sso/SsoService;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 92
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 93
    .local v1, "packageName":Ljava/lang/String;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 94
    .local v9, "metadata":Landroid/os/Bundle;
    const-string v0, "com.microsoft.msa.service.sso_version"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, "ssoVersion":I
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->isTrusted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowing SSO with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " because it is not trusted."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x1

    if-gt v2, v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowing  SSO with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " because its SSO version is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/SsoService;

    const-string v3, "com.microsoft.msa.service.sdk_version"

    .line 113
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getFirstInstallTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sso/SsoService;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 110
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v6

    .line 118
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find package when querying for first install time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "ssoVersion":I
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "metadata":Landroid/os/Bundle;
    :cond_2
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v3, "SDK"

    const-string v4, "Total trusted SSO services"

    .line 125
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-interface {v0, v3, v4, v5}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 127
    return-object v11
.end method
