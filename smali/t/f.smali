.class public abstract Lt/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/f$c;,
        Lt/f$b;,
        Lt/f$d;
    }
.end annotation


# static fields
.field public static final v:[I

.field public static final w:Lt/f$a;

.field public static x:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lc0/a<",
            "Landroid/animation/Animator;",
            "Lt/f$b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Landroid/animation/TimeInterpolator;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lt/n;

.field public i:Lt/n;

.field public j:Lt/k;

.field public k:[I

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt/m;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt/m;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt/f$d;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lt/f$c;

.field public u:Lc/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lt/f;->v:[I

    new-instance v0, Lt/f$a;

    invoke-direct {v0}, Lt/f$a;-><init>()V

    sput-object v0, Lt/f;->w:Lt/f$a;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lt/f;->x:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt/f;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lt/f;->c:J

    iput-wide v0, p0, Lt/f;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lt/f;->e:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lt/f;->f:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lt/f;->g:Ljava/util/ArrayList;

    new-instance v1, Lt/n;

    invoke-direct {v1}, Lt/n;-><init>()V

    iput-object v1, p0, Lt/f;->h:Lt/n;

    new-instance v1, Lt/n;

    invoke-direct {v1}, Lt/n;-><init>()V

    iput-object v1, p0, Lt/f;->i:Lt/n;

    iput-object v0, p0, Lt/f;->j:Lt/k;

    sget-object v1, Lt/f;->v:[I

    iput-object v1, p0, Lt/f;->k:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lt/f;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lt/f;->o:I

    iput-boolean v1, p0, Lt/f;->p:Z

    iput-boolean v1, p0, Lt/f;->q:Z

    iput-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/f;->s:Ljava/util/ArrayList;

    sget-object v0, Lt/f;->w:Lt/f$a;

    iput-object v0, p0, Lt/f;->u:Lc/c;

    return-void
.end method

.method public static c(Lt/n;Landroid/view/View;Lt/m;)V
    .registers 7

    iget-object v0, p0, Lt/n;->c:Ljava/lang/Object;

    check-cast v0, Lc0/a;

    invoke-virtual {v0, p1, p2}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    iget-object v1, p0, Lt/n;->e:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lt/n;->e:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lt/n;->e:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2
    iget-object v1, p0, Lt/n;->d:Ljava/lang/Object;

    check-cast v1, Lc0/a;

    invoke-virtual {v1, p2}, Lc0/j;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lt/n;->d:Ljava/lang/Object;

    check-cast v1, Lc0/a;

    invoke-virtual {v1, p2, v0}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lt/n;->d:Ljava/lang/Object;

    check-cast v1, Lc0/a;

    invoke-virtual {v1, p2, p1}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object p2, p0, Lt/n;->f:Ljava/lang/Object;

    check-cast p2, Lc0/e;

    .line 3
    iget-boolean v3, p2, Lc0/e;->b:Z

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lc0/e;->d()V

    :cond_4
    iget-object v3, p2, Lc0/e;->c:[J

    iget p2, p2, Lc0/e;->e:I

    invoke-static {v3, p2, v1, v2}, La3/r0;->i([JIJ)I

    move-result p2

    if-ltz p2, :cond_5

    .line 4
    iget-object p1, p0, Lt/n;->f:Ljava/lang/Object;

    check-cast p1, Lc0/e;

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Lc0/e;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 8
    iget-object p0, p0, Lt/n;->f:Ljava/lang/Object;

    check-cast p0, Lc0/e;

    invoke-virtual {p0, v1, v2, v0}, Lc0/e;->f(JLjava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 10
    iget-object p0, p0, Lt/n;->f:Ljava/lang/Object;

    check-cast p0, Lc0/e;

    invoke-virtual {p0, v1, v2, p1}, Lc0/e;->f(JLjava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static o()Lc0/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc0/a<",
            "Landroid/animation/Animator;",
            "Lt/f$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lt/f;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/a;

    if-nez v0, :cond_0

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    sget-object v1, Lt/f;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static t(Lt/m;Lt/m;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method public A(Lt/f$c;)V
    .registers 2

    iput-object p1, p0, Lt/f;->t:Lt/f$c;

    return-void
.end method

.method public B(Landroid/animation/TimeInterpolator;)Lt/f;
    .registers 2

    iput-object p1, p0, Lt/f;->e:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public C(Lc/c;)V
    .registers 2

    if-nez p1, :cond_0

    sget-object p1, Lt/f;->w:Lt/f$a;

    :cond_0
    iput-object p1, p0, Lt/f;->u:Lc/c;

    return-void
.end method

.method public D()V
    .registers 1

    return-void
.end method

.method public E(J)Lt/f;
    .registers 3

    iput-wide p1, p0, Lt/f;->c:J

    return-object p0
.end method

.method public final F()V
    .registers 6

    iget v0, p0, Lt/f;->o:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/f$d;

    invoke-interface {v4}, Lt/f$d;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lt/f;->q:Z

    :cond_1
    iget v0, p0, Lt/f;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/f;->o:I

    return-void
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lt/f;->d:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-string v0, "dur("

    .line 3
    invoke-static {p1, v0}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    iget-wide v0, p0, Lt/f;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-wide v0, p0, Lt/f;->c:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    const-string v0, "dly("

    .line 5
    invoke-static {p1, v0}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    iget-wide v0, p0, Lt/f;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lt/f;->e:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    const-string v0, "interp("

    .line 7
    invoke-static {p1, v0}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lt/f;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    const-string v0, "tgts("

    .line 9
    invoke-static {p1, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 11
    invoke-static {p1, v1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_4
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 13
    iget-object v3, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    :goto_1
    iget-object v0, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 14
    invoke-static {p1, v1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    :cond_6
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v0, ")"

    .line 17
    invoke-static {p1, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a(Lt/f$d;)Lt/f;
    .registers 3

    iget-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Landroid/view/View;)Lt/f;
    .registers 3

    iget-object v0, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lt/f;->j()Lt/f;

    move-result-object v0

    return-object v0
.end method

.method public abstract d(Lt/m;)V
.end method

.method public final e(Landroid/view/View;Z)V
    .registers 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lt/m;

    invoke-direct {v0}, Lt/m;-><init>()V

    iput-object p1, v0, Lt/m;->b:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lt/f;->g(Lt/m;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lt/f;->d(Lt/m;)V

    :goto_0
    iget-object v1, v0, Lt/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lt/f;->f(Lt/m;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lt/f;->h:Lt/n;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lt/f;->i:Lt/n;

    :goto_1
    invoke-static {v1, p1, v0}, Lt/f;->c(Lt/n;Landroid/view/View;Lt/m;)V

    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lt/f;->e(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public f(Lt/m;)V
    .registers 2

    return-void
.end method

.method public abstract g(Lt/m;)V
.end method

.method public final h(Landroid/view/ViewGroup;Z)V
    .registers 8

    invoke-virtual {p0, p2}, Lt/f;->i(Z)V

    iget-object v0, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lt/f;->e(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lt/m;

    invoke-direct {v3}, Lt/m;-><init>()V

    iput-object v2, v3, Lt/m;->b:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p0, v3}, Lt/f;->g(Lt/m;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lt/f;->d(Lt/m;)V

    :goto_2
    iget-object v4, v3, Lt/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lt/f;->f(Lt/m;)V

    if-eqz p2, :cond_3

    iget-object v4, p0, Lt/f;->h:Lt/n;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lt/f;->i:Lt/n;

    :goto_3
    invoke-static {v4, v2, v3}, Lt/f;->c(Lt/n;Landroid/view/View;Lt/m;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    iget-object p1, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    iget-object p1, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v1, Lt/m;

    invoke-direct {v1}, Lt/m;-><init>()V

    iput-object p1, v1, Lt/m;->b:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-virtual {p0, v1}, Lt/f;->g(Lt/m;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v1}, Lt/f;->d(Lt/m;)V

    :goto_5
    iget-object v2, v1, Lt/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lt/f;->f(Lt/m;)V

    if-eqz p2, :cond_7

    iget-object v2, p0, Lt/f;->h:Lt/n;

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lt/f;->i:Lt/n;

    :goto_6
    invoke-static {v2, p1, v1}, Lt/f;->c(Lt/n;Landroid/view/View;Lt/m;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public final i(Z)V
    .registers 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lt/f;->h:Lt/n;

    iget-object p1, p1, Lt/n;->c:Ljava/lang/Object;

    check-cast p1, Lc0/a;

    invoke-virtual {p1}, Lc0/j;->clear()V

    iget-object p1, p0, Lt/f;->h:Lt/n;

    iget-object p1, p1, Lt/n;->e:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lt/f;->h:Lt/n;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lt/f;->i:Lt/n;

    iget-object p1, p1, Lt/n;->c:Ljava/lang/Object;

    check-cast p1, Lc0/a;

    invoke-virtual {p1}, Lc0/j;->clear()V

    iget-object p1, p0, Lt/f;->i:Lt/n;

    iget-object p1, p1, Lt/n;->e:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lt/f;->i:Lt/n;

    :goto_0
    iget-object p1, p1, Lt/n;->f:Ljava/lang/Object;

    check-cast p1, Lc0/e;

    invoke-virtual {p1}, Lc0/e;->b()V

    return-void
.end method

.method public j()Lt/f;
    .registers 4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lt/f;->s:Ljava/util/ArrayList;

    new-instance v2, Lt/n;

    invoke-direct {v2}, Lt/n;-><init>()V

    iput-object v2, v1, Lt/f;->h:Lt/n;

    new-instance v2, Lt/n;

    invoke-direct {v2}, Lt/n;-><init>()V

    iput-object v2, v1, Lt/f;->i:Lt/n;

    iput-object v0, v1, Lt/f;->l:Ljava/util/ArrayList;

    iput-object v0, v1, Lt/f;->m:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public k(Landroid/view/ViewGroup;Lt/m;Lt/m;)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Landroid/view/ViewGroup;Lt/n;Lt/n;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lt/n;",
            "Lt/n;",
            "Ljava/util/ArrayList<",
            "Lt/m;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lt/m;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Lt/f;->o()Lc0/a;

    move-result-object v8

    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    if-ge v12, v10, :cond_c

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/m;

    move-object/from16 v14, p5

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/m;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lt/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lt/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    :cond_2
    move-object/from16 v15, p3

    move/from16 v17, v10

    goto/16 :goto_7

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v6, v0, v1}, Lt/f;->r(Lt/m;Lt/m;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v6, v7, v0, v1}, Lt/f;->k(Landroid/view/ViewGroup;Lt/m;Lt/m;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_a

    iget-object v0, v1, Lt/m;->b:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lt/f;->p()[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    array-length v4, v1

    if-lez v4, :cond_9

    new-instance v4, Lt/m;

    invoke-direct {v4}, Lt/m;-><init>()V

    iput-object v0, v4, Lt/m;->b:Landroid/view/View;

    move-object/from16 v15, p3

    iget-object v5, v15, Lt/n;->c:Ljava/lang/Object;

    check-cast v5, Lc0/a;

    invoke-virtual {v5, v0}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/m;

    if-eqz v5, :cond_6

    const/4 v2, 0x0

    :goto_3
    array-length v11, v1

    if-ge v2, v11, :cond_6

    iget-object v11, v4, Lt/m;->a:Ljava/util/HashMap;

    move-object/from16 v16, v3

    aget-object v3, v1, v2

    move/from16 v17, v10

    iget-object v10, v5, Lt/m;->a:Ljava/util/HashMap;

    move-object/from16 v18, v5

    aget-object v5, v1, v2

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move/from16 v10, v17

    move-object/from16 v5, v18

    goto :goto_3

    :cond_6
    move-object/from16 v16, v3

    move/from16 v17, v10

    .line 1
    iget v1, v8, Lc0/j;->d:I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_8

    .line 2
    invoke-virtual {v8, v2}, Lc0/j;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v8, v3}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/f$b;

    iget-object v5, v3, Lt/f$b;->c:Lt/m;

    if-eqz v5, :cond_7

    iget-object v5, v3, Lt/f$b;->a:Landroid/view/View;

    if-ne v5, v0, :cond_7

    iget-object v5, v3, Lt/f$b;->b:Ljava/lang/String;

    .line 3
    iget-object v10, v6, Lt/f;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, v3, Lt/f$b;->c:Lt/m;

    invoke-virtual {v3, v4}, Lt/m;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v2, v16

    goto :goto_5

    :cond_9
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v10

    move-object/from16 v2, v16

    const/4 v4, 0x0

    :goto_5
    move-object v1, v0

    move-object v10, v2

    move-object v5, v4

    goto :goto_6

    :cond_a
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v10

    iget-object v0, v0, Lt/m;->b:Landroid/view/View;

    move-object v1, v0

    move-object/from16 v10, v16

    const/4 v5, 0x0

    :goto_6
    if-eqz v10, :cond_b

    new-instance v11, Lt/f$b;

    .line 5
    iget-object v2, v6, Lt/f;->b:Ljava/lang/String;

    .line 6
    sget-object v0, Lt/r;->a:Lt/t;

    .line 7
    new-instance v4, Lt/x;

    invoke-direct {v4, v7}, Lt/x;-><init>(Landroid/view/View;)V

    move-object v0, v11

    move-object/from16 v3, p0

    .line 8
    invoke-direct/range {v0 .. v5}, Lt/f$b;-><init>(Landroid/view/View;Ljava/lang/String;Lt/f;Lt/y;Lt/m;)V

    invoke-virtual {v8, v10, v11}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lt/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v17

    goto/16 :goto_0

    :cond_c
    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_d

    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, v6, Lt/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    return-void
.end method

.method public final m()V
    .registers 7

    iget v0, p0, Lt/f;->o:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lt/f;->o:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/f$d;

    invoke-interface {v5, p0}, Lt/f$d;->a(Lt/f;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lt/f;->h:Lt/n;

    iget-object v3, v3, Lt/n;->f:Ljava/lang/Object;

    check-cast v3, Lc0/e;

    invoke-virtual {v3}, Lc0/e;->g()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lt/f;->h:Lt/n;

    iget-object v3, v3, Lt/n;->f:Ljava/lang/Object;

    check-cast v3, Lc0/e;

    invoke-virtual {v3, v0}, Lc0/e;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    sget-object v4, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2
    :goto_2
    iget-object v3, p0, Lt/f;->i:Lt/n;

    iget-object v3, v3, Lt/n;->f:Ljava/lang/Object;

    check-cast v3, Lc0/e;

    invoke-virtual {v3}, Lc0/e;->g()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lt/f;->i:Lt/n;

    iget-object v3, v3, Lt/n;->f:Ljava/lang/Object;

    check-cast v3, Lc0/e;

    invoke-virtual {v3, v0}, Lc0/e;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    sget-object v4, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4
    :cond_4
    iput-boolean v1, p0, Lt/f;->q:Z

    :cond_5
    return-void
.end method

.method public final n(Landroid/view/View;Z)Lt/m;
    .registers 9

    iget-object v0, p0, Lt/f;->j:Lt/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lt/f;->n(Landroid/view/View;Z)Lt/m;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lt/f;->l:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lt/f;->m:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/m;

    if-nez v5, :cond_3

    return-object v1

    :cond_3
    iget-object v5, v5, Lt/m;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p1, p0, Lt/f;->m:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lt/f;->l:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lt/m;

    :cond_7
    return-object v1
.end method

.method public p()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q(Landroid/view/View;Z)Lt/m;
    .registers 4

    iget-object v0, p0, Lt/f;->j:Lt/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lt/f;->q(Landroid/view/View;Z)Lt/m;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lt/f;->h:Lt/n;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lt/f;->i:Lt/n;

    :goto_0
    iget-object p2, p2, Lt/n;->c:Ljava/lang/Object;

    check-cast p2, Lc0/a;

    invoke-virtual {p2, p1}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt/m;

    return-object p1
.end method

.method public r(Lt/m;Lt/m;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lt/f;->p()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {p1, p2, v4}, Lt/f;->t(Lt/m;Lt/m;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lt/f;->t(Lt/m;Lt/m;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final s(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lt/f;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/view/View;)V
    .registers 8

    iget-boolean v0, p0, Lt/f;->q:Z

    if-nez v0, :cond_4

    invoke-static {}, Lt/f;->o()Lc0/a;

    move-result-object v0

    .line 1
    iget v1, v0, Lc0/j;->d:I

    .line 2
    sget-object v2, Lt/r;->a:Lt/t;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    .line 4
    invoke-virtual {v0, v1}, Lc0/j;->j(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/f$b;

    iget-object v5, v4, Lt/f$b;->a:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lt/f$b;->d:Lt/y;

    .line 5
    instance-of v5, v4, Lt/x;

    if-eqz v5, :cond_0

    check-cast v4, Lt/x;

    iget-object v4, v4, Lt/x;->a:Landroid/view/WindowId;

    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lc0/j;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 7
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lt/f;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lt/f;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f$d;

    invoke-interface {v1}, Lt/f$d;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lt/f;->p:Z

    :cond_4
    return-void
.end method

.method public v(Lt/f$d;)Lt/f;
    .registers 3

    iget-object v0, p0, Lt/f;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lt/f;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lt/f;->r:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public w(Landroid/view/View;)Lt/f;
    .registers 3

    iget-object v0, p0, Lt/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public x(Landroid/view/View;)V
    .registers 8

    iget-boolean v0, p0, Lt/f;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lt/f;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lt/f;->o()Lc0/a;

    move-result-object v0

    .line 1
    iget v2, v0, Lc0/j;->d:I

    .line 2
    sget-object v3, Lt/r;->a:Lt/t;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Lc0/j;->j(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/f$b;

    iget-object v5, v4, Lt/f$b;->a:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lt/f$b;->d:Lt/y;

    .line 5
    instance-of v5, v4, Lt/x;

    if-eqz v5, :cond_0

    check-cast v4, Lt/x;

    iget-object v4, v4, Lt/x;->a:Landroid/view/WindowId;

    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lc0/j;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 7
    invoke-virtual {v4}, Landroid/animation/Animator;->resume()V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lt/f;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lt/f;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/f$d;

    invoke-interface {v3}, Lt/f$d;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lt/f;->p:Z

    :cond_4
    return-void
.end method

.method public y()V
    .registers 9

    invoke-virtual {p0}, Lt/f;->F()V

    invoke-static {}, Lt/f;->o()Lc0/a;

    move-result-object v0

    iget-object v1, p0, Lt/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Lc0/j;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lt/f;->F()V

    if-eqz v2, :cond_0

    .line 1
    new-instance v3, Lt/g;

    invoke-direct {v3, p0, v0}, Lt/g;-><init>(Lt/f;Lc0/a;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    iget-wide v3, p0, Lt/f;->d:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 3
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    :cond_1
    iget-wide v3, p0, Lt/f;->c:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 5
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 6
    :cond_2
    iget-object v3, p0, Lt/f;->e:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v3, Lt/h;

    invoke-direct {v3, p0}, Lt/h;-><init>(Lt/f;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lt/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lt/f;->m()V

    return-void
.end method

.method public z(J)Lt/f;
    .registers 3

    iput-wide p1, p0, Lt/f;->d:J

    return-object p0
.end method
