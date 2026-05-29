.class public final Lm0/e;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm0/a;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lm0/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lm0/e;->b:Lm0/a;

    return-void
.end method


# virtual methods
.method public final finish()V
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0}, Lm0/a;->c()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0}, Lm0/a;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .registers 4

    iget-object v0, p0, Lm0/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v1}, Lm0/a;->e()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Ly/a;

    new-instance v2, Ln0/f;

    invoke-direct {v2, v0, v1}, Ln0/f;-><init>(Landroid/content/Context;Ly/a;)V

    return-object v2
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0}, Lm0/a;->f()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0}, Lm0/a;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    iget-object v0, v0, Lm0/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0}, Lm0/a;->h()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    iget-boolean v0, v0, Lm0/a;->c:Z

    return v0
.end method

.method public final invalidate()V
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0}, Lm0/a;->i()V

    return-void
.end method

.method public final isTitleOptional()Z
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0}, Lm0/a;->j()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0, p1}, Lm0/a;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .registers 3

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0, p1}, Lm0/a;->l(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0, p1}, Lm0/a;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    iput-object p1, v0, Lm0/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .registers 3

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0, p1}, Lm0/a;->n(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0, p1}, Lm0/a;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .registers 3

    iget-object v0, p0, Lm0/e;->b:Lm0/a;

    invoke-virtual {v0, p1}, Lm0/a;->p(Z)V

    return-void
.end method
