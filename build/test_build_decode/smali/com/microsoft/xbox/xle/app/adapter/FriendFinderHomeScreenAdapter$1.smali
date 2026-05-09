.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertag(Ljava/lang/String;)V

    return-void
.end method
