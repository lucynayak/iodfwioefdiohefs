.class public Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MasterPrecedenceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
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
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder$1;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder$1;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->MasterPrecedenceComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    return-void
.end method


# virtual methods
.method public getFirstInstallTime(Ljava/lang/String;)J
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    return-wide v0
.end method

.method public getOrderedSsoServices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getTrustedSsoServices()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->MasterPrecedenceComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available trusted/ordered SSO services: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSelfSsoService()Lcom/microsoft/onlineid/internal/sso/SsoService;
    .registers 8

    new-instance v6, Lcom/microsoft/onlineid/internal/sso/SsoService;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sso/SsoService;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    return-object v6
.end method

.method public getSsoService(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/sso/SsoService;
    .registers 5

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrustedSsoServices()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.microsoft.msa.action.SSO_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.microsoft.msa.service.sso_version"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->_signatureVerifier:Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;

    invoke-virtual {v4, v3}, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->isTrusted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowing SSO with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it is not trusted."

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-gt v6, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowing  SSO with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because its SSO version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v10, Lcom/microsoft/onlineid/internal/sso/SsoService;

    const-string v4, "com.microsoft.msa.service.sdk_version"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getFirstInstallTime(Ljava/lang/String;)J

    move-result-wide v8

    move-object v4, v10

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/microsoft/onlineid/internal/sso/SsoService;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find package when querying for first install time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDK"

    const-string v4, "Total trusted SSO services"

    invoke-interface {v0, v3, v4, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-object v1
.end method
