.class public final Ldev/virus/variable/app/CrashHandlers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static installed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    new-instance v0, Ldev/virus/variable/app/CrashHandler;

    invoke-direct {v0}, Ldev/virus/variable/app/CrashHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-boolean v0, Ldev/virus/variable/app/CrashHandlers;->installed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Ldev/virus/variable/app/CrashHandlers;->installed:Z

    invoke-static {p0}, Ldev/virus/variable/app/CrashExitLogger;->run(Landroid/content/Context;)V

    new-instance v0, Ldev/virus/variable/app/CrashWatchdog;

    invoke-direct {v0, p0}, Ldev/virus/variable/app/CrashWatchdog;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/Thread;

    const-string v1, "VariableCrashWatchdog"

    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method
