.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsCallMe(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->callMe()V

    return-void
.end method
