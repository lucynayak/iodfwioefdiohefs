.class Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;
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
        "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_GET_PRIVACY_SETTINGS"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/services/Endpoints;->privacy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    const-string v2, "/users/me/privacy/settings"

    invoke-direct {p1, v1, v0, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4"

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v7

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v3

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/microsoft/xbox/idp/model/Privacy$Settings;

    new-instance p2, Lp1/k;

    invoke-direct {p2}, Lp1/k;-><init>()V

    invoke-static {p2}, Lcom/microsoft/xbox/idp/model/Privacy;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object p2

    invoke-virtual {p2}, Lp1/k;->a()Lp1/e;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_GET_PRIVACY_SETTINGS finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Got privacy settings"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;

    iget-object p2, p1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->isSettingSet(Lcom/microsoft/xbox/idp/model/Privacy$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->isSettingSet(Lcom/microsoft/xbox/idp/model/Privacy$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShareIdentity and ShareIdentityTransitively are NotSet"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    const/4 v1, 0x7

    invoke-direct {p2, v0, v1}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p2, v1, p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareIdentity or ShareIdentityTransitively are set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareIdentity: "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShareIdentityTransitively: "

    .line 3
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {p1, p2, v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Privacy settings map is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {p1, p2, v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error getting privacy settings: "

    .line 5
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    const-string p2, "Service Error - Load privacy settings"

    const-string v0, "Sign up view"

    invoke-static {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
