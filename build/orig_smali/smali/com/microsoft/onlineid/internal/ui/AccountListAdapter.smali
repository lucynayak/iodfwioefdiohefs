.class public Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;
.super Lcom/microsoft/onlineid/ui/AbstractListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/ui/AbstractListAdapter<",
        "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
        ">;"
    }
.end annotation


# instance fields
.field public final _applicationContext:Landroid/content/Context;

.field private final _imageUserTileResId:I

.field public final _resources:Lcom/microsoft/onlineid/internal/Resources;

.field private final _textEmailResId:I

.field private final _textFirstLastResId:I

.field public final _visibleAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_visibleAccounts:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_imageUserTileResId:I

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textFirstLastResId:I

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textEmailResId:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_visibleAccounts:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/internal/Resources;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string p1, "imageUserTile"

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_imageUserTileResId:I

    const-string p1, "textFirstLast"

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textFirstLastResId:I

    const-string p1, "textEmail"

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textEmailResId:I

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v0, "account_picker_tile"

    invoke-virtual {p2, v0}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->setupBasicAccountViews(Landroid/view/View;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChanged()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->onChanged()V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_visibleAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setupBasicAccountViews(Landroid/view/View;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 3

    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_imageUserTileResId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textFirstLastResId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textEmailResId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDisplayName()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_applicationContext:Landroid/content/Context;

    invoke-direct {p1, v1, p2, v0}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;-><init>(Landroid/content/Context;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Landroid/widget/ImageView;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
