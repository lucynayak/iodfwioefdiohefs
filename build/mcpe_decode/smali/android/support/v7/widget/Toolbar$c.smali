.class public final Landroid/support/v7/widget/Toolbar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Landroid/support/v7/view/menu/e;

.field public c:Landroid/support/v7/view/menu/g;

.field public final synthetic d:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Z)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/l;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroid/support/v7/view/menu/g;)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    instance-of v1, v0, Lm0/b;

    if-eqz v1, :cond_0

    check-cast v0, Lm0/b;

    invoke-interface {v0}, Lm0/b;->e()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    .line 1
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iput-object v1, p0, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Landroid/support/v7/view/menu/g;->C:Z

    iget-object p1, p1, Landroid/support/v7/view/menu/g;->n:Landroid/support/v7/view/menu/e;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/e;->r(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Landroid/content/Context;Landroid/support/v7/view/menu/e;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$c;->b:Landroid/support/v7/view/menu/e;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/e;->e(Landroid/support/v7/view/menu/g;)Z

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$c;->b:Landroid/support/v7/view/menu/e;

    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->b:Landroid/support/v7/view/menu/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar$c;->b:Landroid/support/v7/view/menu/e;

    invoke-virtual {v3, v2}, Landroid/support/v7/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar$c;->c(Landroid/support/v7/view/menu/g;)Z

    :cond_2
    return-void
.end method

.method public final k(Landroid/support/v7/view/menu/g;)Z
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    .line 1
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    const v2, 0x800003

    const/4 v3, 0x2

    if-nez v1, :cond_0

    new-instance v1, Lo0/k;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f030270

    invoke-direct {v1, v4, v5, v6}, Lo0/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Lo0/k;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Landroid/support/v7/widget/Toolbar$d;

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar$d;-><init>()V

    .line 3
    iget v4, v0, Landroid/support/v7/widget/Toolbar;->o:I

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v2

    iput v4, v1, Lh0/a$a;->a:I

    iput v3, v1, Landroid/support/v7/widget/Toolbar$d;->b:I

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    new-instance v4, Lo0/t0;

    invoke-direct {v4, v0}, Lo0/t0;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_2

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->i:Lo0/k;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_4

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Landroid/support/v7/widget/Toolbar$d;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$d;-><init>()V

    .line 6
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget v4, v1, Landroid/support/v7/widget/Toolbar;->o:I

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v2, v4

    iput v2, v0, Lh0/a$a;->a:I

    iput v3, v0, Landroid/support/v7/widget/Toolbar$d;->b:I

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :cond_5
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar$d;

    iget v4, v4, Landroid/support/v7/widget/Toolbar$d;->b:I

    if-eq v4, v3, :cond_5

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eq v2, v4, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Landroid/support/v7/view/menu/g;->C:Z

    iget-object p1, p1, Landroid/support/v7/view/menu/g;->n:Landroid/support/v7/view/menu/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/view/menu/e;->r(Z)V

    .line 10
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$c;->d:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    instance-of v1, p1, Lm0/b;

    if-eqz v1, :cond_7

    check-cast p1, Lm0/b;

    invoke-interface {p1}, Lm0/b;->c()V

    :cond_7
    return v0
.end method
