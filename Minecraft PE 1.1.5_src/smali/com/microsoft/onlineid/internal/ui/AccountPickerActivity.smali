.class public Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
.super Landroid/app/Activity;
.source "AccountPickerActivity.java"


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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _resources:Lcom/microsoft/onlineid/internal/Resources;

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->launchAddAccountFlow()V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
    .param p1, "x1"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->onAccountPicked(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method public static getAccountPickerIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 8
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p2, "membernameType"    # Ljava/lang/String;
    .param p3, "cobrandingId"    # Ljava/lang/String;
    .param p4, "clientPackageName"    # Ljava/lang/String;
    .param p5, "clientState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
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

    .prologue
    .line 427
    .local p1, "cidExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .line 428
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.internal.PICK_ACCOUNT"

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    .line 430
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.preferred_membername_type"

    .line 431
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.cobranding_id"

    .line 432
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_package_name"

    .line 433
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_state"

    .line 434
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    .line 436
    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/util/List;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    .line 437
    invoke-virtual {v1, p4}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getStatusBarHeight()I
    .registers 7

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 376
    .local v0, "resourceId":I
    const/4 v1, 0x0

    .line 377
    .local v1, "statusBarHeight":I
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 381
    :cond_0
    return v1
.end method

.method private launchAddAccountFlow()V
    .registers 11

    .prologue
    .line 218
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "SDK"

    const-string v2, "Initiate account add"

    const-string v3, "via account picker"

    invoke-interface {v0, v1, v2, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 225
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/SignInOptions;

    .line 226
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v9, "com.microsoft.onlineid.client_state"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 224
    invoke-static/range {v0 .. v6}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignInIntent(Landroid/content/Context;Lcom/microsoft/onlineid/SignInOptions;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 234
    .local v7, "addAccountIntent":Landroid/content/Intent;
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v1, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;-><init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Landroid/os/Handler;)V

    .line 235
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v8

    .line 237
    .local v8, "addAccountRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v8}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 238
    return-void
.end method

.method private onAccountPicked(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .registers 3
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 248
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->finish()V

    .line 249
    return-void
.end method

.method private onException(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 259
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->finish()V

    .line 260
    return-void
.end method

.method private setupWindow()V
    .registers 11

    .prologue
    .line 341
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->requestWindowFeature(I)Z

    .line 343
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 344
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 345
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 348
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 351
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getStatusBarHeight()I

    move-result v9

    sub-int v0, v8, v9

    .line 352
    .local v0, "accountPickerHeight":I
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "accountPickerMargin"

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v6

    .line 353
    .local v6, "sideMargin":I
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v8, v6

    .line 356
    .local v1, "accountPickerWidth":I
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "maxAccountPickerHeight"

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v3

    .line 357
    .local v3, "maxAccountPickerHeight":I
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "maxAccountPickerWidth"

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v4

    .line 360
    .local v4, "maxAccountPickerWidth":I
    if-le v0, v3, :cond_0

    move v8, v3

    :goto_0
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 361
    if-le v1, v4, :cond_1

    .end local v4    # "maxAccountPickerWidth":I
    :goto_1
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 365
    if-le v0, v3, :cond_2

    const/16 v8, 0x11

    :goto_2
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 366
    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 367
    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 368
    return-void

    .restart local v4    # "maxAccountPickerWidth":I
    :cond_0
    move v8, v0

    .line 360
    goto :goto_0

    :cond_1
    move v4, v1

    .line 361
    goto :goto_1

    .line 365
    .end local v4    # "maxAccountPickerWidth":I
    :cond_2
    const/16 v8, 0x50

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    new-instance v7, Lcom/microsoft/onlineid/internal/Resources;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    .line 108
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->setupWindow()V

    .line 109
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "webflow_header"

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;->applyStyle(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v7, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v8, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {v7, p0, v8}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    .line 115
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "account_picker"

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.microsoft.onlineid.client_state"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 121
    .local v5, "clientState":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 122
    .local v3, "bodyText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "clientPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "com.microsoft.msa.authenticator"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 128
    const-string v7, "com.microsoft.onlineid.account_picker_body"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    :cond_0
    if-nez v3, :cond_1

    .line 134
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "account_picker_list_body"

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    :cond_1
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "account_picker_list_header"

    .line 138
    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;

    .line 137
    invoke-static {v7, v3, v8}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->buildWithBaseScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;

    move-result-object v2

    .line 142
    .local v2, "baseScreenFragment":Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 143
    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "accountPickerBase"

    .line 144
    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 145
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 147
    new-instance v7, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-direct {v7, p0}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    .line 148
    new-instance v7, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    .line 151
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    .line 152
    invoke-virtual {v8}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 153
    .local v6, "excluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    .line 155
    if-eqz v6, :cond_2

    .line 157
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 160
    :cond_2
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "listAccounts"

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 161
    .local v0, "accounts":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "add_account_tile"

    .line 162
    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    .line 161
    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "addAccountView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 167
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    new-instance v7, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;

    invoke-direct {v7, p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;-><init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 388
    .local v0, "inflater":Landroid/view/MenuInflater;
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v2, "action_dismiss_account_picker"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getMenu(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 389
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 395
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v2, "action_dismiss"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->finish()V

    .line 399
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 201
    .local v0, "accounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d active account(s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 203
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->launchAddAccountFlow()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->setContent(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 101
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "Account picker"

    invoke-interface {v0, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 102
    return-void
.end method
