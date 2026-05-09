.class public Lcom/microsoft/xbox/idp/interop/CLLCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/cll/android/ITicketCallback;


# static fields
.field private static final POLICY:Ljava/lang/String; = "mbi_ssl"

.field private static final VORTEX_SCOPE:Ljava/lang/String; = "vortex.data.microsoft.com"


# instance fields
.field private m_activityTitle:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field private m_vortexTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_context:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_activityTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthXToken(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/Interop;->GetLiveXTokenCallback(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMsaDeviceTicket(Z)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;

    invoke-direct {p1}, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;-><init>()V

    new-instance v0, Lcom/microsoft/xbox/idp/interop/LocalConfig;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/LocalConfig;-><init>()V

    new-instance v7, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_activityTitle:Ljava/lang/String;

    const-string v4, "vortex.data.microsoft.com"

    const-string v5, "mbi_ssl"

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/LocalConfig;->getCid()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v7

    :try_start_0
    invoke-virtual {v7}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "XSAPI.Android"

    const-string v1, "exception on votex MSA Ticket"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;->getTicket()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getXTicketForXuid(Ljava/lang/String;)Lcom/microsoft/cll/android/TicketObject;
    .locals 2

    new-instance v0, Lcom/microsoft/cll/android/TicketObject;

    const-string v1, "x:"

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/Interop;->GetXTokenCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/microsoft/cll/android/TicketObject;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
