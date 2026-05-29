.class public Lt/d;
.super Landroid/support/v4/app/a0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/a0;-><init>()V

    return-void
.end method

.method public static u(Lt/f;)Z
    .registers 2

    .line 1
    iget-object p0, p0, Lt/f;->f:Ljava/util/ArrayList;

    .line 2
    invoke-static {p0}, Landroid/support/v4/app/a0;->j(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/support/v4/app/a0;->j(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/app/a0;->j(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_0

    check-cast p1, Lt/f;

    invoke-virtual {p1, p2}, Lt/f;->b(Landroid/view/View;)Lt/f;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lt/f;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lt/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lt/k;

    .line 1
    iget-object v0, p1, Lt/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Lt/k;->I(I)Lt/f;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lt/d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lt/d;->u(Lt/f;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p1, Lt/f;->g:Ljava/util/ArrayList;

    .line 4
    invoke-static {v0}, Landroid/support/v4/app/a0;->j(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lt/f;->b(Landroid/view/View;)Lt/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lt/f;

    .line 1
    sget-object v0, Lt/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lt/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lt/f;->j()Lt/f;

    move-result-object p2

    .line 4
    invoke-static {}, Lt/j;->a()Lc0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f;

    invoke-virtual {v1, p1}, Lt/f;->u(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lt/f;->h(Landroid/view/ViewGroup;Z)V

    :cond_1
    const v0, 0x7f08016c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/e;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 7
    new-instance v0, Lt/j$a;

    invoke-direct {v0, p2, p1}, Lt/j$a;-><init>(Lt/f;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 8
    :cond_2
    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lt/f;

    return p1
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_0

    check-cast p1, Lt/f;

    invoke-virtual {p1}, Lt/f;->j()Lt/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lt/k;

    invoke-direct {v0}, Lt/k;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Lt/f;

    invoke-virtual {v0, p1}, Lt/k;->H(Lt/f;)Lt/k;

    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Lt/f;

    invoke-virtual {v0, p2}, Lt/k;->H(Lt/f;)Lt/k;

    :cond_1
    if-eqz p3, :cond_2

    check-cast p3, Lt/f;

    invoke-virtual {v0, p3}, Lt/k;->H(Lt/f;)Lt/k;

    :cond_2
    return-object v0
.end method

.method public final l(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_0

    check-cast p1, Lt/f;

    invoke-virtual {p1, p2}, Lt/f;->w(Landroid/view/View;)Lt/f;

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lt/f;

    instance-of v0, p1, Lt/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lt/k;

    .line 1
    iget-object v0, p1, Lt/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    invoke-virtual {p1, v1}, Lt/k;->I(I)Lt/f;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lt/d;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lt/d;->u(Lt/f;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p1, Lt/f;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lt/f;->b(Landroid/view/View;)Lt/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lt/f;->w(Landroid/view/View;)Lt/f;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final n(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lt/f;

    new-instance v0, Lt/d$b;

    invoke-direct {v0, p2, p3}, Lt/d$b;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lt/f;->a(Lt/f$d;)Lt/f;

    return-void
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lt/f;

    new-instance v9, Lt/d$c;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lt/d$c;-><init>(Lt/d;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lt/f;->a(Lt/f$d;)Lt/f;

    return-void
.end method

.method public final p(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_0

    check-cast p1, Lt/f;

    new-instance p2, Lt/d$d;

    invoke-direct {p2}, Lt/d$d;-><init>()V

    invoke-virtual {p1, p2}, Lt/f;->A(Lt/f$c;)V

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_0

    check-cast p1, Lt/f;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/app/a0;->i(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance p2, Lt/d$a;

    invoke-direct {p2}, Lt/d$a;-><init>()V

    invoke-virtual {p1, p2}, Lt/f;->A(Lt/f$c;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lt/k;

    .line 1
    iget-object v0, p1, Lt/f;->g:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v0, v3}, Landroid/support/v4/app/a0;->d(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Lt/d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lt/k;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lt/f;->g:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p1, Lt/f;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Lt/d;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lt/k;

    invoke-direct {v0}, Lt/k;-><init>()V

    check-cast p1, Lt/f;

    invoke-virtual {v0, p1}, Lt/k;->H(Lt/f;)Lt/k;

    return-object v0
.end method
