.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$200(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lcom/microsoft/xbox/idp/R$drawable;->xbid_edit_text_state_focused:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/microsoft/xbox/idp/R$drawable;->xbid_edit_text_state_normal:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
