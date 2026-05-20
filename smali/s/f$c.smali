.class public final Ls/f$c;
.super Ls/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ls/f$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Matrix;

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ls/f$d;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls/f$c;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls/f$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Ls/f$c;->c:F

    iput v0, p0, Ls/f$c;->d:F

    iput v0, p0, Ls/f$c;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ls/f$c;->f:F

    iput v1, p0, Ls/f$c;->g:F

    iput v0, p0, Ls/f$c;->h:F

    iput v0, p0, Ls/f$c;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls/f$c;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Ls/f$c;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ls/f$c;Lc0/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls/f$c;",
            "Lc0/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ls/f$d;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls/f$c;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls/f$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Ls/f$c;->c:F

    iput v0, p0, Ls/f$c;->d:F

    iput v0, p0, Ls/f$c;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ls/f$c;->f:F

    iput v1, p0, Ls/f$c;->g:F

    iput v0, p0, Ls/f$c;->h:F

    iput v0, p0, Ls/f$c;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls/f$c;->j:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iput-object v1, p0, Ls/f$c;->l:Ljava/lang/String;

    iget v1, p1, Ls/f$c;->c:F

    iput v1, p0, Ls/f$c;->c:F

    iget v1, p1, Ls/f$c;->d:F

    iput v1, p0, Ls/f$c;->d:F

    iget v1, p1, Ls/f$c;->e:F

    iput v1, p0, Ls/f$c;->e:F

    iget v1, p1, Ls/f$c;->f:F

    iput v1, p0, Ls/f$c;->f:F

    iget v1, p1, Ls/f$c;->g:F

    iput v1, p0, Ls/f$c;->g:F

    iget v1, p1, Ls/f$c;->h:F

    iput v1, p0, Ls/f$c;->h:F

    iget v1, p1, Ls/f$c;->i:F

    iput v1, p0, Ls/f$c;->i:F

    iget-object v1, p1, Ls/f$c;->l:Ljava/lang/String;

    iput-object v1, p0, Ls/f$c;->l:Ljava/lang/String;

    iget v2, p1, Ls/f$c;->k:I

    iput v2, p0, Ls/f$c;->k:I

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1, p0}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Ls/f$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p1, Ls/f$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ls/f$c;

    if-eqz v2, :cond_1

    check-cast v1, Ls/f$c;

    iget-object v2, p0, Ls/f$c;->b:Ljava/util/ArrayList;

    new-instance v3, Ls/f$c;

    invoke-direct {v3, v1, p2}, Ls/f$c;-><init>(Ls/f$c;Lc0/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v2, v1, Ls/f$b;

    if-eqz v2, :cond_2

    new-instance v2, Ls/f$b;

    check-cast v1, Ls/f$b;

    invoke-direct {v2, v1}, Ls/f$b;-><init>(Ls/f$b;)V

    goto :goto_1

    :cond_2
    instance-of v2, v1, Ls/f$a;

    if-eqz v2, :cond_4

    new-instance v2, Ls/f$a;

    check-cast v1, Ls/f$a;

    invoke-direct {v2, v1}, Ls/f$a;-><init>(Ls/f$a;)V

    :goto_1
    iget-object v1, p0, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Ls/f$e;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p2, v1, v2}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/f$d;

    invoke-virtual {v2}, Ls/f$d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final b([I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/f$d;

    invoke-virtual {v2, p1}, Ls/f$d;->b([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Ls/f$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Ls/f$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Ls/f$c;->d:F

    neg-float v1, v1

    iget v2, p0, Ls/f$c;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Ls/f$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Ls/f$c;->f:F

    iget v2, p0, Ls/f$c;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Ls/f$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Ls/f$c;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Ls/f$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Ls/f$c;->h:F

    iget v2, p0, Ls/f$c;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Ls/f$c;->i:F

    iget v3, p0, Ls/f$c;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ls/f$c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Ls/f$c;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    iget v0, p0, Ls/f$c;->d:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    iget v0, p0, Ls/f$c;->e:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    iget v0, p0, Ls/f$c;->c:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    iget v0, p0, Ls/f$c;->f:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    iget v0, p0, Ls/f$c;->g:F

    return v0
.end method

.method public getTranslateX()F
    .registers 2

    iget v0, p0, Ls/f$c;->h:F

    return v0
.end method

.method public getTranslateY()F
    .registers 2

    iget v0, p0, Ls/f$c;->i:F

    return v0
.end method

.method public setPivotX(F)V
    .registers 3

    iget v0, p0, Ls/f$c;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Ls/f$c;->d:F

    invoke-virtual {p0}, Ls/f$c;->c()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    iget v0, p0, Ls/f$c;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Ls/f$c;->e:F

    invoke-virtual {p0}, Ls/f$c;->c()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    iget v0, p0, Ls/f$c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Ls/f$c;->c:F

    invoke-virtual {p0}, Ls/f$c;->c()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    iget v0, p0, Ls/f$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Ls/f$c;->f:F

    invoke-virtual {p0}, Ls/f$c;->c()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    iget v0, p0, Ls/f$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Ls/f$c;->g:F

    invoke-virtual {p0}, Ls/f$c;->c()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .registers 3

    iget v0, p0, Ls/f$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Ls/f$c;->h:F

    invoke-virtual {p0}, Ls/f$c;->c()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .registers 3

    iget v0, p0, Ls/f$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Ls/f$c;->i:F

    invoke-virtual {p0}, Ls/f$c;->c()V

    :cond_0
    return-void
.end method
