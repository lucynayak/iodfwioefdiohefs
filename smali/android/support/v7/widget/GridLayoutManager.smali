.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$b;,
        Landroid/support/v7/widget/GridLayoutManager$a;,
        Landroid/support/v7/widget/GridLayoutManager$c;
    }
.end annotation


# instance fields
.field public B:Z

.field public C:I

.field public final D:Landroid/util/SparseIntArray;

.field public final E:Landroid/util/SparseIntArray;

.field public F:Landroid/support/v7/widget/GridLayoutManager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->B:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->C:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->D:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->E:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->F:Landroid/support/v7/widget/GridLayoutManager$a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/m$j;->y(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/m$j$c;

    move-result-object p1

    iget p1, p1, Landroid/support/v7/widget/m$j$c;->b:I

    .line 1
    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->C:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayoutManager;->B:Z

    if-lt p1, p2, :cond_1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->C:I

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$c;->b()V

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Span count should be at least 1. Provided "

    .line 2
    invoke-static {p3, p1}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final W(Z)V
    .registers 3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/m$j;->K()V

    :goto_0
    return-void

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final X(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;I)I
    .registers 4

    .line 1
    iget-boolean p2, p2, Landroid/support/v7/widget/m$s;->e:Z

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:Landroid/support/v7/widget/GridLayoutManager$a;

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->C:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/GridLayoutManager$c;->a(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/m$p;->c(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->F:Landroid/support/v7/widget/GridLayoutManager$a;

    iget p3, p0, Landroid/support/v7/widget/GridLayoutManager;->C:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/GridLayoutManager$c;->a(II)I

    move-result p1

    return p1
.end method

.method public final d(Landroid/support/v7/widget/m$k;)Z
    .registers 2

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager$b;

    return p1
.end method

.method public final l()Landroid/support/v7/widget/m$k;
    .registers 4

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    return-object v0
.end method

.method public final m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/m$k;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final n(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/m$k;
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final q(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;)I
    .registers 5

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->C:I

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/m$s;->a()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/m$s;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->X(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final z(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;)I
    .registers 5

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-nez v0, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->C:I

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/m$s;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/m$s;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->X(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method
