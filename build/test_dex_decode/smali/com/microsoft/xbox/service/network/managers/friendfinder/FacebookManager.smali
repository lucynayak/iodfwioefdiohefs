.class public Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

.field private static instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;


# instance fields
.field private callbackManager:Le1/f;

.field private facebookPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstLoginWithReadOnly:Z

.field private friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

.field private loginBehavior:Li1/m;

.field private loginResult:Le1/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le1/j<",
            "Li1/s;",
            ">;"
        }
    .end annotation
.end field

.field private shareResult:Le1/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le1/j<",
            "Lj1/a;",
            ">;"
        }
    .end annotation
.end field

.field private token:Le1/a;

.field private tokenString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/toolkit/Ready;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/Ready;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    new-instance v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loginResult:Le1/j;

    new-instance v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->shareResult:Le1/j;

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->reset()V

    new-instance v0, Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;

    new-instance v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Li1/m;->g:Li1/m;

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loginBehavior:Li1/m;

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->setReady()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Le1/a;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->token:Le1/a;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Le1/a;)Le1/a;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->token:Le1/a;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->tokenString:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->showShareDialog()V

    return-void
.end method

.method public static synthetic access$402(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookPermission:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Le1/f;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->callbackManager:Le1/f;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Le1/f;)Le1/f;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->callbackManager:Le1/f;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Le1/j;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loginResult:Le1/j;

    return-object p0
.end method

.method public static getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

    return-object v0
.end method

.method public static getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    .locals 2

    const-class v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;-><init>()V

    sput-object v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    :cond_0
    sget-object v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPublishShimIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/microsoft/xboxtcui/FbLoginShimActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->PUBLISH:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    const-string v2, "LoginType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private getReadShimIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/microsoft/xboxtcui/FbLoginShimActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->READ:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    const-string v2, "LoginType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private showShareDialog()V
    .locals 4

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/microsoft/xboxtcui/FbShareShimActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getFacebookFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    return-object v0
.end method

.method public getFacebookPermission()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookPermission:Ljava/util/List;

    return-object v0
.end method

.method public getLoginBehavior()Li1/m;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loginBehavior:Li1/m;

    return-object v0
.end method

.method public getTokenString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->tokenString:Ljava/lang/String;

    return-object v0
.end method

.method public isFacebookFriendFinderOptedIn()Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountTokenStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->OK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadPeopleHubFriendFinderState()V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(Z)V

    return-void
.end method

.method public login()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookLinkAccountView(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getReadShimIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onShimActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->callbackManager:Le1/f;

    check-cast v0, Lh1/f;

    .line 1
    iget-object v0, v0, Lh1/f;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh1/f$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lh1/f$a;->a(ILandroid/content/Intent;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    const-class v0, Lh1/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh1/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh1/f$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2, p3}, Lh1/f$a;->a(ILandroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0

    throw p1
.end method

.method public registerShareCallback(Lm1/a;)V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->callbackManager:Le1/f;

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->shareResult:Le1/j;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    instance-of v2, v0, Lh1/f;

    const-string v3, "Unexpected CallbackManager, please use the provided Factory."

    if-eqz v2, :cond_1

    check-cast v0, Lh1/f;

    .line 2
    iget p1, p1, Lh1/i;->c:I

    .line 3
    instance-of v2, v0, Lh1/f;

    if-eqz v2, :cond_0

    new-instance v2, Lk1/k;

    invoke-direct {v2, p1, v1}, Lk1/k;-><init>(ILe1/j;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v1, Lr0/e;->l:I

    iget-object v0, v0, Lh1/f;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance p1, Le1/m;

    invoke-direct {p1, v3}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Le1/m;

    invoke-direct {p1, v3}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetFacebookToken(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->token:Le1/a;

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->tokenString:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {}, Li1/p;->b()Li1/p;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Le1/a;->c(Le1/a;)V

    invoke-static {v0}, Le1/b0;->b(Le1/b0;)V

    :cond_0
    return-void
.end method

.method public setFacebookFriendFinderState(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    return-void
.end method

.method public shareToFacebook()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getPublishShimIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
