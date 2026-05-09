.class public Lcom/microsoft/xbox/idp/ui/SignUpFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;,
        Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;,
        Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final ARG_ACCOUNT_PROVISIONING_RESULT:Ljava/lang/String; = "ARG_ACCOUNT_PROVISIONING_RESULT"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final LOADER_CLAIM_GAMERTAG:I = 0x1

.field private static final LOADER_RESERVE_GAMERTAG:I = 0x2

.field private static final LOADER_SUGGESTIONS:I = 0x3

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bottomBarShadow:Landroid/view/View;

.field private callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

.field private claimItButton:Landroid/widget/Button;

.field private clearTextButton:Landroid/view/View;

.field private editTextGamerTag:Landroid/widget/EditText;

.field private editTextGamerTagContainer:Landroid/view/View;

.field private final gamerTagChangeListener:Landroid/text/TextWatcher;

.field private final gamerTagClaimCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/GamerTag$Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gamerTagReservationCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field private final loaderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final onSuggestionClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private privacyDetailsText:Landroid/widget/TextView;

.field private privacyText:Landroid/widget/TextView;

.field private provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

.field private scrollView:Landroid/widget/ScrollView;

.field private searchButton:Landroid/view/View;

.field private state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

.field private final suggestionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private suggestionsList:Landroid/widget/AbsListView;

.field private suggestionsListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textGamerTagComment:Landroid/widget/TextView;

.field private final xboxDotComLauncher:Landroid/text/style/ClickableSpan;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->$assertionsDisabled:Z

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    const-string v0, "SignUpFragment"

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$9;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$9;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->loaderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$3;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagChangeListener:Landroid/text/TextWatcher;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$4;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->onSuggestionClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagClaimCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagReservationCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment$8;

    invoke-direct {v4, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$8;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v4, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->xboxDotComLauncher:Landroid/text/style/ClickableSpan;

    new-instance v4, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    invoke-direct {v4, v2}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    invoke-direct {v2, v1}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    invoke-direct {v1, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->bottomBarShadow:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTagContainer:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->resetGamerTagState(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    return-object p0
.end method

.method private resetGamerTagState(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    :goto_0
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->EMPTY:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-boolean v1, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    if-eqz v1, :cond_3

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->hasSuggestions()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    :goto_1
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    return-void

    :cond_5
    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->hasSuggestions()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    :goto_2
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    return-void
.end method

.method private setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V
    .locals 5

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->getStringId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    sget-object v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-eq p1, v4, :cond_1

    sget-object v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-eq p1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    if-eq p1, v1, :cond_3

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->searchButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->searchButton:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->claimItButton:Landroid/widget/Button;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-eq p1, v1, :cond_6

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne p1, v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne p1, v0, :cond_7

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-eq v1, p1, :cond_7

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->hasSuggestions()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/Suggestions$Response;->Gamertags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_6

    :cond_7
    if-eq p1, v0, :cond_9

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne v1, v0, :cond_9

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_9
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->clearTextButton:Landroid/view/View;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v2, 0x8

    :cond_a
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    return-void
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->loaderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string p2, "Trying again"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string p2, "onActivityResult"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_enter_gamertag_comment:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_search:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_aleady_have_gamer_tag_answer:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackSignInWithDifferentUser(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->setIsSilent(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    return-void

    :cond_1
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_claim_it:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v0, "Interop.SignUpStatus.NO_ERROR"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v0, "Restarting LOADER_CLAIM_GAMERTAG"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagClaimCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackClaimGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_clear_text:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackClearGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_1
    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v0, "Restarting LOADER_RESERVE_GAMERTAG"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackSearchGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagReservationCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v0, "No arguments provided"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    goto :goto_0

    :cond_0
    const-string v0, "ARG_ACCOUNT_PROVISIONING_RESULT"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v0, "No ARG_ACCOUNT_PROVISIONING_RESULT"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_sign_up:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->restartLoader()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    const-string v1, "KEY_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_scroll_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->scrollView:Landroid/widget/ScrollView;

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_bottom_bar_shadow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->bottomBarShadow:Landroid/view/View;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->scrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_enter_gamertag_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTagContainer:Landroid/view/View;

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_enter_gamertag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_clear_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->clearTextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->searchButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_enter_gamertag_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_privacy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->privacyText:Landroid/widget/TextView;

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_privacy_details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->privacyDetailsText:Landroid/widget/TextView;

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_aleady_have_gamer_tag_answer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_another_sign_in:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_claim_it:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->claimItButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_suggestions_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsList:Landroid/widget/AbsListView;

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/microsoft/xbox/idp/R$layout;->xbid_row_suggestion:I

    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_suggestion_text:I

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsList:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsList:Landroid/widget/AbsListView;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->onSuggestionClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_ACCOUNT_PROVISIONING_RESULT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackPageView(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getAgeGroup()Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    move-result-object p1

    if-nez p2, :cond_1

    new-instance p2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-direct {p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getGamerTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "KEY_STATE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->resetGamerTagState(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p2, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->privacyText:Landroid/widget/TextView;

    sget v0, Lcom/microsoft/xbox/idp/R$string;->xbid_privacy_settings_header_android:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->resIdAgeGroup:I

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->privacyDetailsText:Landroid/widget/TextView;

    iget p1, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->resIdAgeGroupDetails:I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->xboxDotComLauncher:Landroid/text/style/ClickableSpan;

    invoke-static {p2, p1, v0}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureClickableSpanOnUnderlineSpan(Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)V

    return-void
.end method
