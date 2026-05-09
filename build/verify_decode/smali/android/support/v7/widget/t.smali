.class public final Landroid/support/v7/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/b0;


# instance fields
.field public a:Landroid/support/v7/widget/Toolbar;

.field public b:I

.field public c:Landroid/support/v7/widget/r;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/view/Window$Callback;

.field public m:Z

.field public n:Landroid/support/v7/widget/a;

.field public o:I

.field public p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/t;->o:I

    iput-object p1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/t;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/t;->j:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/v7/widget/t;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/t;->h:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/t;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, La3/r0;->d:[I

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v3}, Lo0/s0;->n(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lo0/s0;

    move-result-object p1

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/t;->p:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x1b

    invoke-virtual {p1, v1}, Lo0/s0;->l(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2
    iput-boolean v2, p0, Landroid/support/v7/widget/t;->h:Z

    .line 3
    iput-object v1, p0, Landroid/support/v7/widget/t;->i:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/support/v7/widget/t;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v1, 0x19

    .line 4
    invoke-virtual {p1, v1}, Lo0/s0;->l(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iput-object v1, p0, Landroid/support/v7/widget/t;->j:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/support/v7/widget/t;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 v1, 0x14

    .line 6
    invoke-virtual {p1, v1}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    iput-object v1, p0, Landroid/support/v7/widget/t;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->y()V

    :cond_3
    const/16 v1, 0x11

    .line 8
    invoke-virtual {p1, v1}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/t;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/t;->g:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/t;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 9
    iput-object v1, p0, Landroid/support/v7/widget/t;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->x()V

    :cond_5
    const/16 v1, 0xa

    .line 10
    invoke-virtual {p1, v1, v0}, Lo0/s0;->i(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/t;->v(I)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lo0/s0;->k(II)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 11
    iget-object v2, p0, Landroid/support/v7/widget/t;->d:Landroid/view/View;

    if-eqz v2, :cond_6

    iget v3, p0, Landroid/support/v7/widget/t;->b:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iput-object v1, p0, Landroid/support/v7/widget/t;->d:Landroid/view/View;

    if-eqz v1, :cond_7

    iget v2, p0, Landroid/support/v7/widget/t;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    :cond_7
    iget v1, p0, Landroid/support/v7/widget/t;->b:I

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/t;->v(I)V

    :cond_8
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lo0/s0;->j(II)I

    move-result v1

    if-lez v1, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lo0/s0;->d(II)I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lo0/s0;->d(II)I

    move-result v2

    if-gez v1, :cond_a

    if-ltz v2, :cond_b

    :cond_a
    iget-object v3, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 13
    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->c()V

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->u:Lo0/l0;

    invoke-virtual {v3, v1, v2}, Lo0/l0;->a(II)V

    :cond_b
    const/16 v1, 0x1c

    .line 14
    invoke-virtual {p1, v1, v0}, Lo0/s0;->k(II)I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v2, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 15
    iput v1, v2, Landroid/support/v7/widget/Toolbar;->m:I

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->c:Lo0/x;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v3, v1}, Lo0/x;->setTextAppearance(Landroid/content/Context;I)V

    :cond_c
    const/16 v1, 0x1a

    .line 16
    invoke-virtual {p1, v1, v0}, Lo0/s0;->k(II)I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v2, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 17
    iput v1, v2, Landroid/support/v7/widget/Toolbar;->n:I

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->d:Lo0/x;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v3, v1}, Lo0/x;->setTextAppearance(Landroid/content/Context;I)V

    :cond_d
    const/16 v1, 0x16

    .line 18
    invoke-virtual {p1, v1, v0}, Lo0/s0;->k(II)I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    :cond_e
    invoke-virtual {p1}, Lo0/s0;->o()V

    .line 19
    iget p1, p0, Landroid/support/v7/widget/t;->o:I

    const v0, 0x7f0d0001

    if-ne v0, p1, :cond_f

    goto :goto_2

    :cond_f
    iput v0, p0, Landroid/support/v7/widget/t;->o:I

    iget-object p1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget p1, p0, Landroid/support/v7/widget/t;->o:I

    if-nez p1, :cond_10

    goto :goto_1

    .line 20
    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/t;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    :goto_1
    iput-object v4, p0, Landroid/support/v7/widget/t;->k:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->w()V

    .line 22
    :cond_11
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/t;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lo0/u0;

    invoke-direct {v0, p0}, Lo0/u0;-><init>(Landroid/support/v7/widget/t;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/a;

    if-eqz v0, :cond_2

    .line 3
    iget-object v3, v0, Landroid/support/v7/widget/a;->w:Landroid/support/v7/widget/a$c;

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->n()Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/Menu;Landroid/support/v7/view/menu/i$a;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/t;->n:Landroid/support/v7/widget/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/a;

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/t;->n:Landroid/support/v7/widget/a;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/t;->n:Landroid/support/v7/widget/a;

    .line 1
    iput-object p2, v0, Landroid/support/v7/view/menu/a;->f:Landroid/support/v7/view/menu/i$a;

    .line 2
    iget-object p2, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/view/menu/e;

    if-nez p1, :cond_1

    .line 3
    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->e()V

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    .line 4
    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/e;

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/a;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/e;->v(Landroid/support/v7/view/menu/i;)V

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/widget/Toolbar$c;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/e;->v(Landroid/support/v7/view/menu/i;)V

    :cond_3
    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/widget/Toolbar$c;

    if-nez v1, :cond_4

    new-instance v1, Landroid/support/v7/widget/Toolbar$c;

    invoke-direct {v1, p2}, Landroid/support/v7/widget/Toolbar$c;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p2, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/widget/Toolbar$c;

    :cond_4
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Landroid/support/v7/widget/a;->r:Z

    if-eqz p1, :cond_5

    .line 7
    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->k:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/view/menu/e;->c(Landroid/support/v7/view/menu/i;Landroid/content/Context;)V

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/widget/Toolbar$c;

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->k:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/view/menu/e;->c(Landroid/support/v7/view/menu/i;Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->k:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/a;->g(Landroid/content/Context;Landroid/support/v7/view/menu/e;)V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/widget/Toolbar$c;

    .line 8
    iget-object v2, p1, Landroid/support/v7/widget/Toolbar$c;->b:Landroid/support/v7/view/menu/e;

    if-eqz v2, :cond_6

    iget-object v3, p1, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/e;->e(Landroid/support/v7/view/menu/g;)Z

    :cond_6
    iput-object v1, p1, Landroid/support/v7/widget/Toolbar$c;->b:Landroid/support/v7/view/menu/e;

    .line 9
    invoke-virtual {v0}, Landroid/support/v7/widget/a;->h()V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/widget/Toolbar$c;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar$c;->h()V

    :goto_0
    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p2, Landroid/support/v7/widget/Toolbar;->l:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/a;)V

    iput-object v0, p2, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/a;

    :goto_1
    return-void
.end method

.method public final collapseActionView()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/widget/Toolbar$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->t()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/t;->m:Z

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->d()Z

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/t;->c:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/t;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/t;->c:Landroid/support/v7/widget/r;

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/t;->b:I

    return v0
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/t;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->y()V

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final o()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q(IJ)Ld0/n;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ld0/n;->a(F)Ld0/n;

    invoke-virtual {v0, p2, p3}, Ld0/n;->c(J)Ld0/n;

    new-instance p2, Landroid/support/v7/widget/t$a;

    invoke-direct {p2, p0, p1}, Landroid/support/v7/widget/t$a;-><init>(Landroid/support/v7/widget/t;I)V

    invoke-virtual {v0, p2}, Ld0/n;->d(Ld0/o;)Ld0/n;

    return-object v0
.end method

.method public final r()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/widget/Toolbar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$c;->c:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/t;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/t;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->y()V

    return-void
.end method

.method public final setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/t;->l:Landroid/view/Window$Callback;

    return-void
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/t;->h:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/t;->i:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/widget/t;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final u(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public final v(I)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/t;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroid/support/v7/widget/t;->b:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->w()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/t;->x()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->y()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/t;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/t;->j:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/t;->d:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/t;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/t;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/t;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/t;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/t;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/t;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/t;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final y()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/t;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/t;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/t;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
