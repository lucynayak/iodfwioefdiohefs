.class public Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;
.super Ljava/lang/Object;
.source "SignatureVerifier.java"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_applicationContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_packageManager:Landroid/content/pm/PackageManager;

    .line 42
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "localApplicationContext"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_applicationContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_packageManager:Landroid/content/pm/PackageManager;

    .line 54
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 55
    return-void
.end method


# virtual methods
.method public isPackageInUid(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 131
    :cond_0
    const/4 v1, 0x0

    .line 134
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isTrusted(Ljava/lang/String;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 68
    const/4 v9, 0x1

    .line 113
    :goto_0
    return v9

    .line 73
    :cond_0
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_applicationContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object v7

    .line 74
    .local v7, "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "shouldCheckSsoCertificatesInDebug"

    invoke-virtual {v7, v9}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isSettingEnabled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 76
    const/4 v9, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v5, 0x0

    .line 82
    .local v5, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_packageManager:Landroid/content/pm/PackageManager;

    const/16 v10, 0x40

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 92
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v10, Lcom/microsoft/onlineid/sts/ServerConfig;->AndroidSsoCertificates:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v9, v10}, Lcom/microsoft/onlineid/sts/ServerConfig;->getStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/util/Set;

    move-result-object v4

    .line 93
    .local v4, "hashWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "appHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/onlineid/sts/Cryptography;->getSha256Digester()Ljava/security/MessageDigest;

    move-result-object v1

    .line 96
    .local v1, "digest":Ljava/security/MessageDigest;
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v8, v10, v9

    .line 98
    .local v8, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "hash":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 101
    const/4 v9, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "appHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v4    # "hashWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot check trust state of missing package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "message":Ljava/lang/String;
    invoke-static {v6, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v9, 0x0

    invoke-static {v9, v6}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 89
    const/4 v9, 0x0

    goto :goto_0

    .line 105
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "message":Ljava/lang/String;
    .restart local v0    # "appHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "hash":Ljava/lang/String;
    .restart local v4    # "hashWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "signature":Landroid/content/pm/Signature;
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 109
    .end local v3    # "hash":Ljava/lang/String;
    .end local v8    # "signature":Landroid/content/pm/Signature;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not trusting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " because no matching hash was found in the whitelist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Hashes for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " are: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Whitelist is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 113
    const/4 v9, 0x0

    goto/16 :goto_0
.end method
