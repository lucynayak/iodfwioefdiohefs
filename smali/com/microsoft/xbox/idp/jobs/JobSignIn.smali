.class public Lcom/microsoft/xbox/idp/jobs/JobSignIn;
.super Lcom/microsoft/xbox/idp/jobs/MSAJob;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobSignIn"


# instance fields
.field private final accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

.field private final activity:Landroid/app/Activity;

.field private final policy:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/microsoft/xbox/idp/jobs/MSAJob;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;)V

    new-instance p2, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;

    invoke-direct {p2, p0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;-><init>(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)V

    iput-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;-><init>(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->scope:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->policy:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/AccountManager;->setAccountCallback(Lcom/microsoft/onlineid/IAccountCallback;)Lcom/microsoft/onlineid/AccountManager;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/AccountManager;->setTicketCallback(Lcom/microsoft/onlineid/ITicketCallback;)Lcom/microsoft/onlineid/AccountManager;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getType()Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    .registers 2

    sget-object v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    return-object v0
.end method

.method public start()Lcom/microsoft/xbox/idp/jobs/JobSignIn;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackSignin(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninStart(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {v0, v1, v1}, Lcom/microsoft/onlineid/AccountManager;->getAccountPickerIntent(Ljava/lang/Iterable;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackPageView(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public bridge synthetic start()Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    move-result-object v0

    return-object v0
.end method
