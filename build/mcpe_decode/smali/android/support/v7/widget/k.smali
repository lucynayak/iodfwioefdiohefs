.class public final Landroid/support/v7/widget/k;
.super Landroid/support/v7/widget/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/m$j;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/l;-><init>(Landroid/support/v7/widget/m$j;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$k;

    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/m$j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/m$k;

    iget-object p1, p1, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    .line 3
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    return v1
.end method

.method public final c(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$k;

    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/m$j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/m$k;

    iget-object p1, p1, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    .line 3
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/m$j;

    .line 1
    iget v1, v0, Landroid/support/v7/widget/m$j;->m:I

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->t()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->w()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/m$j;

    .line 1
    iget v1, v0, Landroid/support/v7/widget/m$j;->m:I

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->w()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->t()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method
