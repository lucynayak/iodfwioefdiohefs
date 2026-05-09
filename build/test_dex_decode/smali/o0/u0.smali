.class public final Lo0/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final b:Ln0/a;

.field public final synthetic c:Landroid/support/v7/widget/t;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/t;)V
    .locals 2

    iput-object p1, p0, Lo0/u0;->c:Landroid/support/v7/widget/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln0/a;

    iget-object v1, p1, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Landroid/support/v7/widget/t;->i:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, p1}, Ln0/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lo0/u0;->b:Ln0/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lo0/u0;->c:Landroid/support/v7/widget/t;

    iget-object v0, p1, Landroid/support/v7/widget/t;->l:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Landroid/support/v7/widget/t;->m:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object v1, p0, Lo0/u0;->b:Ln0/a;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
