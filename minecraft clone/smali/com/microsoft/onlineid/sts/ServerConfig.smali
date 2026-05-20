.class public Lcom/microsoft/onlineid/sts/ServerConfig;
.super Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/ServerConfig$Editor;,
        Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;,
        Lcom/microsoft/onlineid/sts/ServerConfig$Int;,
        Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;
    }
.end annotation


# static fields
.field public static AndroidSsoCertificates:Lcom/microsoft/onlineid/internal/configuration/Setting; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/onlineid/internal/configuration/Setting",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DefaultConfigVersion:Ljava/lang/String; = "1"

.field private static Domain:Ljava/lang/String; = null

.field public static EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/onlineid/internal/configuration/Setting",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/onlineid/internal/configuration/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final StorageName:Ljava/lang/String; = "ServerConfig"

.field public static Version:Lcom/microsoft/onlineid/internal/configuration/Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/onlineid/internal/configuration/Setting",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Setting;

    const-string v1, "ConfigVersion"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    .line 88
    new-instance v1, Lcom/microsoft/onlineid/internal/configuration/Setting;

    const-string v2, "environment"

    .line 90
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "int"

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/internal/configuration/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    .line 95
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "live-int.com"

    :goto_1
    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->Domain:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Setting;

    const-string v1, "cloud_pin_length"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting;

    .line 105
    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Setting;

    const-string v1, "AndroidSsoCerts"

    const-string v2, "sX6CAbEo4edMwCNRCrfqA6wn3eUNMtgQ6hV3dY8cwJg="

    .line 107
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->AndroidSsoCertificates:Lcom/microsoft/onlineid/internal/configuration/Setting;

    .line 105
    return-void

    .line 90
    :cond_0
    const-string v0, "production"

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "live.com"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 334
    const-string v0, "ServerConfig"

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->Domain:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic edit()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ServerConfig;->edit()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .registers 4

    .prologue
    .line 340
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ServerConfig;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;-><init>(Landroid/content/SharedPreferences$Editor;Lcom/microsoft/onlineid/sts/ServerConfig$1;)V

    return-object v0
.end method

.method protected getBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->getBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Z

    move-result v0

    return v0
.end method

.method public getDefaultEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;
    .registers 4

    .prologue
    .line 403
    new-instance v1, Lcom/microsoft/onlineid/internal/configuration/Environment;

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    .line 404
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/configuration/Setting;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 405
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getDefaultValue()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/onlineid/internal/configuration/Environment;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-object v1
.end method

.method public getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;
    .registers 4

    .prologue
    .line 393
    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Environment;

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    .line 394
    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 395
    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Environment;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-object v0
.end method

.method public getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/Integer;>;"
    invoke-super {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v0

    return v0
.end method

.method public getNgcCloudPinLength()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 413
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-super {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->getStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;
    .registers 7
    .param p1, "setting"    # Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .prologue
    .line 377
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/ServerConfig;->_preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getSettingName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getDefaultValue()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 380
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored URL for setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getSettingName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
