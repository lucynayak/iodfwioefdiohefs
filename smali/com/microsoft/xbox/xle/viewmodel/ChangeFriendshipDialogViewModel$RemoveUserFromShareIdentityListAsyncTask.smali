.class Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveUserFromShareIdentityListAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

.field private usersToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->usersToAdd:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 4

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->usersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->removeUserFromShareIdentity(ZLjava/util/ArrayList;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

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

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 1

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->access$500(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->access$402(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z

    return-void
.end method
