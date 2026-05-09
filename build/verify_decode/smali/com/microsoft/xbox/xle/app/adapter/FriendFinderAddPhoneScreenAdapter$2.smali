.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
