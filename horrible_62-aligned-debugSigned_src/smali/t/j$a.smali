.class public final Lt/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Lt/f;

.field public c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lt/f;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/j$a;->b:Lt/f;

    iput-object p2, p0, Lt/j$a;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    sget-object v1, Lt/j;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lt/j;->a()Lc0/a;

    move-result-object v1

    iget-object v3, v0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v4

    :goto_1
    iget-object v6, v0, Lt/j$a;->b:Lt/f;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lt/j$a;->b:Lt/f;

    new-instance v6, Lt/j$a$a;

    invoke-direct {v6, v0, v1}, Lt/j$a$a;-><init>(Lt/j$a;Lc0/a;)V

    invoke-virtual {v3, v6}, Lt/f;->a(Lt/f$d;)Lt/f;

    iget-object v1, v0, Lt/j$a;->b:Lt/f;

    iget-object v3, v0, Lt/j$a;->c:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Lt/f;->h(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/f;

    iget-object v5, v0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Lt/f;->x(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lt/j$a;->b:Lt/f;

    iget-object v8, v0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lt/f;->l:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lt/f;->m:Ljava/util/ArrayList;

    iget-object v3, v1, Lt/f;->h:Lt/n;

    iget-object v5, v1, Lt/f;->i:Lt/n;

    .line 4
    new-instance v7, Lc0/a;

    iget-object v9, v3, Lt/n;->c:Ljava/lang/Object;

    check-cast v9, Lc0/a;

    invoke-direct {v7, v9}, Lc0/a;-><init>(Lc0/j;)V

    new-instance v9, Lc0/a;

    iget-object v10, v5, Lt/n;->c:Ljava/lang/Object;

    check-cast v10, Lc0/a;

    invoke-direct {v9, v10}, Lc0/a;-><init>(Lc0/j;)V

    const/4 v10, 0x0

    :goto_3
    iget-object v11, v1, Lt/f;->k:[I

    array-length v12, v11

    if-ge v10, v12, :cond_10

    aget v11, v11, v10

    if-eq v11, v2, :cond_d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    const/4 v12, 0x3

    if-eq v11, v12, :cond_9

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move-object v2, v3

    goto/16 :goto_9

    :cond_5
    iget-object v11, v3, Lt/n;->f:Ljava/lang/Object;

    check-cast v11, Lc0/e;

    iget-object v12, v5, Lt/n;->f:Ljava/lang/Object;

    check-cast v12, Lc0/e;

    .line 5
    invoke-virtual {v11}, Lc0/e;->g()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    invoke-virtual {v11, v14}, Lc0/e;->h(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_7

    invoke-virtual {v1, v15}, Lt/f;->s(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 6
    iget-boolean v6, v11, Lc0/e;->b:Z

    if-eqz v6, :cond_6

    invoke-virtual {v11}, Lc0/e;->d()V

    :cond_6
    iget-object v6, v11, Lc0/e;->c:[J

    move-object/from16 v17, v3

    aget-wide v2, v6, v14

    .line 7
    invoke-virtual {v12, v2, v3, v4}, Lc0/e;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Lt/f;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v7, v15}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/m;

    invoke-virtual {v9, v2}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt/m;

    if-eqz v3, :cond_8

    if-eqz v6, :cond_8

    iget-object v4, v1, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lt/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v15}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v2}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    move-object/from16 v17, v3

    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    move-object v2, v3

    .line 9
    iget-object v3, v2, Lt/n;->e:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    iget-object v4, v5, Lt/n;->e:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_f

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_a

    invoke-virtual {v1, v12}, Lt/f;->s(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_a

    invoke-virtual {v1, v13}, Lt/f;->s(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v7, v12}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lt/m;

    invoke-virtual {v9, v13}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt/m;

    if-eqz v14, :cond_a

    if-eqz v15, :cond_a

    iget-object v0, v1, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lt/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v12}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v13}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_b
    move-object v2, v3

    .line 11
    iget-object v0, v2, Lt/n;->d:Ljava/lang/Object;

    check-cast v0, Lc0/a;

    iget-object v3, v5, Lt/n;->d:Ljava/lang/Object;

    check-cast v3, Lc0/a;

    .line 12
    iget v4, v0, Lc0/j;->d:I

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_f

    .line 13
    invoke-virtual {v0, v6}, Lc0/j;->j(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_c

    invoke-virtual {v1, v11}, Lt/f;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v0, v6}, Lc0/j;->h(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_c

    invoke-virtual {v1, v12}, Lt/f;->s(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v7, v11}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lt/m;

    invoke-virtual {v9, v12}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lt/m;

    if-eqz v13, :cond_c

    if-eqz v14, :cond_c

    iget-object v15, v1, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lt/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v11}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_d
    move-object v2, v3

    .line 14
    iget v0, v7, Lc0/j;->d:I

    :cond_e
    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    .line 15
    invoke-virtual {v7, v0}, Lc0/j;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_e

    invoke-virtual {v1, v3}, Lt/f;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v9, v3}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/m;

    if-eqz v3, :cond_e

    iget-object v4, v3, Lt/m;->b:Landroid/view/View;

    if-eqz v4, :cond_e

    invoke-virtual {v1, v4}, Lt/f;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v7, v0}, Lc0/j;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/m;

    iget-object v6, v1, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lt/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v3, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    .line 16
    :goto_a
    iget v2, v7, Lc0/j;->d:I

    if-ge v0, v2, :cond_12

    .line 17
    invoke-virtual {v7, v0}, Lc0/j;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/m;

    iget-object v3, v2, Lt/m;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Lt/f;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v1, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lt/f;->m:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    .line 18
    :goto_b
    iget v2, v9, Lc0/j;->d:I

    if-ge v0, v2, :cond_14

    .line 19
    invoke-virtual {v9, v0}, Lc0/j;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/m;

    iget-object v3, v2, Lt/m;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Lt/f;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v1, Lt/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lt/f;->l:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    const/4 v3, 0x0

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 20
    :cond_14
    invoke-static {}, Lt/f;->o()Lc0/a;

    move-result-object v0

    .line 21
    iget v2, v0, Lc0/j;->d:I

    .line 22
    sget-object v3, Lt/r;->a:Lt/t;

    .line 23
    invoke-virtual {v8}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_d
    if-ltz v2, :cond_1b

    .line 24
    invoke-virtual {v0, v2}, Lc0/j;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_1a

    invoke-virtual {v0, v4}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/f$b;

    if-eqz v5, :cond_1a

    iget-object v6, v5, Lt/f$b;->a:Landroid/view/View;

    if-eqz v6, :cond_1a

    iget-object v6, v5, Lt/f$b;->d:Lt/y;

    .line 25
    instance-of v7, v6, Lt/x;

    if-eqz v7, :cond_15

    check-cast v6, Lt/x;

    iget-object v6, v6, Lt/x;->a:Landroid/view/WindowId;

    invoke-virtual {v6, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_1a

    .line 26
    iget-object v6, v5, Lt/f$b;->c:Lt/m;

    iget-object v7, v5, Lt/f$b;->a:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v1, v7, v9}, Lt/f;->q(Landroid/view/View;Z)Lt/m;

    move-result-object v10

    invoke-virtual {v1, v7, v9}, Lt/f;->n(Landroid/view/View;Z)Lt/m;

    move-result-object v7

    if-nez v10, :cond_16

    if-eqz v7, :cond_17

    :cond_16
    iget-object v5, v5, Lt/f$b;->e:Lt/f;

    invoke-virtual {v5, v6, v7}, Lt/f;->r(Lt/m;Lt/m;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_f
    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v0, v4}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_19
    :goto_10
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_1a
    :goto_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_1b
    iget-object v9, v1, Lt/f;->h:Lt/n;

    iget-object v10, v1, Lt/f;->i:Lt/n;

    iget-object v11, v1, Lt/f;->l:Ljava/util/ArrayList;

    iget-object v12, v1, Lt/f;->m:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lt/f;->l(Landroid/view/ViewGroup;Lt/n;Lt/n;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lt/f;->y()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    sget-object p1, Lt/j;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lt/j;->a()Lc0/a;

    move-result-object p1

    iget-object v0, p0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget-object v1, p0, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lt/f;->x(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lt/j$a;->b:Lt/f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt/f;->i(Z)V

    return-void
.end method
