.class public Lcom/microsoft/xbox/idp/ui/MSAFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/MSAFragment$State;,
        Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final ARG_SECURITY_POLICY:Ljava/lang/String; = "ARG_SECURITY_POLICY"

.field public static final ARG_SECURITY_SCOPE:Ljava/lang/String; = "ARG_SECURITY_SCOPE"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

.field private currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

.field private state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->$assertionsDisabled:Z

    const-class v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    const-string v0, "MSAFragment"

    sput-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/MSAFragment$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    return-void
.end method


# virtual methods
.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .locals 0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;->cid:Ljava/lang/String;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/jobs/MSAJob;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_SECURITY_POLICY"

    const-string v2, "ARG_SECURITY_SCOPE"

    if-nez p1, :cond_3

    const/4 p1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v1, "Intent has no extras"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v0, v1, p1, p1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v1, "No security scope"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v0, v1, p1, p1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v1, "No security policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v0, v1, p1, p1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-void

    :cond_2
    new-instance p1, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    invoke-direct {p1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    new-instance p1, Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1, p0, v2, v0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    return-void

    :cond_3
    const-string v3, "KEY_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    new-instance p1, Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, p0, v2, v0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_busy:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .locals 2

    sget-object p1, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There was a problem acquiring an account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    instance-of p2, p2, Lcom/microsoft/onlineid/exception/NetworkException;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    const-string v1, "KEY_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 2

    sget-object p1, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v0, "Signed out during sing in - should not be here."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .locals 2

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;->cid:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p2}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-void
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 2

    sget-object p1, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v0, "Must show UI to acquire an account. Should not be here"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-void
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 2

    sget-object p1, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v0, "The user cancelled the UI to acquire a ticket."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    return-void
.end method
