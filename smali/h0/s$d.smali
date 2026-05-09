.class public final Lh0/s$d;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroid/support/v7/view/menu/e;

.field public f:Lm0/a$a;

.field public g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Lh0/s;


# direct methods
.method public constructor <init>(Lh0/s;Landroid/content/Context;Lm0/a$a;)V
    .registers 4

    iput-object p1, p0, Lh0/s$d;->h:Lh0/s;

    invoke-direct {p0}, Lm0/a;-><init>()V

    iput-object p2, p0, Lh0/s$d;->d:Landroid/content/Context;

    iput-object p3, p0, Lh0/s$d;->f:Lm0/a$a;

    new-instance p1, Landroid/support/v7/view/menu/e;

    invoke-direct {p1, p2}, Landroid/support/v7/view/menu/e;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 1
    iput p2, p1, Landroid/support/v7/view/menu/e;->l:I

    .line 2
    iput-object p1, p0, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    .line 3
    iput-object p0, p1, Landroid/support/v7/view/menu/e;->e:Landroid/support/v7/view/menu/e$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;)V
    .registers 2

    iget-object p1, p0, Lh0/s$d;->f:Lm0/a$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lh0/s$d;->i()V

    iget-object p1, p0, Lh0/s$d;->h:Lh0/s;

    iget-object p1, p1, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    iget-object p1, p1, Lo0/a;->e:Landroid/support/v7/widget/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/a;->m()Z

    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Lh0/s$d;->f:Lm0/a$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lm0/a$a;->c(Lm0/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v1, v0, Lh0/s;->i:Lh0/s$d;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lh0/s;->q:Z

    const/4 v2, 0x0

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iput-object p0, v0, Lh0/s;->j:Lh0/s$d;

    iget-object v1, p0, Lh0/s$d;->f:Lm0/a$a;

    iput-object v1, v0, Lh0/s;->k:Lm0/a$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh0/s$d;->f:Lm0/a$a;

    invoke-interface {v0, p0}, Lm0/a$a;->b(Lm0/a;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh0/s$d;->f:Lm0/a$a;

    iget-object v1, p0, Lh0/s$d;->h:Lh0/s;

    invoke-virtual {v1, v2}, Lh0/s;->a(Z)V

    iget-object v1, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v1, v1, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 1
    iget-object v2, v1, Landroid/support/v7/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->h()V

    .line 2
    :cond_2
    iget-object v1, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v1, v1, Lh0/s;->e:Lo0/b0;

    invoke-interface {v1}, Lo0/b0;->n()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v2, v1, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Lh0/s;->v:Z

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Lh0/s$d;->h:Lh0/s;

    iput-object v0, v1, Lh0/s;->i:Lh0/s$d;

    return-void
.end method

.method public final d()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lh0/s$d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    return-object v0
.end method

.method public final f()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Lm0/f;

    iget-object v1, p0, Lh0/s$d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lm0/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .registers 3

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->i:Lh0/s$d;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->B()V

    :try_start_0
    iget-object v0, p0, Lh0/s$d;->f:Lm0/a$a;

    iget-object v1, p0, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    invoke-interface {v0, p0, v1}, Lm0/a$a;->a(Lm0/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->A()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/e;->A()V

    throw v0
.end method

.method public final j()Z
    .registers 2

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContextView;->s:Z

    return v0
.end method

.method public final k(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh0/s$d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .registers 3

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(I)V
    .registers 3

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lm0/a;->c:Z

    .line 2
    iget-object v0, p0, Lh0/s$d;->h:Lh0/s;

    iget-object v0, v0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
