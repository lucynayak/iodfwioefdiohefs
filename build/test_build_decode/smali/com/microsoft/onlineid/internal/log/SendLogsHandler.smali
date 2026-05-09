.class public Lcom/microsoft/onlineid/internal/log/SendLogsHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SendKeyEventIntervalMillis:J = 0x1388L

.field public static final ToastMsg:Ljava/lang/String; = "Press the \'volume down\' button %d more time(s) to send logs."


# instance fields
.field private _activityContext:Landroid/content/Context;

.field private _applicationContext:Landroid/content/Context;

.field private _errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

.field private _sendLogsKeyCounter:B

.field private _startTime:J

.field private _toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_startTime:J

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    if-nez p2, :cond_2

    new-instance p2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;-><init>(Landroid/content/Context;)V

    :cond_2
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_startTime:J

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    return-void
.end method


# virtual methods
.method public getTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public sendLogs()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->generateAndSendReportWithUserPermission(Landroid/content/Context;)V

    return-void
.end method

.method public sendLogs(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->generateAndSendReportWithUserPermission(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setSendLogs(Z)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->setSendLogs(Z)V

    return-void
.end method

.method public setSendScreenshot(Z)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->setSendScreenshot(Z)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_toast:Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public trySendLogsOnKeyEvent(I)V
    .locals 9

    const/16 v0, 0x18

    const-string v1, "Press the \'volume down\' button %d more time(s) to send logs."

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->getTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_startTime:J

    sub-long/2addr v4, v6

    iget-byte p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    const-wide/16 v6, 0x1388

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    add-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    if-lez p1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->showToast(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->sendLogs()V

    iput-byte v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    return-void

    :cond_2
    iput-byte v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    return-void

    :cond_3
    const/4 p1, 0x2

    iput-byte p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->getTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_startTime:J

    return-void
.end method
