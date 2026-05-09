.class public abstract Lcom/microsoft/xbox/idp/ui/AuthActivity;
.super Lcom/microsoft/xbox/idp/compat/BaseActivity;
.source "SourceFile"


# static fields
.field public static final RESULT_PROVIDER_ERROR:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;-><init>()V

    return-void
.end method

.method public static fromActivityResult(I)Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-object p0
.end method

.method public static toActivityResult(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;)I
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthActivity$1;->$SwitchMap$com$microsoft$xbox$idp$interop$Interop$AuthFlowScreenStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public finishCompat()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public showBodyFragment(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz p3, :cond_0

    sget p3, Lcom/microsoft/xbox/idp/R$id;->xbid_header_fragment:I

    invoke-virtual {v0, p3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    sget p3, Lcom/microsoft/xbox/idp/R$id;->xbid_header_fragment:I

    invoke-virtual {v0, p3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_body_fragment:I

    invoke-virtual {v1, p2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
