.class public Lcom/microsoft/xbox/idp/ui/WelcomeFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;,
        Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final KEY_STATE:Ljava/lang/String; = "WelcomeFragment.KEY_STATE"

.field private static final LOADER_GAMER_IMAGE:I = 0x2

.field private static final LOADER_GAMER_PROFILE:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bitmapCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private bottomBarShadow:Landroid/view/View;

.field private callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

.field private displayNameText:Landroid/widget/TextView;

.field private gamerScoreText:Landroid/widget/TextView;

.field private gamerTagText:Landroid/widget/TextView;

.field private gamerpicView:Landroid/widget/ImageView;

.field private final loaderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final profileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private scrollView:Landroid/widget/ScrollView;

.field private state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

.field private user:Lcom/microsoft/xbox/idp/model/Profile$User;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->$assertionsDisabled:Z

    const-class v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    const-string v0, "WelcomeFragment"

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$4;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$4;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->loaderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;-><init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->bitmapCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;-><init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->profileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v3, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    invoke-direct {v3, v2}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;

    invoke-direct {v2, v1}, Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/ScrollView;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->bottomBarShadow:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerpicView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;Lcom/microsoft/xbox/idp/model/Profile$User;)Lcom/microsoft/xbox/idp/model/Profile$User;
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Ljava/lang/CharSequence;
    .registers 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->displayNameText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerTagText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerScoreText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    return-object p0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->loaderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    const-string p2, "Trying again"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    const-string p2, "onActivityResult"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_done:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCWelcome;->trackDone(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_different_gamer_tag_answer:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCWelcome;->trackChangeUser(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->setIsSilent(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    sget p3, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_welcome:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .registers 2

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "Initializing LOADER_GAMER_PROFILE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    const-string v2, "KEY_RESULT_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "No arguments provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    const-string v1, "WelcomeFragment.KEY_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    new-instance p2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    invoke-direct {p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "WelcomeFragment.KEY_STATE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    :goto_0
    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p2, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_scroll_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->scrollView:Landroid/widget/ScrollView;

    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_bottom_bar_shadow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->bottomBarShadow:Landroid/view/View;

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->scrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_gamerpic:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerpicView:Landroid/widget/ImageView;

    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_display_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->displayNameText:Landroid/widget/TextView;

    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_gamertag:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerTagText:Landroid/widget/TextView;

    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_gamerscore:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerScoreText:Landroid/widget/TextView;

    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_done:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_different_gamer_tag_answer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/microsoft/xbox/idp/R$string;->xbid_different_gamer_tag_answer:I

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "ARG_ALT_BUTTON_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCWelcome;->trackPageView(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    return-void
.end method
