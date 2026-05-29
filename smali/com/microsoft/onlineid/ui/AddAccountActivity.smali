.class public Lcom/microsoft/onlineid/ui/AddAccountActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final AccountAddedRequest:I = 0x2

.field public static final ActionAddAccount:Ljava/lang/String; = "com.microsoft.onlineid.internal.ADD_ACCOUNT"

.field public static final ActionSignUpAccount:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

.field public static final AddPendingRequest:I = 0x1

.field private static final AppIdLabel:Ljava/lang/String; = "client_id"

.field private static final ClientFlightLabel:Ljava/lang/String; = "client_flight"

.field public static final CobrandingIdLabel:Ljava/lang/String; = "cobrandid"

.field public static final NoRequest:I = -0x1

.field public static final PlatformLabel:Ljava/lang/String; = "platform"

.field public static final PlatformName:Ljava/lang/String; = "android"

.field private static final PrefillUsernameLabel:Ljava/lang/String; = "username"

.field public static final SignInOptionsLabel:Ljava/lang/String;

.field public static final SignInWebFlowRequest:I = 0x0

.field public static final SignUpFlowLabel:Ljava/lang/String; = "fl"

.field public static final SignUpOptionsLabel:Ljava/lang/String;

.field private static final UnauthenticatedSessionIdLabel:Ljava/lang/String; = "uaid"

.field private static final WReplyLabel:Ljava/lang/String; = "wreply"


# instance fields
.field public _accountPuid:Ljava/lang/String;

.field public _handler:Landroid/os/Handler;

.field public _pendingChildRequest:I

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

.field public _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SignInOptions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignInOptionsLabel:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".SignUpOptions"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignUpOptionsLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    return-void
.end method

.method private appendOptions(Lcom/microsoft/onlineid/RequestOptions;Landroid/net/Uri$Builder;)V
    .registers 5

    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->getPrefillUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "username"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->getUnauthenticatedSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "uaid"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->getFlightConfiguration()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "client_flight"

    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    return-void
.end method

.method public static getSignInIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignInOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.microsoft.onlineid.internal.ADD_ACCOUNT"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "fl"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p4, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {p0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p4, "com.microsoft.onlineid.client_state"

    invoke-virtual {p0, p4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    new-instance p4, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {p4}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    invoke-virtual {p4, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Lcom/microsoft/onlineid/RequestOptions;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p2, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignInOptionsLabel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public static getSignUpIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignUpOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "fl"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p4, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {p0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p4, "com.microsoft.onlineid.client_state"

    invoke-virtual {p0, p4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    new-instance p4, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {p4}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    invoke-virtual {p4, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Lcom/microsoft/onlineid/RequestOptions;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p2, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignUpOptionsLabel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addCommonQueryStringParams(Landroid/net/Uri$Builder;)V
    .registers 5

    const-string v0, "android"

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "platform"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Applications;->buildClientAppUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cobrandid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method public addTelemetryToResult(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->hasWebFlowTelemetryEvents()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ApiResult;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    :cond_0
    return-void
.end method

.method public finish()V
    .registers 3

    iget v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->finishActivity(I)V

    iput v1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;
    .registers 5

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sget-object p2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addCommonQueryStringParams(Landroid/net/Uri$Builder;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    sget-object v0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignInOptionsLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lcom/microsoft/onlineid/SignInOptions;

    invoke-direct {v0, p2}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->appendOptions(Lcom/microsoft/onlineid/RequestOptions;Landroid/net/Uri$Builder;)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/Uris;->appendMarketQueryString(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getSignupUri(Lcom/microsoft/onlineid/sts/ServerConfig;Z)Landroid/net/Uri;
    .registers 6

    if-eqz p2, :cond_0

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addCommonQueryStringParams(Landroid/net/Uri$Builder;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignUpOptionsLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/microsoft/onlineid/SignUpOptions;

    invoke-direct {v2, v1}, Lcom/microsoft/onlineid/SignUpOptions;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v2, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->appendOptions(Lcom/microsoft/onlineid/RequestOptions;Landroid/net/Uri$Builder;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "wreply"

    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    iget v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    iput v1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received activity result for unknown request code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eq p2, v1, :cond_2

    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Account added activity finished with unexpected result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendSuccessResult(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, p3}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addTelemetryToResult(Landroid/content/Intent;)V

    if-eq p2, v1, :cond_7

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sign in activity finished with unexpected result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendCancelledResult()V

    return-void

    :cond_7
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getAccountPuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->onSetupSuccessful(Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_1
    const-string p1, "Sign in flow finished successfully with no extras set."

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->isAuthenticatorApp(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v3, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {v2, p0, v3}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object v2, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v6, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignUpOptionsLabel:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v6, Lcom/microsoft/onlineid/SignUpOptions;

    invoke-direct {v6, v4}, Lcom/microsoft/onlineid/SignUpOptions;-><init>(Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {v6}, Lcom/microsoft/onlineid/RequestOptions;->getWasPrecachingEnabled()Z

    move-result v4

    goto :goto_1

    :cond_0
    const-string v4, "com.microsoft.onlineid.internal.ADD_ACCOUNT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v6, Lcom/microsoft/onlineid/ui/AddAccountActivity;->SignInOptionsLabel:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v6, Lcom/microsoft/onlineid/SignInOptions;

    invoke-direct {v6, v4}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignupUri(Lcom/microsoft/onlineid/sts/ServerConfig;Z)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v1, v5}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;

    move-result-object p1

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.microsoft.onlineid.internal.SIGN_UP"

    goto :goto_3

    :cond_3
    const-string v2, "com.microsoft.onlineid.internal.SIGN_IN"

    :goto_3
    new-instance v3, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    invoke-direct {v3}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>()V

    invoke-virtual {v3, v6}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setIsWebTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppVersionName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v2, v1, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput v5, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->hasInternetConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p1

    const-string v0, "Performance"

    const-string v1, "No network connectivity"

    const-string v2, "At start of web flow"

    invoke-interface {p1, v0, v1, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    new-instance p1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {p1}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_handler:Landroid/os/Handler;

    return-void
.end method

.method public onSetupFailure(Ljava/lang/Exception;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSetupSuccessful(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackup(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->finishActivity(I)V

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendSuccessResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendCancelledResult()V
    .registers 4

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendUserCanceled()V

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    return-void
.end method

.method public sendFailureResult(Ljava/lang/Exception;)V
    .registers 5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    const-string v0, "Failed to add account."

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendFailure(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    return-void
.end method

.method public sendFailureResult(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    return-void
.end method

.method public sendSuccessResult(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v0, "AddAccountActivity could not acquire newly added account."

    invoke-direct {p1, v0}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    return-void
.end method
