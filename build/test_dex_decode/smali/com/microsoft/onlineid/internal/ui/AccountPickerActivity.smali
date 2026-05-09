.class public Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;,
        Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;
    }
.end annotation


# static fields
.field public static final ActionPickAccount:Ljava/lang/String; = "com.microsoft.onlineid.internal.PICK_ACCOUNT"

.field public static final AddAccountRequest:I = 0x1

.field private static final BackgroundDimValue:F = 0.5f


# instance fields
.field private _accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

.field private _accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

.field private _cidExclusionList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _resources:Lcom/microsoft/onlineid/internal/Resources;

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->launchAddAccountFlow()V

    return-void
.end method

.method public static synthetic access$200(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->onAccountPicked(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method public static getAccountPickerIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.internal.PICK_ACCOUNT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.client_state"

    invoke-virtual {p0, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    new-instance p5, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {p5}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    invoke-virtual {p5, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/util/List;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getStatusBarHeight()I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchAddAccountFlow()V
    .locals 11

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "SDK"

    const-string v2, "Initiate account add"

    const-string v3, "via account picker"

    invoke-interface {v0, v1, v2, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/microsoft/onlineid/SignInOptions;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignInIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignInOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;-><init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Landroid/os/Handler;)V

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onAccountPicked(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onException(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setupWindow()V
    .locals 7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v5, "accountPickerMargin"

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v4

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v5, "maxAccountPickerHeight"

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v6, "maxAccountPickerWidth"

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v5

    if-le v3, v4, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-le v2, v5, :cond_1

    move v2, v5

    :cond_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-le v3, v4, :cond_2

    const/16 v2, 0x11

    goto :goto_1

    :cond_2
    const/16 v2, 0x50

    :goto_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/microsoft/onlineid/internal/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->setupWindow()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v1, "webflow_header"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;->applyStyle(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {p1, p0, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v0, "account_picker"

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.microsoft.onlineid.client_state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "com.microsoft.msa.authenticator"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.account_picker_body"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v0, "account_picker_list_body"

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v0, "account_picker_list_header"

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;

    invoke-static {p1, v1, v0}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->buildWithBaseScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v2, "accountPickerBase"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    new-instance p1, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-direct {p1, p0}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    new-instance p1, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v0, "listAccounts"

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v2, "add_account_tile"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;-><init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v2, "action_dismiss_account_picker"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getMenu(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v2, "action_dismiss"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%d active account(s)"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->launchAddAccountFlow()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->setContent(Ljava/util/Collection;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "Account picker"

    invoke-interface {v0, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-void
.end method
