.class Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadUserProfileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;)V

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ModelBase;->shouldRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->shouldRefreshProfileSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadSync(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadProfileSummary(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 2

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic onError()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onLoadUserProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onLoadUserProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->access$302(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->access$400(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V

    return-void
.end method
