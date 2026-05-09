.class public abstract Lcom/microsoft/xbox/idp/compat/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public addFragment(ILcom/microsoft/xbox/idp/compat/BaseFragment;)V
    .registers 4
    .param p1, "fragmentId"    # I
    .param p2, "fragment"    # Lcom/microsoft/xbox/idp/compat/BaseFragment;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 15
    return-void
.end method

.method public hasFragment(I)Z
    .registers 3
    .param p1, "fragmentId"    # I

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
