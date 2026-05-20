.class public Lcom/microsoft/onlineid/internal/Applications;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildClientAppUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/microsoft/onlineid/internal/Applications;->getFirstCertHash(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/onlineid/sts/Cryptography;->encodeBase32([B)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-app://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstCertHash(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 11

    invoke-static {}, Lcom/microsoft/onlineid/sts/Cryptography;->getShaDigester()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getAppSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object p0

    const-string v3, "isCertificateTelemetryNeeded"

    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isSettingEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logCertificates(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/microsoft/onlineid/internal/configuration/Settings;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method
