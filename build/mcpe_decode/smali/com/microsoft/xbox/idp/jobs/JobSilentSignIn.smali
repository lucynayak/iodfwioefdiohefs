.class public Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;
.super Lcom/microsoft/xbox/idp/jobs/MSAJob;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobSilentSignIn"


# instance fields
.field private final accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

.field private final activityTitle:Ljava/lang/CharSequence;

.field private final cid:Ljava/lang/String;

.field private final policy:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/microsoft/xbox/idp/jobs/MSAJob;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;)V

    new-instance p1, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;-><init>(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    new-instance p3, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;

    invoke-direct {p3, p0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;-><init>(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)V

    iput-object p3, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->activityTitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->scope:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->policy:Ljava/lang/String;

    iput-object p6, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    iget-object p2, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {p2, p1}, Lcom/microsoft/onlineid/AccountManager;->setAccountCallback(Lcom/microsoft/onlineid/IAccountCallback;)Lcom/microsoft/onlineid/AccountManager;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {p1, p3}, Lcom/microsoft/onlineid/AccountManager;->setTicketCallback(Lcom/microsoft/onlineid/ITicketCallback;)Lcom/microsoft/onlineid/AccountManager;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->activityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getType()Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->SILENT_SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    return-object v0
.end method

.method public start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/AccountManager;->getAccountById(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->activityTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackSignin(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninStart(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    return-object p0
.end method

.method public bridge synthetic start()Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    move-result-object v0

    return-object v0
.end method
