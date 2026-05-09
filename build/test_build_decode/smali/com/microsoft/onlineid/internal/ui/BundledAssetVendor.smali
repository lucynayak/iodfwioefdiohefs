.class public Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;


# static fields
.field private static final AccessControlAllowOriginAllValue:Ljava/lang/String; = "*"

.field private static final AccessControlAllowOriginKey:Ljava/lang/String; = "Access-Control-Allow-Origin"

.field private static final AccessControlAllowOriginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HttpsScheme:Ljava/lang/String; = "https://"

.field private static Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor; = null

.field public static final ManifestAssetPath:Ljava/lang/String; = "com.microsoft.onlineid.serverAssetBundle.path"

.field public static final ManifestAssetVersion:Ljava/lang/String; = "com.microsoft.onlineid.serverAssetBundle.version"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _assetManager:Landroid/content/res/AssetManager;

.field private _countLock:Ljava/lang/Object;

.field private volatile _hitCount:I

.field private volatile _missCount:I

.field private _pathToAssetBundle:Ljava/lang/String;

.field private _version:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->AccessControlAllowOriginMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getApplicationContextFromContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    return-void
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getApplicationContextFromContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;
    .locals 3

    const-class v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v1, p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->initialize()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getApplicationContextFromContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x0

    const-string v2, "Replacing previous instance with new instance for provided different context."

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    monitor-enter v0

    :try_start_1
    new-instance v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v1, p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->initialize()V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    return-object p0
.end method

.method private initialize()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_assetManager:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    iput v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_version:Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, "com.microsoft.onlineid.serverAssetBundle.path"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    const-string v1, "com.microsoft.onlineid.serverAssetBundle.version"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Package name not found"

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public buildLocalAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsset(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->buildLocalAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/Mimetype;->findFromFilename(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Mimetype;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/ui/Mimetype;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;->FONT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->AccessControlAllowOriginMap:Ljava/util/Map;

    invoke-virtual {v4, v2}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    :cond_3
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BundledAssetVendor: Proxied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->incrementHitCount()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    nop

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundledAssetVendor: MISS: No proxied asset found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->incrementMissCount()V

    return-object v1
.end method

.method public getProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget p1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget p1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_version:Ljava/lang/String;

    return-object p1
.end method

.method public handlesProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Z
    .locals 2

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public incrementHitCount()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementMissCount()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHitCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMissCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->setMissCount(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->setHitCount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not convert string to integer: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
