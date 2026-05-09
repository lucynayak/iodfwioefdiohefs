.class public Lcom/microsoft/xbox/idp/interop/Interop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;,
        Lcom/microsoft/xbox/idp/interop/Interop$Callback;,
        Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;,
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorCallback;,
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;,
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;,
        Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;,
        Lcom/microsoft/xbox/idp/interop/Interop$MSAError;,
        Lcom/microsoft/xbox/idp/interop/Interop$MSAPurpose;,
        Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;,
        Lcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;
    }
.end annotation


# static fields
.field private static final DNET_SCOPE:Ljava/lang/String; = "user.auth.dnet.xboxlive.com"

.field private static final PACKAGE_NAME_TO_REMOVE:Ljava/lang/String; = "com.microsoft.onlineid.sample"

.field private static final POLICY:Ljava/lang/String; = "mbi_ssl"

.field private static final PROD_SCOPE:Ljava/lang/String; = "user.auth.xboxlive.com"

.field private static final TAG:Ljava/lang/String; = "Interop"

.field private static final brokeredSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

.field private static s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

.field private static final silentSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/Interop$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->silentSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$3;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/Interop$3;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->brokeredSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClearIntent()V
    .registers 0

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->clearXboxAppLaunchIntent()V

    return-void
.end method

.method public static GetLiveXTokenCallback(Z)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/microsoft/xbox/idp/interop/Interop;->get_uploader_x_token_callback(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetLocalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetXTokenCallback(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/microsoft/xbox/idp/interop/Interop;->get_supporting_x_token_callback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static InitCLL(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    if-nez v0, :cond_0

    const-string v0, "XSAPI.Android"

    const-string v1, "Init CLL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    new-instance v1, Lcom/microsoft/cll/android/AndroidCll;

    invoke-direct {v1, p1, p0}, Lcom/microsoft/cll/android/AndroidCll;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;-><init>(Lcom/microsoft/cll/android/AndroidCll;Landroid/content/Context;)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    new-instance p1, Lcom/microsoft/xbox/idp/interop/CLLCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/microsoft/xbox/idp/interop/CLLCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->getCll()Lcom/microsoft/cll/android/AndroidCll;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AndroidCll;->setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V

    sget-object p1, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AndroidCll;->setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidCll;->start()V

    :cond_0
    return-void
.end method

.method public static InvokeAuthFlow(JLandroid/app/Activity;Z)V
    .registers 6

    return-void
.end method

.method public static InvokeBrokeredMSA(Landroid/content/Context;Z)V
    .registers 4

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeAuthFlow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->DNET:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    sput-object p1, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    :cond_0
    new-instance p1, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->brokeredSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    invoke-direct {p1, p0, v0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->start()Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    return-void
.end method

.method public static InvokeEventInitialization(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;)V
    .registers 6

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeEventInitialization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop;->invoke_event_initialization(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;)V

    return-void
.end method

.method public static InvokeLatestIntent(Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 6

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeLatestIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->getXboxAppLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, p1, Landroid/content/Intent;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/content/Intent;

    const-string v2, "com.microsoft.xbox.extra.RELAUNCH_INTENT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "Invoking the launch intent..."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v3, "packageName"

    invoke-virtual {v2, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "action"

    invoke-virtual {v2, p1, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "DeepLink - GearVR SignIn"

    const-string v0, "Minecraft GearVR SignIn"

    invoke-static {p1, v0, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p0, "Minecraft relaunch intent was null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "Xbox App launch intent was null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static InvokeMSA(Landroid/content/Context;IZLjava/lang/String;)V
    .registers 14

    const-string v0, "XSAPI.Android"

    const-string v1, "Invoking MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    sget-object v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->DNET:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    sput-object v0, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/Interop$MSAPurpose;->fromId(I)Lcom/microsoft/xbox/idp/interop/Interop$MSAPurpose;

    move-result-object v0

    const-string v1, "Invalid requestCode: "

    const-string v2, ""

    if-eqz v0, :cond_5

    sget-object v3, Lcom/microsoft/xbox/idp/interop/Interop$4;->$SwitchMap$com$microsoft$xbox$idp$interop$Interop$MSAPurpose:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget p0, p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p0, p2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_1
    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string p1, "InvokeMSA SIGN_OUT"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->clearCaches()V

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->sign_out_callback()V

    return-void

    :cond_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InvokeMSA OPPORTUNISTIC_SIGN_IN cid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget p0, p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string p2, "Must show UI to acquire an account."

    invoke-static {v2, p1, p0, p2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_3
    sget-object v6, Lcom/microsoft/xbox/idp/interop/Interop;->silentSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    if-eqz p2, :cond_4

    const-string p1, "user.auth.xboxlive.com"

    goto :goto_0

    :cond_4
    const-string p1, "user.auth.dnet.xboxlive.com"

    :goto_0
    move-object v7, p1

    new-instance p1, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    const/4 v5, 0x0

    const-string v8, "mbi_ssl"

    move-object v3, p1

    move-object v4, p0

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    return-void

    :cond_5
    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget p0, p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p0, p2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static InvokeXBLogin(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;)V
    .registers 6

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeXBLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop;->invoke_xb_login(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;)V

    return-void
.end method

.method public static InvokeXBLogout(JLcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeSignOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/idp/interop/Interop;->invoke_xb_logout(JLcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;)V

    return-void
.end method

.method public static InvokeXTokenCallback(JLcom/microsoft/xbox/idp/interop/Interop$Callback;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeXTokenCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/idp/interop/Interop;->invoke_x_token_acquisition(JLcom/microsoft/xbox/idp/interop/Interop$Callback;)V

    return-void
.end method

.method public static LogCLL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "XSAPI.Android"

    const-string v1, "Log CLL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    if-nez p0, :cond_0

    const-string p0, "Log CLL null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->getCll()Lcom/microsoft/cll/android/AndroidCll;

    move-result-object v2

    sget-object v5, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    sget-object v6, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/microsoft/cll/android/AndroidCll;->log(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    return-void
.end method

.method public static LogTelemetrySignIn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "XSAPI.Android"

    const-string v1, "LogTelemetrySignIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    return-void
.end method

.method public static MSACallback(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "MSA Callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop;->ticket_callback(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static NotificationRegisterCallback(Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/interop/Interop;->notificiation_registration_callback(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string p1, "Token refreshed while process was not running"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static ReadConfigFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "xboxservices"

    const-string v3, "raw"

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static RegisterWithGNS(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "trying to register.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(JILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop;->auth_flow_callback(JILjava/lang/String;)V

    return-void
.end method

.method private static native auth_flow_callback(JILjava/lang/String;)V
.end method

.method public static native deinitializeInterop()Z
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCll()Lcom/microsoft/cll/android/AndroidCll;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->getCll()Lcom/microsoft/cll/android/AndroidCll;

    move-result-object v0

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locale is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSystemProxy()Ljava/lang/String;
    .registers 4

    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getTitleDeviceId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->get_title_telemetry_device_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleSessionId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->get_title_telemetry_session_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native get_supporting_x_token_callback(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native get_title_telemetry_device_id()Ljava/lang/String;
.end method

.method private static native get_title_telemetry_session_id()Ljava/lang/String;
.end method

.method private static native get_uploader_x_token_callback(Z)Ljava/lang/String;
.end method

.method public static native initializeInterop(Landroid/content/Context;)Z
.end method

.method private static native invoke_event_initialization(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;)V
.end method

.method private static native invoke_x_token_acquisition(JLcom/microsoft/xbox/idp/interop/Interop$Callback;)V
.end method

.method private static native invoke_xb_login(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;)V
.end method

.method private static native invoke_xb_logout(JLcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;)V
.end method

.method private static native notificiation_registration_callback(Ljava/lang/String;Z)V
.end method

.method private static native sign_out_callback()V
.end method

.method private static native ticket_callback(Ljava/lang/String;IILjava/lang/String;)V
.end method
