.class public Lcom/microsoft/cll/android/AndroidLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/cll/android/ILogger;


# static fields
.field private static INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

.field private static InstanceLock:Ljava/lang/Object;


# instance fields
.field private verbosity:Lcom/microsoft/cll/android/Verbosity;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/AndroidLogger;->InstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/microsoft/cll/android/Verbosity;->NONE:Lcom/microsoft/cll/android/Verbosity;

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/AndroidLogger;->setVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/cll/android/ILogger;
    .registers 2

    sget-object v0, Lcom/microsoft/cll/android/AndroidLogger;->INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/cll/android/AndroidLogger;->InstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/cll/android/AndroidLogger;->INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/cll/android/AndroidLogger;

    invoke-direct {v1}, Lcom/microsoft/cll/android/AndroidLogger;-><init>()V

    sput-object v1, Lcom/microsoft/cll/android/AndroidLogger;->INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/cll/android/AndroidLogger;->INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->ERROR:Lcom/microsoft/cll/android/Verbosity;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->WARN:Lcom/microsoft/cll/android/Verbosity;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getVerbosity()Lcom/microsoft/cll/android/Verbosity;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    return-object v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setVerbosity(Lcom/microsoft/cll/android/Verbosity;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->WARN:Lcom/microsoft/cll/android/Verbosity;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
