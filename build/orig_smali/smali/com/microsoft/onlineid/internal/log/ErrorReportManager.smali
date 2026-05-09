.class public Lcom/microsoft/onlineid/internal/log/ErrorReportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ConfirmationTitle:Ljava/lang/String; = "Report a problem?"

.field private static final CrashReportEmailTitleFormat:Ljava/lang/String; = "MSA Android Application Crash Report - %s"

.field private static final CrashReportExtension:Ljava/lang/String; = ".stacktrace"

.field private static CurrentActivityContext:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static CurrentAppContext:Landroid/content/Context; = null

.field private static final DontAskAgainMessage:Ljava/lang/String; = "No, don\'t ask again"

.field private static final EmailTitleDateFormat:Ljava/text/DateFormat;

.field private static final IgnoreCrashReportingStorageKeyName:Ljava/lang/String; = "isIgnoreCrashReporting"

.field private static final LogCatNumberLines:I = 0x1388

.field private static final ScreenshotFileName:Ljava/lang/String; = "com.microsoft.msa.authenticator.screenshot.jpg"

.field private static final SendCrashReportConfirmation:Ljava/lang/String; = "A problem occurred last time you ran this application. Would you like to report it?"

.field private static final SendEmailTo:Ljava/lang/String; = "WS-MSACLIENT-AFB@microsoft.com"


# instance fields
.field private _contextFilePath:Ljava/io/File;

.field private _sendLogs:Z

.field private _sendScreenshot:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->EmailTitleDateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendLogs:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendLogs:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p4, :cond_0

    const-string p4, "      %s : %s\n"

    goto :goto_0

    :cond_0
    const-string p4, "%s : %s\n"

    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {v0, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public static collectLogCatLogs(Ljava/io/PrintWriter;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logcat"

    aput-object v2, p1, v1

    const/4 v1, 0x1

    const-string v2, "-t"

    aput-object v2, p1, v1

    const/4 v1, 0x2

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x3

    const-string v2, "-v"

    aput-object v2, p1, v1

    const/4 v1, 0x4

    const-string v2, "time"

    aput-object v2, p1, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/onlineid/internal/log/Logger;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x6

    const-string v2, "*:S"

    aput-object v2, p1, v1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception in collectLogCat"

    invoke-static {p1, p0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getOrientation()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Portrait"

    return-object v0

    :cond_0
    const-string v0, "Landscape"

    return-object v0
.end method

.method private static getScreenSize()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Undefined"

    return-object v0

    :cond_0
    const-string v0, "Xlarge"

    return-object v0

    :cond_1
    const-string v0, "Large"

    return-object v0

    :cond_2
    const-string v0, "Normal"

    return-object v0

    :cond_3
    const-string v0, "Small"

    return-object v0
.end method

.method private static getStringResourceIdAtRuntime(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public askUserPermissionToEmailCrashReport()V
    .locals 3

    new-instance v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;-><init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Report a problem?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "A problem occurred last time you ran this application. Would you like to report it?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "No, don\'t ask again"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public checkAndSendCrashReportWithUserPermission(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->isIgnoreCrashReportingFlagSet()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getCrashErrorFileList()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p1, p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->askUserPermissionToEmailCrashReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "!Error checkAndSendCrashReportWithUserPermission:"

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public constructReport(Ljava/lang/Throwable;ZLjava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    const-string p2, "\n\n"

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_0
    new-instance p3, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->hasAccounts()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\n"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p3}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    const-string v3, "PUID"

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4, v3, v4, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "Username"

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4, v3, v4, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "GcmRegistrationID"

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getGcmRegistrationID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v3, v0, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p0, p4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getDeviceInfo(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "-------------------- \n"

    if-eqz p1, :cond_2

    :try_start_2
    const-string p3, "Stack : \n"

    invoke-virtual {p4, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p3, 0x5

    if-ge v2, p3, :cond_2

    const-string p3, "Cause :"

    invoke-virtual {p4, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendLogs:Z

    if-eqz p1, :cond_3

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, "\nLogcat:\n\n"

    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 p1, 0x1

    invoke-static {p4, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->collectLogCatLogs(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Exception in constructReport:"

    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public deleteFileNoThrow(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "deleteFileNoThrow failed"

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteScreenshot()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getScreenshotFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception in deleteScreenshot"

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public emailLogs(Ljava/lang/String;)V
    .locals 10

    const-string v0, "Exception in emailLogs"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/CharArrayWriter;

    invoke-direct {v3}, Ljava/io/CharArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v2, v1, p1, v4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->constructReport(Ljava/lang/Throwable;ZLjava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_4

    :catch_2
    move-exception v4

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v4, v2

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    :goto_0
    :try_start_4
    invoke-static {v0, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, ""

    :goto_1
    :try_start_6
    sget-object v3, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "send_feedback_subject_tag"

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getStringResourceIdAtRuntime(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->EmailTitleDateFormat:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x32

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    sget-object p1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    const-string v5, "WS-MSACLIENT-AFB@microsoft.com"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "[%s] %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v1

    const/4 v1, 0x1

    aput-object v4, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v5, v1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->sendEmail(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception p1

    move-object v2, v3

    :goto_2
    move-object v3, v2

    :goto_3
    move-object v2, v4

    :goto_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public generateAndSaveCrashReport(Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->isIgnoreCrashReportingFlagSet()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->saveScreenshot(Ljava/lang/ref/WeakReference;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".stacktrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->constructReport(Ljava/lang/Throwable;ZLjava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error in generateAndSaveCrashReport: "

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public generateAndSendReportWithUserPermission(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->generateAndSendReportWithUserPermission(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public generateAndSendReportWithUserPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    iget-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->saveScreenshot(Ljava/lang/ref/WeakReference;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->emailLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "!Error generateAndSendReportWithUserPermission:"

    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getCrashErrorFileList()[Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$1;

    invoke-direct {v1, p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$1;-><init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Exception in getCrashErrorFileList"

    invoke-static {v2, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getDeviceInfo(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "KB"

    :try_start_0
    const-string v1, "Package"

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "FilePath"

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "Version"

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v4, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    const-string v1, "\nPackage Data\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v1, "OS version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SDK level"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Board"

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Phone model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Device"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Display"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Fingerprint"

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Host"

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ID"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Model"

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Tags"

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Type"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User"

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Screen density"

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Screen size"

    invoke-static {}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Screen orientation"

    invoke-static {}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Internal Memory\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v1, "Total"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Available"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Native Memory\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v1, "Allocated heap size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Free size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Heap size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error in getDeviceInfo: "

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public getScreenshotFile()Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.microsoft.msa.authenticator.screenshot.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    const-string v2, "Exception in getScreenshotFile:"

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sput-object p1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error in init: "

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isIgnoreCrashReportingFlagSet()Z
    .locals 2

    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object v0

    const-string v1, "isIgnoreCrashReporting"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isSettingEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyUserOfNoMailApp()V
    .locals 3

    new-instance v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$2;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$2;-><init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "send_feedback_no_email_app_header"

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getStringResourceIdAtRuntime(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v2, "send_feedback_no_email_app_body"

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getStringResourceIdAtRuntime(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string v2, "popup_button_close"

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getStringResourceIdAtRuntime(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public saveScreenshot(Ljava/lang/ref/WeakReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Exception in saveScreenshot:"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteScreenshot()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.microsoft.msa.authenticator.screenshot.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    :goto_1
    return-void

    :goto_2
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public sendEmail(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getScreenshotFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.TEXT"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "message/rfc822"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string p2, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Exception in sendEmail."

    :goto_0
    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->notifyUserOfNoMailApp()V

    const-string p2, "ActivityNotFoundException in sendEmail."

    goto :goto_0
.end method

.method public sendMailAndDeleteFiles(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getCrashErrorFileList()[Ljava/io/File;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    if-eqz p1, :cond_0

    int-to-long v6, v4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v6, v4

    long-to-int v4, v6

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-lez v4, :cond_4

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    array-length v4, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    invoke-virtual {v7, v3}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v8

    if-gtz v8, :cond_2

    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v8

    goto :goto_3

    :catch_1
    move-exception v7

    move-object v8, v7

    move-object v7, v1

    :goto_3
    :try_start_3
    const-string v9, "Error reading the report file"

    invoke-static {v9, v8}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    :try_start_5
    invoke-virtual {p0, v6}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception v7

    :try_start_6
    const-string v8, "Error closing the report file"

    invoke-static {v8, v7}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :goto_7
    :try_start_7
    invoke-virtual {p0, v6}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V

    throw p1

    :cond_3
    move-object v1, v3

    :cond_4
    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    sget-object p1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->EmailTitleDateFormat:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "WS-MSACLIENT-AFB@microsoft.com"

    const-string v4, "MSA Android Application Crash Report - %s"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->sendEmail(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catch_3
    move-exception p1

    const-string v0, "Error in sendMailAndDeleteFiles: "

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public setSendLogs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendLogs:Z

    return-void
.end method

.method public setSendScreenshot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    return-void
.end method
