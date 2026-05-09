.class public final Landroid/support/v7/view/menu/k;
.super Ln0/e;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/support/v7/view/menu/e;

.field public final e:Landroid/support/v7/view/menu/d;

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Lo0/j0;

.field public final k:Landroid/support/v7/view/menu/k$a;

.field public final l:Landroid/support/v7/view/menu/k$b;

.field public m:Landroid/widget/PopupWindow$OnDismissListener;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/support/v7/view/menu/i$a;

.field public q:Landroid/view/ViewTreeObserver;

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/e;Landroid/view/View;IIZ)V
    .registers 10

    invoke-direct {p0}, Ln0/e;-><init>()V

    new-instance v0, Landroid/support/v7/view/menu/k$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/k$a;-><init>(Landroid/support/v7/view/menu/k;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->k:Landroid/support/v7/view/menu/k$a;

    new-instance v0, Landroid/support/v7/view/menu/k$b;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/k$b;-><init>(Landroid/support/v7/view/menu/k;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->l:Landroid/support/v7/view/menu/k$b;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/k;->u:I

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->c:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/view/menu/k;->d:Landroid/support/v7/view/menu/e;

    iput-boolean p6, p0, Landroid/support/v7/view/menu/k;->f:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/support/v7/view/menu/d;

    const v2, 0x7f0b0013

    invoke-direct {v1, p2, v0, p6, v2}, Landroid/support/v7/view/menu/d;-><init>(Landroid/support/v7/view/menu/e;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroid/support/v7/view/menu/k;->e:Landroid/support/v7/view/menu/d;

    iput p4, p0, Landroid/support/v7/view/menu/k;->h:I

    iput p5, p0, Landroid/support/v7/view/menu/k;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    const v1, 0x7f060017

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Landroid/support/v7/view/menu/k;->g:I

    iput-object p3, p0, Landroid/support/v7/view/menu/k;->n:Landroid/view/View;

    new-instance p3, Lo0/j0;

    invoke-direct {p3, p1, p4, p5}, Lo0/j0;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/e;->c(Landroid/support/v7/view/menu/i;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->d:Landroid/support/v7/view/menu/e;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->p:Landroid/support/v7/view/menu/i$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/i$a;->a(Landroid/support/v7/view/menu/e;Z)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/l;)Z
    .registers 11

    invoke-virtual {p1}, Landroid/support/v7/view/menu/e;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/support/v7/view/menu/h;

    iget-object v3, p0, Landroid/support/v7/view/menu/k;->c:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/view/menu/k;->o:Landroid/view/View;

    iget-boolean v6, p0, Landroid/support/v7/view/menu/k;->f:Z

    iget v7, p0, Landroid/support/v7/view/menu/k;->h:I

    iget v8, p0, Landroid/support/v7/view/menu/k;->i:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/e;Landroid/view/View;ZII)V

    iget-object v2, p0, Landroid/support/v7/view/menu/k;->p:Landroid/support/v7/view/menu/i$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/h;->d(Landroid/support/v7/view/menu/i$a;)V

    invoke-static {p1}, Ln0/e;->u(Landroid/support/v7/view/menu/e;)Z

    move-result v2

    .line 1
    iput-boolean v2, v0, Landroid/support/v7/view/menu/h;->h:Z

    iget-object v3, v0, Landroid/support/v7/view/menu/h;->j:Ln0/e;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ln0/e;->o(Z)V

    .line 2
    :cond_0
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->m:Landroid/widget/PopupWindow$OnDismissListener;

    .line 3
    iput-object v2, v0, Landroid/support/v7/view/menu/h;->k:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Landroid/support/v7/view/menu/k;->m:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroid/support/v7/view/menu/k;->d:Landroid/support/v7/view/menu/e;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/e;->d(Z)V

    iget-object v2, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    .line 5
    iget v3, v2, Lo0/h0;->g:I

    .line 6
    iget-boolean v4, v2, Lo0/h0;->j:Z

    if-nez v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v2, v2, Lo0/h0;->h:I

    .line 7
    :goto_0
    iget v4, p0, Landroid/support/v7/view/menu/k;->u:I

    iget-object v5, p0, Landroid/support/v7/view/menu/k;->n:Landroid/view/View;

    sget-object v6, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    .line 9
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/support/v7/view/menu/k;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 10
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, v0, Landroid/support/v7/view/menu/h;->f:Landroid/view/View;

    if-nez v4, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/support/v7/view/menu/h;->e(IIZZ)V

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->p:Landroid/support/v7/view/menu/i$a;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/i$a;->b(Landroid/support/v7/view/menu/e;)Z

    :cond_5
    return v5

    :cond_6
    return v1
.end method

.method public final d()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->r:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-object v0, p0, Landroid/support/v7/view/menu/k;->o:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    invoke-virtual {v0, p0}, Lo0/h0;->l(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    .line 2
    iput-object p0, v0, Lo0/h0;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3
    invoke-virtual {v0}, Lo0/h0;->k()V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->o:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/view/menu/k;->q:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/menu/k;->q:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/view/menu/k;->k:Landroid/support/v7/view/menu/k$a;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Landroid/support/v7/view/menu/k;->l:Landroid/support/v7/view/menu/k$b;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    .line 4
    iput-object v0, v3, Lo0/h0;->p:Landroid/view/View;

    .line 5
    iget v0, p0, Landroid/support/v7/view/menu/k;->u:I

    .line 6
    iput v0, v3, Lo0/h0;->m:I

    .line 7
    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->s:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->e:Landroid/support/v7/view/menu/d;

    iget-object v4, p0, Landroid/support/v7/view/menu/k;->c:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/view/menu/k;->g:I

    invoke-static {v0, v4, v5}, Ln0/e;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/k;->t:I

    iput-boolean v2, p0, Landroid/support/v7/view/menu/k;->s:Z

    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    iget v4, p0, Landroid/support/v7/view/menu/k;->t:I

    invoke-virtual {v0, v4}, Lo0/h0;->g(I)V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    invoke-virtual {v0}, Lo0/h0;->h()V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    .line 8
    iget-object v4, p0, Ln0/e;->b:Landroid/graphics/Rect;

    .line 9
    iput-object v4, v0, Lo0/h0;->x:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0}, Lo0/h0;->d()V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    .line 11
    iget-object v0, v0, Lo0/h0;->d:Lo0/d0;

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Landroid/support/v7/view/menu/k;->v:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/view/menu/k;->d:Landroid/support/v7/view/menu/e;

    .line 13
    iget-object v4, v4, Landroid/support/v7/view/menu/e;->m:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 14
    iget-object v4, p0, Landroid/support/v7/view/menu/k;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0012

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, Landroid/support/v7/view/menu/k;->d:Landroid/support/v7/view/menu/e;

    .line 15
    iget-object v6, v6, Landroid/support/v7/view/menu/e;->m:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    iget-object v1, p0, Landroid/support/v7/view/menu/k;->e:Landroid/support/v7/view/menu/d;

    invoke-virtual {v0, v1}, Lo0/h0;->f(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    invoke-virtual {v0}, Lo0/h0;->d()V

    :goto_1
    const/4 v1, 0x1

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    return-void

    .line 17
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dismiss()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    invoke-virtual {v0}, Lo0/h0;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroid/support/v7/view/menu/i$a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->p:Landroid/support/v7/view/menu/i$a;

    return-void
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/k;->s:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->e:Landroid/support/v7/view/menu/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    invoke-virtual {v0}, Lo0/h0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    iget-object v0, v0, Lo0/h0;->d:Lo0/d0;

    return-object v0
.end method

.method public final l(Landroid/support/v7/view/menu/e;)V
    .registers 2

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/view/View;

    return-void
.end method

.method public final o(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->e:Landroid/support/v7/view/menu/d;

    iput-boolean p1, v0, Landroid/support/v7/view/menu/d;->d:Z

    return-void
.end method

.method public final onDismiss()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/k;->r:Z

    iget-object v1, p0, Landroid/support/v7/view/menu/k;->d:Landroid/support/v7/view/menu/e;

    .line 1
    invoke-virtual {v1, v0}, Landroid/support/v7/view/menu/e;->d(Z)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->q:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->q:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/k;->k:Landroid/support/v7/view/menu/k$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->q:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->o:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/k;->l:Landroid/support/v7/view/menu/k$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->m:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/view/menu/k;->u:I

    return-void
.end method

.method public final q(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    iput p1, v0, Lo0/h0;->g:I

    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->m:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final s(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->v:Z

    return-void
.end method

.method public final t(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    invoke-virtual {v0, p1}, Lo0/h0;->m(I)V

    return-void
.end method
