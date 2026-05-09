.class public Lcom/microsoft/onlineid/sts/ServerConfig;
.super Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;
.source "SourceFile"


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
            "Lcom/microsoft/onlineid/internal/configuration/Setting<",
            "Ljava/util/Set<",
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
            "Lcom/microsoft/onlineid/internal/configuration/Setting<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/onlineid/internal/configuration/Setting<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final StorageName:Ljava/lang/String; = "ServerConfig"

.field public static Version:Lcom/microsoft/onlineid/internal/configuration/Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/onlineid/internal/configuration/Setting<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Setting;

    const-string v1, "ConfigVersion"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "int"

    goto :goto_0

    :cond_0
    const-string v0, "production"

    :goto_0
    new-instance v1, Lcom/microsoft/onlineid/internal/configuration/Setting;

    const-string v2, "environment"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/internal/configuration/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "live-int.com"

    goto :goto_1

    :cond_1
    const-string v0, "live.com"

    :goto_1
    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->Domain:Ljava/lang/String;

    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Setting;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cloud_pin_length"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/internal/configuration/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting;

    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Setting;

    const-string v1, "sX6CAbEo4edMwCNRCrfqA6wn3eUNMtgQ6hV3dY8cwJg="

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "AndroidSsoCerts"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/onlineid/internal/configuration/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->AndroidSsoCertificates:Lcom/microsoft/onlineid/internal/configuration/Setting;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "ServerConfig"

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->Domain:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic edit()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ServerConfig;->edit()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .registers 4

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;-><init>(Landroid/content/SharedPreferences$Editor;Lcom/microsoft/onlineid/sts/ServerConfig$1;)V

    return-object v0
.end method

.method public getBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->getBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Z

    move-result p1

    return p1
.end method

.method public getDefaultEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;
    .registers 4

    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Environment;

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/configuration/Setting;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getDefaultValue()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Environment;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-object v0
.end method

.method public getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;
    .registers 4

    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Environment;

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Environment;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-object v0
.end method

.method public getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result p1

    return p1
.end method

.method public getNgcCloudPinLength()Ljava/lang/Integer;
    .registers 2

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig;->NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->getStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getSettingName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getDefaultValue()Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Stored URL for setting "

    .line 1
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getSettingName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
