.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
