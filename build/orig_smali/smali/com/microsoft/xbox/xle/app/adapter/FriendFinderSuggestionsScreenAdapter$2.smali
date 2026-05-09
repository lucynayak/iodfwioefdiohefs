.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->addSuggestions(Ljava/util/ArrayList;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToSkip()V

    return-void
.end method
