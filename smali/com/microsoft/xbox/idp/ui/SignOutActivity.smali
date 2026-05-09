.class public Lcom/microsoft/xbox/idp/ui/SignOutActivity;
.super Lcom/microsoft/xbox/idp/ui/AuthActivity;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;,
        Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
    }
.end annotation


# static fields
.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final TAG:Ljava/lang/String; = "SignOutActivity"


# instance fields
.field private state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

.field private status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-void
.end method

.method private finishWithResult()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->toActivityResult(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->finishCompat()V

    return-void
.end method

.method private showBodyFragment(Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    iput-object p1, v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    invoke-virtual {p0, p2, p3, p4}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->showBodyFragment(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishWithResult()V

    return-void
.end method

.method public onClickCloseHeader()V
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickCloseHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishWithResult()V

    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;)V
    .registers 5

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: StartSignInFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$1;->$SwitchMap$com$microsoft$xbox$idp$ui$SignOutFragment$Status:[I

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
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    :goto_1
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishWithResult()V

    return-void

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackSignout(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_activity_auth_flow:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    invoke-direct {p1}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->SIGN_OUT:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void

    :cond_0
    const-string v0, "KEY_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    const-string v1, "KEY_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
