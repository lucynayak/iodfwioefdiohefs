.class public final Landroid/support/v7/widget/m$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/m$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v7/widget/m$j;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/m$j;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/m$j$a;->a:Landroid/support/v7/widget/m$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m$j$a;->a:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/m$j;->o(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m$j$a;->a:Landroid/support/v7/widget/m$j;

    .line 1
    iget v1, v0, Landroid/support/v7/widget/m$j;->l:I

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->v()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m$j$a;->a:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->u()I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$k;

    iget-object v1, p0, Landroid/support/v7/widget/m$j$a;->a:Landroid/support/v7/widget/m$j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/m$k;

    iget-object p1, p1, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    .line 3
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    return v1
.end method

.method public final e(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$k;

    iget-object v1, p0, Landroid/support/v7/widget/m$j$a;->a:Landroid/support/v7/widget/m$j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/m$k;

    iget-object p1, p1, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    .line 3
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    return v1
.end method
