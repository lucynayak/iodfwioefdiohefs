.class public Lcom/microsoft/xbox/idp/ui/SignOutFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;,
        Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final LOADER_SIGN_OUT:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

.field private final loaderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final signOutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->$assertionsDisabled:Z

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    const-string v0, "SignOutFragment"

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->loaderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)V

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->signOutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;

    const-class v3, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    invoke-direct {v2, v3, v1}, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;-><init>(Ljava/lang/Class;Landroid/app/LoaderManager$LoaderCallbacks;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    return-object p0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->loaderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->TAG:Ljava/lang/String;

    const-string p2, "Trying again"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const-class p1, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ResultCache;->clear()V

    new-instance p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    invoke-direct {p1}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "KEY_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

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

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->TAG:Ljava/lang/String;

    const-string v2, "Initializing LOADER_SIGN_OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v2, Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    const-string v2, "KEY_RESULT_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    const-string v1, "KEY_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
