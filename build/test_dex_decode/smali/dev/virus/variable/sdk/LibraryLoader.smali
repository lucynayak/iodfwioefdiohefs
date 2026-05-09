.class public Ldev/virus/variable/sdk/LibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FMOD_LIB_NAME:Ljava/lang/String; = "libfmod.so"

.field private static final LAUNCHER_NAME:Ljava/lang/String; = "launcher"

.field private static final MINECRAFTPE_LIB_NAME:Ljava/lang/String; = "libminecraftpe.so"

.field private static final SUBSTRATE_NAME:Ljava/lang/String; = "substrate"

.field private static sLauncherLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoaded()Z
    .locals 1

    sget-boolean v0, Ldev/virus/variable/sdk/LibraryLoader;->sLauncherLoaded:Z

    return v0
.end method

.method public static loadFMod(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "libfmod.so"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method public static loadLauncher(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Ldev/virus/variable/sdk/LibraryLoader;->sLauncherLoaded:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "launcher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "libminecraftpe.so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldev/virus/variable/sdk/LibraryLoader;->nativeOnLauncherLoaded(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Ldev/virus/variable/sdk/LibraryLoader;->sLauncherLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static loadMinecraftPE(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "libminecraftpe.so"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method public static loadSubstrate()V
    .locals 1

    const-string v0, "substrate"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeOnLauncherLoaded(Ljava/lang/String;)V
.end method

.method public static native nativeSetDataDirectory(Ljava/lang/String;)V
.end method
