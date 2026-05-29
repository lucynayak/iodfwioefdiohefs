.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToPhoneSuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->access$002(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Z)Z

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    return-void
.end method
