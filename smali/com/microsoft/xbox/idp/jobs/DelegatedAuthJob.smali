.class public Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;
    }
.end annotation


# static fields
.field private static final RESULT_INVALID_APPURI:I = 0x6

.field private static final RESULT_INVALID_PACKAGE:I = 0x4

.field private static final RESULT_INVALID_SIGNATURE:I = 0x5

.field private static final RESULT_NOCID:I = 0x1

.field private static final RESULT_SUCCESS:I = 0x0

.field private static final RESULT_UNEXPECTED:I = 0x2

.field private static final RESULT_UNKNOWN_PACKAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DelegatedAuthJob"

.field private static launchIntent:Landroid/content/Intent;


# instance fields
.field private final XBOX_BROKER_SERVICE_NAME:Ljava/lang/String;

.field private final callbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

.field private final connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field public keyService:Lcom/microsoft/xbox/authenticate/IDelegateKeyService;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.microsoft.xbox.authenticate.DelegateKeyService"

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->XBOX_BROKER_SERVICE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;-><init>(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->connection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200()Landroid/content/Intent;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic access$202(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 1

    sput-object p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    return-object p0
.end method

.method public static clearXboxAppLaunchIntent()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    return-void
.end method

.method public static getXboxAppLaunchIntent()Landroid/content/Intent;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public launchXboxApp()V
    .registers 9

    sget-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->TAG:Ljava/lang/String;

    const-string v1, "check service exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    const-string v1, "com.microsoft.xboxone.smartglass.beta"

    const-string v2, "com.microsoft.xbox.authenticate.DelegateKeyService"

    invoke-static {v1, v0, v2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->isServiceInstalled(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "DelegatedAuthJob"

    const-string v5, "SignIn - DelegateRPSTicket"

    const-string v6, "launchType"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v7, "BETA"

    invoke-virtual {v0, v6, v7}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v4, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    const-string v1, "com.microsoft.xboxone.smartglass"

    invoke-static {v1, v0, v2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->isServiceInstalled(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v7, "RETAIL"

    invoke-virtual {v0, v6, v7}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v4, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_1
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v1, "STORE"

    invoke-virtual {v0, v6, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v4, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInOculusMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    invoke-interface {v0, p0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onUiNeeded(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V

    return-void
.end method

.method public start()Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
    .registers 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchXboxApp()V

    return-object p0
.end method
