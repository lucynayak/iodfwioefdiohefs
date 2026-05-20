.class public Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
.super Lcom/microsoft/xbox/idp/ui/AuthActivity;
.source "AuthFlowActivity.java"

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
        Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;,
        Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;,
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

.field private static final TAG:Ljava/lang/String;

.field private static staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

.field private stateSaved:Z

.field private status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;-><init>()V

    .line 50
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    return v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    .param p2, "x2"    # Landroid/app/Fragment;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .registers 2
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-object v0
.end method

.method private finishWithResult()V
    .registers 4

    .prologue
    .line 457
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-boolean v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    if-ne v1, v2, :cond_1

    .line 458
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_CID"

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->toActivityResult(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 461
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishCompat()V

    .line 478
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 465
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$9;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$9;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setStaticCallbacks(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;)V
    .registers 1
    .param p0, "staticCallbacks"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    .prologue
    .line 453
    sput-object p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    .line 454
    return-void
.end method

.method private showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 6
    .param p1, "task"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    .param p2, "bodyFragment"    # Landroid/app/Fragment;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "showHeader"    # Z

    .prologue
    .line 481
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object p1, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    .line 482
    invoke-virtual {p0, p2, p3, p4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 483
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_body_fragment:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 122
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    .line 124
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 125
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    .line 126
    return-void
.end method

.method public onClickCloseHeader()V
    .registers 3

    .prologue
    .line 130
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickCloseHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    .line 148
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 149
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    .line 151
    :goto_0
    :pswitch_0
    return-void

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    .line 137
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 138
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V
    .registers 6
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;
    .param p2, "result"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    .prologue
    .line 243
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: AccountProvisioningFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AccountProvisioningFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$3;

    invoke-direct {v1, p0, p2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$3;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 262
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 263
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 266
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 267
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;)V
    .registers 5
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;

    .prologue
    .line 371
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: IntroducingFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$IntroducingFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 374
    :pswitch_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 375
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 378
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 379
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 382
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 383
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V
    .registers 5
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    .prologue
    .line 323
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: SignUpFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$SignUpFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 346
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 347
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 350
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 351
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 354
    :pswitch_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$6;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$6;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V
    .registers 5
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    .prologue
    .line 390
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: WelcomeFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$WelcomeFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 393
    :pswitch_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 394
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 397
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 398
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 401
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 402
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 405
    :pswitch_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$7;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$7;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;)V
    .registers 5
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;

    .prologue
    .line 274
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$EventInitializationFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 277
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$4;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 311
    .end local v0    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 312
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 315
    :pswitch_2
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 316
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V
    .registers 5
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    .prologue
    .line 422
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: FinishSignInFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 424
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    .line 425
    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V
    .registers 8
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 184
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete: MSAFragment.Status."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$MSAFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object p2, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    invoke-virtual {p3}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "ARG_RPS_TICKET"

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "ARG_USER_PTR"

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->getUserImplPtr()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 192
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackXBLSigninStart(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 193
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGIN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 196
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_1
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 197
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 200
    :pswitch_2
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 201
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;)V
    .registers 5
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;

    .prologue
    .line 155
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: StartSignInFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$StartSignInFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$1;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 172
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 173
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 176
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 177
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V
    .registers 7
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;
    .param p2, "authFlowResult"    # Lcom/microsoft/xbox/idp/util/AuthFlowResult;
    .param p3, "createAccount"    # Z

    .prologue
    .line 208
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: XBLoginFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLoginFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-boolean p3, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    .line 212
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;

    invoke-direct {v1, p0, p3}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 230
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 231
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 234
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 235
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V
    .registers 5
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    .prologue
    .line 429
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: XBLogoutFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLogoutFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 450
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 445
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "Should not be here! Cancelling auth flow."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 447
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v2, Lcom/microsoft/xbox/idp/R$layout;->xbid_activity_auth_flow:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->setContentView(I)V

    .line 58
    if-nez p1, :cond_2

    .line 59
    new-instance v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;-><init>()V

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    .line 60
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 62
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v3, "Intent has no extras"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 64
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    .line 84
    .end local v1    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 68
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ARG_USER_PTR"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v3, "No user pointer, non-native activity mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-boolean v6, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    .line 73
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->clearCaches()V

    .line 74
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->START_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;-><init>()V

    invoke-direct {p0, v2, v3, v0, v6}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v3, "User pointer present, native activity mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    .line 78
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    new-instance v3, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    const-string v4, "ARG_USER_PTR"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;-><init>(J)V

    iput-object v3, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    .line 79
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/ui/MSAFragment;-><init>()V

    invoke-direct {p0, v2, v3, v0, v6}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 82
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string v2, "KEY_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    goto :goto_0
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    .line 89
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 90
    invoke-super {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onDestroy()V

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-boolean v0, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->getUserImplPtr()J

    move-result-wide v2

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v4, v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;->onAuthFlowFinished(JLcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onResume()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    .line 102
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    .line 109
    return-void
.end method
