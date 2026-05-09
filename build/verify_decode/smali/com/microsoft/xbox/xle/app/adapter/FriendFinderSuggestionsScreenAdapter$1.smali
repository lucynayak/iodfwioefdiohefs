.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p4

    invoke-interface {p4, p3, p2, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    move-result-object p1

    sget p2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Phone_Next_ButtonText:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    move-result-object p1

    sget p2, Lcom/microsoft/xboxtcui/R$string;->Profile_Profile_AddFriend:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    move-result-object p1

    sget p2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_AddFriends:I

    goto :goto_0
.end method
