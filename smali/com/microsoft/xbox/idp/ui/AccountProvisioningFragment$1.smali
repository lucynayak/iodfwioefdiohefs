.class Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;
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
        "Lcom/microsoft/xbox/idp/model/UserAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 15
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

    const/4 v0, 0x1

    const-string v1, "KEY_RESULT_KEY"

    const-string v2, "4"

    const-string v3, "/users/current/profile"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_POST_PROFILE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/services/Endpoints;->userAccount()Ljava/lang/String;

    move-result-object v0

    const-string v4, "POST"

    invoke-direct {p1, v4, v0, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v11

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$100(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/microsoft/xbox/idp/model/UserAccount;->touAcceptanceDate:Ljava/util/Date;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/microsoft/xbox/idp/model/UserAccount;->msftOptin:Z

    iget-object v0, p1, Lcom/microsoft/xbox/idp/model/UserAccount;->legalCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/microsoft/xbox/idp/model/UserAccount;->legalCountry:Ljava/lang/String;

    :cond_1
    new-instance v0, Lp1/k;

    invoke-direct {v0}, Lp1/k;-><init>()V

    invoke-static {v0}, Lcom/microsoft/xbox/idp/model/UserAccount;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object v0

    invoke-virtual {v0}, Lp1/k;->a()Lp1/e;

    move-result-object v0

    const-class v2, Lcom/microsoft/xbox/idp/model/UserAccount;

    invoke-virtual {v0, p1, v2}, Lp1/e;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v7

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-class v9, Lcom/microsoft/xbox/idp/model/UserAccount;

    new-instance p2, Lp1/k;

    invoke-direct {p2}, Lp1/k;-><init>()V

    invoke-static {p2}, Lcom/microsoft/xbox/idp/model/UserAccount;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object p2

    invoke-virtual {p2}, Lp1/k;->a()Lp1/e;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p1

    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_GET_PROFILE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/services/Endpoints;->userAccount()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GET"

    invoke-direct {p1, v4, v0, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v11

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v7

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-class v9, Lcom/microsoft/xbox/idp/model/UserAccount;

    new-instance p2, Lp1/k;

    invoke-direct {p2}, Lp1/k;-><init>()V

    invoke-static {p2}, Lcom/microsoft/xbox/idp/model/UserAccount;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object p2

    invoke-virtual {p2}, Lp1/k;->a()Lp1/e;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .registers 10
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

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "KEY_RESULT_KEY"

    const-string v2, "Got UserAccount"

    const-string v3, "Sign up view"

    const-string v4, "Service Error - Profile Load"

    const-string v5, "Error getting UserAccount"

    const/4 v6, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v6, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_POST_PROFILE finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/idp/model/UserAccount;

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$102(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;Lcom/microsoft/xbox/idp/model/UserAccount;)Lcom/microsoft/xbox/idp/model/UserAccount;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ARG_USER_PTR"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    const/4 v2, 0x3

    invoke-direct {p1, v0, v2}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p1, v2, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_GET_PROFILE finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/idp/model/UserAccount;

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$102(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;Lcom/microsoft/xbox/idp/model/UserAccount;)Lcom/microsoft/xbox/idp/model/UserAccount;

    new-instance p1, Landroid/os/Bundle;

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance p2, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {p2, v0, v6}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p2, v6, p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    return-void

    :cond_3
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
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
