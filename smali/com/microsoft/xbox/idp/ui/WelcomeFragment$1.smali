.class Lcom/microsoft/xbox/idp/ui/WelcomeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$100(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$000(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/UiUtil;->canScroll(Landroid/widget/ScrollView;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
