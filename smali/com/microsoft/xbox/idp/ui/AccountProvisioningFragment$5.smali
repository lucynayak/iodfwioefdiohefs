.class Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$5;
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
        "Lcom/microsoft/xbox/idp/model/Profile$GamerpicUpdateResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicUpdateResponse;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_GAMERPIC_UPDATE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChangeRequest;

    const-string v0, "GAMERPIC_UPDATE_IMAGE_URL_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChangeRequest;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/services/Endpoints;->profile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    const-string v3, "/users/me/profile/settings/PublicGamerpic"

    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v8

    new-instance v0, Lp1/k;

    invoke-direct {v0}, Lp1/k;-><init>()V

    invoke-virtual {v0}, Lp1/k;->a()Lp1/e;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChangeRequest;

    invoke-virtual {v0, p1, v1}, Lp1/e;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lcom/microsoft/xbox/idp/model/Profile$GamerpicUpdateResponse;

    new-instance p2, Lp1/k;

    invoke-direct {p2}, Lp1/k;-><init>()V

    invoke-static {p2}, Lcom/microsoft/xbox/idp/model/Profile;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object p2

    invoke-virtual {p2}, Lp1/k;->a()Lp1/e;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicUpdateResponse;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicUpdateResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Finished LOADER_GAMERPIC_UPDATE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasError()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    const-string p2, "Service Error - Gamerpic Update"

    const-string v0, "Introducing view"

    invoke-static {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to update gamerpic"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    const/4 v1, 0x6

    invoke-direct {p2, v0, v1}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p2, v1, p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$5;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicUpdateResponse;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
