.class public final Ldev/virus/variable/app/UpdateActivity$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/virus/variable/app/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Ldev/virus/variable/app/UpdateActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Ldev/virus/variable/app/UpdateActivity$b;->b:Ldev/virus/variable/app/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1
    :try_start_0
    sget-object v0, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    .line 2
    iget-object v0, p0, Ldev/virus/variable/app/UpdateActivity$b;->b:Ldev/virus/variable/app/UpdateActivity;

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lm2/c; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v0}, Ldev/virus/variable/sdk/LibraryLoader;->loadFMod(Ljava/lang/String;)V

    invoke-static {v0}, Ldev/virus/variable/sdk/LibraryLoader;->loadMinecraftPE(Ljava/lang/String;)V

    invoke-static {}, Ldev/virus/variable/sdk/LibraryLoader;->loadSubstrate()V

    invoke-static {v0}, Ldev/virus/variable/sdk/LibraryLoader;->loadLauncher(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldev/virus/variable/app/UpdateActivity$b;->b:Ldev/virus/variable/app/UpdateActivity;

    const-class v2, Ldev/virus/variable/app/MinecraftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Ldev/virus/variable/app/UpdateActivity$b;->b:Ldev/virus/variable/app/UpdateActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Ldev/virus/variable/app/UpdateActivity$b;->b:Ldev/virus/variable/app/UpdateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    new-instance v1, Lm2/c;

    invoke-direct {v1, v0}, Lm2/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lm2/c; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
