.class public Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$InstanceHolder;
    }
.end annotation


# static fields
.field private static defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;
    .registers 1

    invoke-static {}, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$InstanceHolder;->access$100()Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendPriorCrashReport(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->checkAndSendCrashReportWithUserPermission(Landroid/content/Context;)V

    return-void
.end method

.method public setSendScreenshot(Z)V
    .registers 3

    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->setSendScreenshot(Z)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    const-string v0, "Handling of the uncaughtException"

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->generateAndSaveCrashReport(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error CollectPackageInformation"

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
