.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->onUpdateShortCircuitProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method
