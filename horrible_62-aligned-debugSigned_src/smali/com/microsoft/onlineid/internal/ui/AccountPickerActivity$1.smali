.class Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

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

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p1

    const-string p2, "SDK"

    const-string p4, "Pick an account"

    const-string p5, "via account picker"

    invoke-interface {p1, p2, p4, p5}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$000(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->getCount()I

    move-result p1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$100(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$000(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$200(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
