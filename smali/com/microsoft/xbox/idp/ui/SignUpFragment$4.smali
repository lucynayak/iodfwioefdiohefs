.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$4;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$4;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$4;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$400(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/ArrayAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
