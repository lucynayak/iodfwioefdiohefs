.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadContactsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 2

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onError()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;Z)Z

    return-void
.end method
