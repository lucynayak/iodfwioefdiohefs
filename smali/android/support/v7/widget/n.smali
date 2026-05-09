.class public final Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/c$b;


# instance fields
.field public final synthetic a:Landroid/support/v7/widget/m;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/m;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final d(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {v0}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
