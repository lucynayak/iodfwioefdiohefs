.class public Lcom/microsoft/xbox/idp/ui/OfflineErrorFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    sget p3, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_error_offline:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
