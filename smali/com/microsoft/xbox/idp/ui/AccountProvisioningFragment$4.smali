.class Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

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
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_SET_PRIVACY_SETTINGS"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/services/Endpoints;->privacy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUT"

    const-string v2, "/users/me/privacy/settings"

    invoke-direct {p1, v1, v0, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4"

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v7

    invoke-static {}, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->newWithMap()Lcom/microsoft/xbox/idp/model/Privacy$Settings;

    move-result-object p1

    iget-object v0, p1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Value;->PeopleOnMyList:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Value;->Everyone:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp1/k;

    invoke-direct {v0}, Lp1/k;-><init>()V

    invoke-static {v0}, Lcom/microsoft/xbox/idp/model/Privacy;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object v0

    invoke-virtual {v0}, Lp1/k;->a()Lp1/e;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;

    invoke-virtual {v0, p1, v1}, Lp1/e;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v3

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/lang/Void;

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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_SET_PRIVACY_SETTINGS finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasError()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error setting privacy settings: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    const-string p2, "Service Error - Set privacy settings"

    const-string v0, "Sign up view"

    invoke-static {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Privacy settings set successfully"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {p1, p2, v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
