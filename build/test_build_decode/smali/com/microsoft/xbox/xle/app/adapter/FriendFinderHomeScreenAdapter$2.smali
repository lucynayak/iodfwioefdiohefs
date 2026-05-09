.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isEnterKey:Z

.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

.field public final synthetic val$activityName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;->isEnterKey:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;->isEnterKey:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;->val$activityName:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackGamertagSearchSubmit(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-static {p2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertag(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
