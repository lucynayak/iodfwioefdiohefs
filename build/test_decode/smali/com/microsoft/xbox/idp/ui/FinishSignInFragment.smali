.class public Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;,
        Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final ARG_AUTH_STATUS:Ljava/lang/String; = "ARG_AUTH_STATUS"

.field public static final ARG_CID:Ljava/lang/String; = "ARG_CID"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final LOADER_FINISH_SIGN_IN:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

.field private final finishSignInCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final loaderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->$assertionsDisabled:Z

    const-class v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    const-string v0, "FinishSignInFragment"

    sput-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->loaderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)V

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->finishSignInCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;

    const-class v3, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    invoke-direct {v2, v3, v1}, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;-><init>(Ljava/lang/Class;Landroid/app/LoaderManager$LoaderCallbacks;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    return-object p0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->loaderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string p2, "Trying again"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v0, "No arguments"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    return-void

    :cond_0
    const-string v1, "ARG_AUTH_STATUS"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v0, "No ARG_AUTH_STATUS"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    return-void

    :cond_1
    const-string v1, "ARG_CID"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v0, "No ARG_CID"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    invoke-direct {p1}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;-><init>()V

    goto :goto_0

    :cond_3
    const-string v0, "KEY_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p1, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

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

    sget-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    sget-object v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v2, "Initializing LOADER_FINISH_SIGN_IN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    const-string v2, "KEY_RESULT_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;Z)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    const-string v1, "KEY_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
