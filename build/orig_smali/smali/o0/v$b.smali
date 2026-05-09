.class public final Lo0/v$b;
.super Lo0/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public D:Ljava/lang/CharSequence;

.field public E:Landroid/widget/ListAdapter;

.field public final F:Landroid/graphics/Rect;

.field public final synthetic G:Lo0/v;


# direct methods
.method public constructor <init>(Lo0/v;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    iput-object p1, p0, Lo0/v$b;->G:Lo0/v;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Lo0/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lo0/v$b;->F:Landroid/graphics/Rect;

    .line 3
    iput-object p1, p0, Lo0/h0;->p:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lo0/h0;->k()V

    new-instance p1, Lo0/v$b$a;

    invoke-direct {p1, p0}, Lo0/v$b$a;-><init>(Lo0/v$b;)V

    .line 5
    iput-object p1, p0, Lo0/h0;->q:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static synthetic n(Lo0/v$b;)V
    .locals 0

    invoke-super {p0}, Lo0/h0;->d()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    invoke-virtual {p0}, Lo0/h0;->i()Z

    move-result v0

    invoke-virtual {p0}, Lo0/v$b;->o()V

    invoke-virtual {p0}, Lo0/h0;->h()V

    invoke-super {p0}, Lo0/h0;->d()V

    .line 1
    iget-object v1, p0, Lo0/h0;->d:Lo0/d0;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v1, p0, Lo0/v$b;->G:Lo0/v;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 3
    iget-object v3, p0, Lo0/h0;->d:Lo0/d0;

    invoke-virtual {p0}, Lo0/h0;->i()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lo0/d0;->setListSelectionHidden(Z)V

    invoke-virtual {v3, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lo0/v$b;->G:Lo0/v;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lo0/v$b$b;

    invoke-direct {v1, p0}, Lo0/v$b$b;-><init>(Lo0/v$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Lo0/v$b$c;

    invoke-direct {v0, p0, v1}, Lo0/v$b$c;-><init>(Lo0/v$b;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Lo0/h0;->l(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public final f(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Lo0/h0;->f(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lo0/v$b;->E:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final o()V
    .locals 8

    invoke-virtual {p0}, Lo0/h0;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo0/v$b;->G:Lo0/v;

    iget-object v1, v1, Lo0/v;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lo0/v$b;->G:Lo0/v;

    invoke-static {v0}, Lo0/z0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo0/v$b;->G:Lo0/v;

    iget-object v0, v0, Lo0/v;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo0/v$b;->G:Lo0/v;

    iget-object v0, v0, Lo0/v;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo0/v$b;->G:Lo0/v;

    iget-object v0, v0, Lo0/v;->i:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v0, p0, Lo0/v$b;->G:Lo0/v;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lo0/v$b;->G:Lo0/v;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lo0/v$b;->G:Lo0/v;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lo0/v$b;->G:Lo0/v;

    iget v5, v4, Lo0/v;->h:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lo0/v$b;->E:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lo0/h0;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lo0/v;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    iget-object v5, p0, Lo0/v$b;->G:Lo0/v;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lo0/v$b;->G:Lo0/v;

    iget-object v6, v6, Lo0/v;->i:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    :goto_2
    invoke-virtual {p0, v4}, Lo0/h0;->g(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v5}, Lo0/h0;->g(I)V

    :goto_3
    iget-object v4, p0, Lo0/v$b;->G:Lo0/v;

    invoke-static {v4}, Lo0/z0;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 1
    iget v0, p0, Lo0/h0;->f:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_4

    :cond_5
    add-int v3, v1, v0

    .line 2
    :goto_4
    iput v3, p0, Lo0/h0;->g:I

    return-void
.end method
