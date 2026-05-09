.class Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;
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
        "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_XTOKEN"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v0, "ARG_USER_PTR"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-class v0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v5

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;-><init>(Landroid/content/Context;JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_XTOKEN finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$302(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;)Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    new-instance p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$100(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/model/UserAccount;->gamerTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$100(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/UserAccount;->userXuid:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$300(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;->getAuthFlowResult()Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getAgeGroup()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->fromServiceString(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ageGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p2, p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->setAgeGroup(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;)V

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    if-eq p1, p2, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {p1, p2, v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown age group"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {p1, p2, v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_XTOKEN: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    const-string p2, "Service Error - Load XTOKEN"

    const-string v0, "Sign up view"

    invoke-static {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
