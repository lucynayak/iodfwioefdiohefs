.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

.field public final synthetic val$activityName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;->val$activityName:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackGamertagSearchSubmit(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-static {p2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertag(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
