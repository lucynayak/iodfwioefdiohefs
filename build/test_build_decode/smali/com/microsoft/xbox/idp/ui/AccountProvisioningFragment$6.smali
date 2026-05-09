.class Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;
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
        "Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_GAMERPIC_CHOICE_LIST"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;

    invoke-direct {p1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getOverrideTitleId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getTitleId()I

    move-result v0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v1, "/public/content/ppl/gamerpics/gamerpicsautoassign-%08X.json"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GET"

    const-string v2, "http://dlassets.xboxlive.com"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "3"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v7

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v3

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;

    new-instance p2, Lp1/k;

    invoke-direct {p2}, Lp1/k;-><init>()V

    invoke-static {p2}, Lcom/microsoft/xbox/idp/model/Profile;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object p2

    invoke-virtual {p2}, Lp1/k;->a()Lp1/e;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Finished LOADER_GAMERPIC_CHOICE_LIST"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;->gamerpics:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Got gamerpic choice list"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;->gamerpics:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/model/Profile$GamerpicListEntry;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/Profile$GamerpicListEntry;->id:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/gamerpics/%s-xl.png"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "GAMERPIC_UPDATE_IMAGE_URL_KEY"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to get gamerpic choice list"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    const-string p2, "Service Error - Gamerpic Choice List"

    const-string v0, "Welcome view"

    invoke-static {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    const/4 v1, 0x6

    invoke-direct {p2, v0, v1}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p2, v1, p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$6;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
