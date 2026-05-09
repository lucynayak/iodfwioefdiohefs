.class public Lcom/mojang/minecraftpe/HardwareInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;
    }
.end annotation


# static fields
.field private static final cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getCPUInfo()Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    move-result-object v0

    sput-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "Android "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUFeatures()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    const-string v1, "Features"

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUInfo()Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "(\\w*)\\s*:\\s([^\\n]*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance v1, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    invoke-direct {v1, v0, v3}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;-><init>(Ljava/util/Map;I)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "processor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    new-instance v1, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    invoke-direct {v1, v0, v3}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;-><init>(Ljava/util/Map;I)V

    return-object v1
.end method

.method public static getCPUName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    const-string v1, "Hardware"

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUType()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mojang/minecraftpe/platforms/Platform;->createPlatform(Z)Lcom/mojang/minecraftpe/platforms/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/platforms/Platform;->getABIS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModelName()Ljava/lang/String;
    .registers 5

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lz1/p;->getSpoofPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v2}, Ly1/b;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v3, :cond_1

    const-string v2, "manufacturer"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "model"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v3

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumCores()I
    .registers 1

    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getNumberCPUCores()I

    move-result v0

    return v0
.end method
