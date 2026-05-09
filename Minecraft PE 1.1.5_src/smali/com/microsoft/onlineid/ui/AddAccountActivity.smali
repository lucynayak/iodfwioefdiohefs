.class public Lcom/microsoft/onlineid/ui/AddAccountActivity;
.super Landroid/app/Activity;
.source "AddAccountActivity.java"


# static fields
.field protected static final AccountAddedRequest:I = 0x2

.field public static final ActionAddAccount:Ljava/lang/String; = "com.microsoft.onlineid.internal.ADD_ACCOUNT"

.field public static final ActionSignUpAccount:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

.field protected static final AddPendingRequest:I = 0x1

.field private static final AppIdLabel:Ljava/lang/String; = "client_id"

.field private static final ClientFlightLabel:Ljava/lang/String; = "client_flight"

.field public static final CobrandingIdLabel:Ljava/lang/String; = "cobrandid"

.field protected static final NoRequest:I = -0x1

.field public static final PlatformLabel:Ljava/lang/String; = "platform"

.field public static final PlatformName:Ljava/lang/String; = "android"

.field private static final PrefillUsernameLabel:Ljava/lang/String; = "username"

.field public static final SignInOptionsLabel:Ljava/lang/String;

.field protected static final SignInWebFlowRequest:I = 0x0

.field public static final SignUpFlowLabel:Ljava/lang/String; = "fl"

.field public static final SignUpOptionsLabel:Ljava/lang/String;

.field private static final UnauthenticatedSessionIdLabel:Ljava/lang/String; = "uaid"

.field private static final WReplyLabel:Ljava/lang/String; = "wreply"


# instance fields
.field protected _accountPuid:Ljava/lang/String;

.field protected _handler:Landroid/os/Handler;

.field protected _pendingChildRequest:I

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

.field protected _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SignInOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignInOptionsLabel:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SignUpOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignUpOptionsLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    return-void
.end method

.method private appendOptions(Lcom/microsoft/onlineid/RequestOptions;Landroid/net/Uri$Builder;)V
    .registers 7
    .param p1, "options"    # Lcom/microsoft/onlineid/RequestOptions;
    .param p2, "uriBuilder"    # Landroid/net/Uri$Builder;

    .prologue
    .line 491
    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->getPrefillUsername()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "username":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 494
    const-string v3, "username"

    invoke-virtual {p2, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 497
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->getUnauthenticatedSessionId()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "uaid":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 500
    const-string v3, "uaid"

    invoke-virtual {p2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 504
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->getFlightConfiguration()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "flightConfiguration":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 507
    const-string v3, "client_flight"

    invoke-virtual {p2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 509
    :cond_2
    return-void
.end method

.method public static getSignInIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignInOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 10
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/microsoft/onlineid/SignInOptions;
    .param p2, "membernameType"    # Ljava/lang/String;
    .param p3, "cobrandingId"    # Ljava/lang/String;
    .param p4, "webTelemetryRequested"    # Z
    .param p5, "clientPackageName"    # Ljava/lang/String;
    .param p6, "clientState"    # Landroid/os/Bundle;

    .prologue
    .line 575
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.microsoft.onlineid.internal.ADD_ACCOUNT"

    .line 576
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fl"

    .line 577
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.cobranding_id"

    .line 578
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.web_telemetry_requested"

    .line 579
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_package_name"

    .line 580
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_state"

    .line 581
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    .line 583
    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Lcom/microsoft/onlineid/RequestOptions;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    .line 584
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 582
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 586
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 588
    sget-object v1, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignInOptionsLabel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/SignInOptions;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 591
    :cond_0
    return-object v0
.end method

.method public static getSignUpIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignUpOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 10
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/microsoft/onlineid/SignUpOptions;
    .param p2, "membernameType"    # Ljava/lang/String;
    .param p3, "cobrandingId"    # Ljava/lang/String;
    .param p4, "webTelemetryRequested"    # Z
    .param p5, "clientPackageName"    # Ljava/lang/String;
    .param p6, "clientState"    # Landroid/os/Bundle;

    .prologue
    .line 534
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    .line 535
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fl"

    .line 536
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.cobranding_id"

    .line 537
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.web_telemetry_requested"

    .line 538
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_package_name"

    .line 539
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_state"

    .line 540
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    .line 541
    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Lcom/microsoft/onlineid/RequestOptions;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    .line 542
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 541
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 544
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 546
    sget-object v1, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignUpOptionsLabel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/SignUpOptions;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 549
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected addCommonQueryStringParams(Landroid/net/Uri$Builder;)V
    .registers 8
    .param p1, "uriBuilder"    # Landroid/net/Uri$Builder;

    .prologue
    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "platformValue":Ljava/lang/String;
    const-string v3, "platform"

    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 325
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 326
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Applications;->buildClientAppUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "appId":Ljava/lang/String;
    const-string v3, "client_id"

    invoke-virtual {p1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 329
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "cobrandingId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 332
    const-string v3, "cobrandid"

    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 334
    :cond_0
    return-void
.end method

.method protected addTelemetryToResult(Landroid/content/Intent;)V
    .registers 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    .line 346
    .local v0, "result":Lcom/microsoft/onlineid/internal/ApiResult;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->hasWebFlowTelemetryEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ApiResult;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 351
    .end local v0    # "result":Lcom/microsoft/onlineid/internal/ApiResult;
    :cond_0
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 441
    iget v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    if-eq v0, v1, :cond_0

    .line 445
    iget v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finishActivity(I)V

    .line 446
    iput v1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    .line 449
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 450
    return-void
.end method

.method protected getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;
    .registers 11
    .param p1, "serverConfig"    # Lcom/microsoft/onlineid/sts/ServerConfig;
    .param p2, "isCallerMsa"    # Z
    .param p3, "isWreply"    # Z

    .prologue
    .line 252
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 256
    .local v0, "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 257
    .local v4, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addCommonQueryStringParams(Landroid/net/Uri$Builder;)V

    .line 259
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignInOptionsLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 260
    .local v2, "options":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 262
    new-instance v3, Lcom/microsoft/onlineid/SignInOptions;

    invoke-direct {v3, v2}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    .line 263
    .local v3, "signInOptions":Lcom/microsoft/onlineid/SignInOptions;
    invoke-direct {p0, v3, v4}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->appendOptions(Lcom/microsoft/onlineid/RequestOptions;Landroid/net/Uri$Builder;)V

    .line 266
    .end local v3    # "signInOptions":Lcom/microsoft/onlineid/SignInOptions;
    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, "loginUri":Landroid/net/Uri;
    if-eqz p3, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/onlineid/internal/Uris;->appendMarketQueryString(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 276
    :goto_1
    return-object v1

    .line 252
    .end local v0    # "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .end local v1    # "loginUri":Landroid/net/Uri;
    .end local v2    # "options":Landroid/os/Bundle;
    .end local v4    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    .line 273
    .restart local v0    # "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .restart local v1    # "loginUri":Landroid/net/Uri;
    .restart local v2    # "options":Landroid/os/Bundle;
    .restart local v4    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_4
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method protected getSignupUri(Lcom/microsoft/onlineid/sts/ServerConfig;Z)Landroid/net/Uri;
    .registers 10
    .param p1, "serverConfig"    # Lcom/microsoft/onlineid/sts/ServerConfig;
    .param p2, "isCallerMsa"    # Z

    .prologue
    .line 288
    if-eqz p2, :cond_2

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 292
    .local v0, "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 293
    .local v4, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addCommonQueryStringParams(Landroid/net/Uri$Builder;)V

    .line 295
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignUpOptionsLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 296
    .local v1, "options":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 298
    new-instance v3, Lcom/microsoft/onlineid/SignUpOptions;

    invoke-direct {v3, v1}, Lcom/microsoft/onlineid/SignUpOptions;-><init>(Landroid/os/Bundle;)V

    .line 299
    .local v3, "signUpOptions":Lcom/microsoft/onlineid/SignUpOptions;
    invoke-direct {p0, v3, v4}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->appendOptions(Lcom/microsoft/onlineid/RequestOptions;Landroid/net/Uri$Builder;)V

    .line 302
    .end local v3    # "signUpOptions":Lcom/microsoft/onlineid/SignUpOptions;
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "fl"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "signUpFlow":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 305
    const-string v5, "fl"

    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 308
    :cond_1
    const-string v5, "wreply"

    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, v6}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 310
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 288
    .end local v0    # "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .end local v1    # "options":Landroid/os/Bundle;
    .end local v2    # "signUpFlow":Ljava/lang/String;
    .end local v4    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_2
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 176
    iget v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    if-ne p1, v0, :cond_0

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    .line 182
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received activity result for unknown request code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received activity result for unknown request code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 187
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addTelemetryToResult(Landroid/content/Intent;)V

    .line 189
    packed-switch p2, :pswitch_data_1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sign in activity finished with unexpected result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_2
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 194
    :cond_1
    const-string v0, "Sign in flow finished successfully with no extras set."

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getAccountPuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->onSetupSuccessful(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_3
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    goto :goto_0

    .line 206
    :pswitch_4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendCancelledResult()V

    goto :goto_0

    .line 222
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account added activity finished with unexpected result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_6
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendSuccessResult(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 189
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 222
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance v6, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    .line 102
    .local v6, "serverConfig":Lcom/microsoft/onlineid/sts/ServerConfig;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "clientPackageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->isAuthenticatorApp(Ljava/lang/String;)Z

    move-result v3

    .line 105
    .local v3, "isCallerMsa":Z
    const/4 v5, 0x0

    .line 108
    .local v5, "precachingEnabled":Z
    new-instance v11, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v12, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {v11, p0, v12}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object v11, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    .line 110
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v11, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    sget-object v12, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignUpOptionsLabel:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 115
    .local v4, "options":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 117
    new-instance v11, Lcom/microsoft/onlineid/SignUpOptions;

    invoke-direct {v11, v4}, Lcom/microsoft/onlineid/SignUpOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11}, Lcom/microsoft/onlineid/SignUpOptions;->getWasPrecachingEnabled()Z

    move-result v5

    .line 129
    .end local v4    # "options":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "com.microsoft.onlineid.web_telemetry_requested"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 131
    .local v10, "webTelemetryRequested":Z
    const-string v11, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 132
    invoke-virtual {p0, v6, v3}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignupUri(Lcom/microsoft/onlineid/sts/ServerConfig;Z)Landroid/net/Uri;

    move-result-object v7

    .line 135
    .local v7, "startUri":Landroid/net/Uri;
    :goto_1
    const-string v11, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v9, "com.microsoft.onlineid.internal.SIGN_UP"

    .line 139
    .local v9, "webFlowAction":Ljava/lang/String;
    :goto_2
    new-instance v11, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    invoke-direct {v11}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>()V

    .line 140
    invoke-virtual {v11, v10}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setIsWebTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v11

    .line 141
    invoke-virtual {v11, v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v11

    .line 142
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppVersionName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v11

    .line 143
    invoke-virtual {v11, v5}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v8

    .line 146
    .local v8, "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 145
    invoke-static {v11, v7, v9, v3, v8}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v11

    .line 150
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v2

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v11, 0x10000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const/4 v11, 0x0

    iput v11, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    .line 156
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->hasInternetConnectivity(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 158
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v11

    const-string v12, "Performance"

    const-string v13, "No network connectivity"

    const-string v14, "At start of web flow"

    invoke-interface {v11, v12, v13, v14}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 163
    new-instance v11, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v11}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>()V

    invoke-virtual {p0, v11}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    .line 171
    :goto_3
    return-void

    .line 120
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "startUri":Landroid/net/Uri;
    .end local v8    # "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .end local v9    # "webFlowAction":Ljava/lang/String;
    .end local v10    # "webTelemetryRequested":Z
    :cond_1
    const-string v11, "com.microsoft.onlineid.internal.ADD_ACCOUNT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    sget-object v12, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignInOptionsLabel:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 123
    .restart local v4    # "options":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 125
    new-instance v11, Lcom/microsoft/onlineid/SignInOptions;

    invoke-direct {v11, v4}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11}, Lcom/microsoft/onlineid/SignInOptions;->getWasPrecachingEnabled()Z

    move-result v5

    goto/16 :goto_0

    .line 132
    .end local v4    # "options":Landroid/os/Bundle;
    .restart local v10    # "webTelemetryRequested":Z
    :cond_2
    const/4 v11, 0x0

    .line 133
    invoke-virtual {p0, v6, v3, v11}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    .line 135
    .restart local v7    # "startUri":Landroid/net/Uri;
    :cond_3
    const-string v9, "com.microsoft.onlineid.internal.SIGN_IN"

    goto :goto_2

    .line 167
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v8    # "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .restart local v9    # "webFlowAction":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {p0, v2, v11}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    iput-object v11, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_handler:Landroid/os/Handler;

    goto :goto_3
.end method

.method protected onSetupFailure(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    .line 482
    return-void
.end method

.method protected onSetupSuccessful(Ljava/lang/String;)V
    .registers 3
    .param p1, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackup(Landroid/content/Context;)V

    .line 464
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finishActivity(I)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendSuccessResult(Ljava/lang/String;)V

    .line 471
    :cond_0
    return-void
.end method

.method protected sendCancelledResult()V
    .registers 4

    .prologue
    .line 428
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 429
    .local v0, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendUserCanceled()V

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    .line 436
    return-void
.end method

.method protected sendFailureResult(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 393
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 397
    const-string v1, "Failed to add account."

    invoke-static {v1, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 400
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 401
    .local v0, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendFailure(Ljava/lang/Exception;)V

    .line 410
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    .line 411
    return-void

    .line 393
    .end local v0    # "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 407
    .restart local v0    # "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    goto :goto_1
.end method

.method protected sendFailureResult(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 420
    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    .line 421
    return-void
.end method

.method protected sendSuccessResult(Ljava/lang/String;)V
    .registers 6
    .param p1, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 362
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 364
    new-instance v1, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 365
    .local v1, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    new-instance v2, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    .line 383
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    .line 384
    :goto_2
    return-void

    .line 362
    .end local v1    # "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 372
    .restart local v1    # "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_1
    new-instance v2, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 373
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v0, :cond_2

    .line 376
    new-instance v2, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v3, "AddAccountActivity could not acquire newly added account."

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    goto :goto_2

    .line 380
    :cond_2
    iget-object v2, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v2, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    goto :goto_1
.end method
