.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;
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
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsNext(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->verifyCode(Ljava/lang/String;)V

    return-void
.end method
