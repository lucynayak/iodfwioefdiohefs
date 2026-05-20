.class public final Lm2/d;
.super Ljava/lang/Object;
.source "PackageChooser.java"


# static fields
.field public static final PKG_CLONE:Ljava/lang/String; = "jopa.triggertrash.minecraft"

.field public static final PKG_ORIGINAL:Ljava/lang/String; = "com.mojang.minecraftpe"

.field public static final PREF_KEY:Ljava/lang/String; = "injection_target"

.field public static final PREF_NAME:Ljava/lang/String; = "variable"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSavedChoice(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "variable"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "injection_target"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v0
.end method

.method public static needsDialog(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "com.mojang.minecraftpe"

    invoke-static {p0, v0}, Lm2/d;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "jopa.triggertrash.minecraft"

    invoke-static {p0, v0}, Lm2/d;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static pickPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "com.mojang.minecraftpe"

    invoke-static {p0, v0}, Lm2/d;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "jopa.triggertrash.minecraft"

    invoke-static {p0, v2}, Lm2/d;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    if-nez v3, :cond_1

    return-object v4

    :cond_0
    if-nez v3, :cond_2

    return-object v0

    :cond_1
    return-object v2

    :cond_2
    invoke-static {p0}, Lm2/d;->getSavedChoice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "com.mojang.minecraftpe"

    return-object p0

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "jopa.triggertrash.minecraft"

    return-object p0

    :cond_5
    return-object v4
.end method

.method public static saveChoice(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "variable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "injection_target"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
