.class public final Landroid/support/v7/widget/StaggeredGridLayoutManager$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public final e:I

.field public final synthetic f:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->c:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->d:I

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->e(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/l;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->c:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->e(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/support/v7/widget/l;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/l;->c(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/high16 v0, -0x80000000

    .line 1
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->c:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->d:I

    return-void
.end method

.method public final d(I)I
    .registers 4

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a()V

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->c:I

    return p1
.end method

.method public final e(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c;
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    return-object p1
.end method

.method public final f(I)I
    .registers 4

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b()V

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$f;->b:I

    return p1
.end method
