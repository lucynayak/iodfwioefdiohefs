.class public Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
.super Lcom/microsoft/xbox/idp/ui/AuthActivity;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;,
        Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;,
        Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    }
.end annotation


# static fields
.field public static final ARG_ALT_BUTTON_TEXT:Ljava/lang/String; = "ARG_ALT_BUTTON_TEXT"

.field public static final ARG_SECURITY_POLICY:Ljava/lang/String; = "ARG_SECURITY_POLICY"

.field public static final ARG_SECURITY_SCOPE:Ljava/lang/String; = "ARG_SECURITY_SCOPE"

.field public static final ARG_USER_PTR:Ljava/lang/String; = "ARG_USER_PTR"

.field public static final EXTRA_CID:Ljava/lang/String; = "EXTRA_CID"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field public static final RESULT_PROVIDER_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AuthFlowActivity"

.field private static staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

.field private stateSaved:Z

.field private status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-object p0
.end method

.method private finishWithResult()V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-boolean v1, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$9;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$9;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    const-string v2, "EXTRA_CID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->toActivityResult(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->finishCompat()V

    return-void
.end method

.method public static setStaticCallbacks(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;)V
    .registers 1

    sput-object p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    return-void
.end method

.method private showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object p1, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {p0, p2, p3, p4}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->showBodyFragment(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_body_fragment:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void
.end method

.method public onClickCloseHeader()V
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickCloseHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V
    .registers 6

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: AccountProvisioningFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AccountProvisioningFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$3;

    invoke-direct {v0, p0, p2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$3;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: IntroducingFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$IntroducingFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    goto :goto_0
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: SignUpFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$SignUpFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$6;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$6;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_2
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: WelcomeFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$WelcomeFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$7;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$7;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_2
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_3
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;)V
    .registers 4

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$EventInitializationFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$4;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: FinishSignInFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V
    .registers 7

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: MSAFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$MSAFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object p3, p3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    const-string v0, "ARG_RPS_TICKET"

    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object p3, p3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {p3}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->getUserImplPtr()J

    move-result-wide v0

    const-string p3, "ARG_USER_PTR"

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackXBLSigninStart(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGIN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance p3, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-direct {p3}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: StartSignInFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$StartSignInFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$1;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V
    .registers 6

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComplete: XBLoginFragment.Status."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLoginFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-boolean p3, p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;

    invoke-direct {p2, p0, p3}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: XBLogoutFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLogoutFragment$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const-string p1, "Should not be here! Cancelling auth flow."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_activity_auth_flow:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    if-nez p1, :cond_2

    new-instance p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    invoke-direct {p1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v0, "Intent has no extras"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "ARG_USER_PTR"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "No user pointer, non-native activity mode"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-boolean v2, p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->clearCaches()V

    sget-object p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->START_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void

    :cond_1
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v3, "User pointer present, native activity mode"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    new-instance v3, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;-><init>(J)V

    iput-object v3, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    sget-object p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/ui/MSAFragment;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void

    :cond_2
    const-string v0, "KEY_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    return-void
.end method

.method public onDestroy()V
    .registers 6

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-boolean v1, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->getUserImplPtr()J

    move-result-wide v2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v4, v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;->onAuthFlowFinished(JLcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    const-string v1, "KEY_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    return-void
.end method
