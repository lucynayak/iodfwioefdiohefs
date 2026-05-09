.class Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/HeaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
        "Lcom/microsoft/xbox/idp/model/UserAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Creating LOADER_GET_PROFILE"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object p2

    invoke-interface {p2}, Lcom/microsoft/xbox/idp/services/Endpoints;->accounts()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GET"

    const-string v1, "/users/current/profile"

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "4"

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v6

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v2

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class p2, Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    const/4 v0, 0x1

    invoke-direct {v3, p2, v0}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    const-class v4, Lcom/microsoft/xbox/idp/model/UserAccount;

    new-instance p2, Lp1/k;

    invoke-direct {p2}, Lp1/k;-><init>()V

    invoke-static {p2}, Lcom/microsoft/xbox/idp/model/UserAccount;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object p2

    invoke-virtual {p2}, Lp1/k;->a()Lp1/e;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_GET_PROFILE finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/idp/model/UserAccount;

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$102(Lcom/microsoft/xbox/idp/ui/HeaderFragment;Lcom/microsoft/xbox/idp/model/UserAccount;)Lcom/microsoft/xbox/idp/model/UserAccount;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$200(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/model/UserAccount;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/UserAccount;->firstName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/UserAccount;->lastName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$300(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$300(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$300(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_first_and_last_name_android:I

    new-array v3, p2, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/model/UserAccount;->firstName:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/model/UserAccount;->lastName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$400(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error getting UserAccount"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
