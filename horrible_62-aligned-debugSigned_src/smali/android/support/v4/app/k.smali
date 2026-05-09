.class public final Landroid/support/v4/app/k;
.super Landroid/support/v4/app/b0;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/k$f;,
        Landroid/support/v4/app/k$e;,
        Landroid/support/v4/app/k$b;,
        Landroid/support/v4/app/k$c;,
        Landroid/support/v4/app/k$d;,
        Landroid/support/v4/app/k$k;,
        Landroid/support/v4/app/k$j;,
        Landroid/support/v4/app/k$i;,
        Landroid/support/v4/app/k$h;,
        Landroid/support/v4/app/k$g;
    }
.end annotation


# static fields
.field public static C:Ljava/lang/reflect/Field;

.field public static final D:Landroid/view/animation/DecelerateInterpolator;

.field public static final E:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public A:Landroid/support/v4/app/o;

.field public B:Landroid/support/v4/app/k$a;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/k$i;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:I

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/g;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/g;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/g;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/support/v4/app/k$g;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:Landroid/support/v4/app/j;

.field public n:Landroid/support/v4/app/b0;

.field public o:Landroid/support/v4/app/g;

.field public p:Landroid/support/v4/app/g;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/g;",
            ">;"
        }
    .end annotation
.end field

.field public x:Landroid/os/Bundle;

.field public y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/k$k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/k;->D:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/k;->E:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/b0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/k;->d:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Landroid/support/v4/app/k;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->x:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/k;->y:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/app/k$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/k$a;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->B:Landroid/support/v4/app/k$a;

    return-void
.end method

.method public static b0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .registers 4

    const-string v0, "FragmentManager"

    :try_start_0
    sget-object v1, Landroid/support/v4/app/k;->C:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const-class v1, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/k;->C:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    sget-object v1, Landroid/support/v4/app/k;->C:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Cannot access Animation\'s mListener field"

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "No field with the name mListener is found in Animation class"

    :goto_0
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static e0(FF)Landroid/support/v4/app/k$d;
    .registers 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p0, Landroid/support/v4/app/k;->E:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p0, Landroid/support/v4/app/k$d;

    invoke-direct {p0, v0}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method public static f0(FFFF)Landroid/support/v4/app/k$d;
    .registers 15

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object p0, Landroid/support/v4/app/k;->D:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    invoke-virtual {v1, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p2, Landroid/support/v4/app/k;->E:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p0, Landroid/support/v4/app/k$d;

    invoke-direct {p0, v0}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method public static g0(Landroid/animation/Animator;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroid/support/v4/app/k;->g0(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public static t0(Landroid/view/View;Landroid/support/v4/app/k$d;)V
    .registers 7

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p1, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    instance-of v3, v0, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v0, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/v4/app/k;->g0(Landroid/animation/Animator;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_6

    .line 4
    iget-object v0, p1, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    new-instance p1, Landroid/support/v4/app/k$e;

    invoke-direct {p1, p0}, Landroid/support/v4/app/k$e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_5
    iget-object v0, p1, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/k;->b0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p1, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v4/app/k$b;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/k$b;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static v0(Landroid/support/v4/app/o;)V
    .registers 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/g;->D:Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/o;

    invoke-static {v0}, Landroid/support/v4/app/k;->v0(Landroid/support/v4/app/o;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final A(Landroid/support/v4/app/g;Landroid/content/Context;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->A(Landroid/support/v4/app/g;Landroid/content/Context;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/k$g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final B(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->B(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/k$g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final C(Landroid/support/v4/app/g;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->C(Landroid/support/v4/app/g;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final D(Landroid/support/v4/app/g;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->D(Landroid/support/v4/app/g;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final E(Landroid/support/v4/app/g;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->E(Landroid/support/v4/app/g;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final F(Landroid/support/v4/app/g;Landroid/content/Context;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->F(Landroid/support/v4/app/g;Landroid/content/Context;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/k$g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final G(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->G(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/k$g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final H(Landroid/support/v4/app/g;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->H(Landroid/support/v4/app/g;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final I(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->I(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/k$g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final J(Landroid/support/v4/app/g;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->J(Landroid/support/v4/app/g;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final K(Landroid/support/v4/app/g;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->K(Landroid/support/v4/app/g;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final L(Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/support/v4/app/k;->L(Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/k$g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final M(Landroid/support/v4/app/g;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->M(Landroid/support/v4/app/g;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final N(Landroid/view/MenuItem;)Z
    .registers 6

    iget v0, p0, Landroid/support/v4/app/k;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/g;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/support/v4/app/g;->L(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final O(Landroid/view/Menu;)V
    .registers 4

    iget v0, p0, Landroid/support/v4/app/k;->l:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/g;->M(Landroid/view/Menu;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final P(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/g;->N(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Q(Landroid/view/Menu;)Z
    .registers 6

    iget v0, p0, Landroid/support/v4/app/k;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/g;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/support/v4/app/g;->O(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final R()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->T(I)V

    return-void
.end method

.method public final S()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->T(I)V

    return-void
.end method

.method public final T(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/k;->i0(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroid/support/v4/app/k;->c:Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->W()Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroid/support/v4/app/k;->c:Z

    throw p1
.end method

.method public final U(Landroid/support/v4/app/k$i;Z)V
    .registers 4

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/k;->n()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->s0()V

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final V()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 1
    iget-object v1, v1, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/k;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->v:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/support/v4/app/k;->Y(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment host has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final W()Z
    .registers 10

    invoke-virtual {p0}, Landroid/support/v4/app/k;->V()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/k;->u:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/k;->v:Ljava/util/ArrayList;

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v8, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/k$i;

    invoke-interface {v8, v3, v4}, Landroid/support/v4/app/k$i;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 2
    iget-object v3, v3, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    .line 3
    iget-object v4, p0, Landroid/support/v4/app/k;->B:Landroid/support/v4/app/k$a;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_3

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    :try_start_1
    iget-object v2, p0, Landroid/support/v4/app/k;->u:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/k;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/k;->n0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/support/v4/app/k;->o()V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v4/app/k;->o()V

    throw v0

    .line 5
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/k;->t:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Landroid/support/v4/app/k;->t:Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->w0()V

    .line 6
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/k;->m()V

    return v2

    :catchall_1
    move-exception v0

    .line 7
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final X(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/d;

    iget-boolean v11, v1, Landroid/support/v4/app/d;->t:Z

    iget-object v1, v7, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v1, v7, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    iget-object v2, v7, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1
    iget-object v1, v7, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/g;

    move v2, v9

    const/4 v3, 0x0

    :goto_1
    const/4 v14, 0x1

    if-ge v2, v10, :cond_11

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/d;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x3

    if-nez v5, :cond_b

    iget-object v5, v7, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    const/4 v15, 0x0

    .line 3
    :goto_2
    iget-object v13, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v15, v13, :cond_e

    iget-object v13, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/d$a;

    iget v12, v13, Landroid/support/v4/app/d$a;->a:I

    if-eq v12, v14, :cond_a

    const/4 v14, 0x2

    const/16 v9, 0x9

    if-eq v12, v14, :cond_4

    if-eq v12, v6, :cond_2

    const/4 v14, 0x6

    if-eq v12, v14, :cond_2

    const/4 v14, 0x7

    if-eq v12, v14, :cond_a

    const/16 v14, 0x8

    if-eq v12, v14, :cond_1

    goto :goto_3

    :cond_1
    iget-object v12, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    new-instance v14, Landroid/support/v4/app/d$a;

    invoke-direct {v14, v9, v1}, Landroid/support/v4/app/d$a;-><init>(ILandroid/support/v4/app/g;)V

    invoke-virtual {v12, v15, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    iget-object v1, v13, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    goto :goto_3

    :cond_2
    iget-object v12, v13, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v12, v13, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    if-ne v12, v1, :cond_3

    iget-object v1, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/v4/app/d$a;

    invoke-direct {v13, v9, v12}, Landroid/support/v4/app/d$a;-><init>(ILandroid/support/v4/app/g;)V

    invoke-virtual {v1, v15, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    :cond_3
    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_4
    iget-object v12, v13, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    iget v14, v12, Landroid/support/v4/app/g;->y:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v6, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v6, :cond_8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Landroid/support/v4/app/g;

    iget v8, v9, Landroid/support/v4/app/g;->y:I

    if-ne v8, v14, :cond_7

    if-ne v9, v12, :cond_5

    move/from16 v18, v14

    const/16 v17, 0x1

    goto :goto_6

    :cond_5
    if-ne v9, v1, :cond_6

    iget-object v1, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/v4/app/d$a;

    move/from16 v18, v14

    const/16 v14, 0x9

    invoke-direct {v8, v14, v9}, Landroid/support/v4/app/d$a;-><init>(ILandroid/support/v4/app/g;)V

    invoke-virtual {v1, v15, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    move/from16 v18, v14

    const/16 v14, 0x9

    :goto_5
    new-instance v8, Landroid/support/v4/app/d$a;

    const/4 v14, 0x3

    invoke-direct {v8, v14, v9}, Landroid/support/v4/app/d$a;-><init>(ILandroid/support/v4/app/g;)V

    iget v14, v13, Landroid/support/v4/app/d$a;->c:I

    iput v14, v8, Landroid/support/v4/app/d$a;->c:I

    iget v14, v13, Landroid/support/v4/app/d$a;->e:I

    iput v14, v8, Landroid/support/v4/app/d$a;->e:I

    iget v14, v13, Landroid/support/v4/app/d$a;->d:I

    iput v14, v8, Landroid/support/v4/app/d$a;->d:I

    iget v14, v13, Landroid/support/v4/app/d$a;->f:I

    iput v14, v8, Landroid/support/v4/app/d$a;->f:I

    iget-object v14, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v14, v15, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    add-int/2addr v15, v8

    goto :goto_6

    :cond_7
    move/from16 v18, v14

    :goto_6
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v8, p2

    move/from16 v14, v18

    const/16 v9, 0x9

    goto :goto_4

    :cond_8
    if-eqz v17, :cond_9

    iget-object v6, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    :cond_9
    const/4 v6, 0x1

    iput v6, v13, Landroid/support/v4/app/d$a;->a:I

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    const/4 v6, 0x1

    iget-object v8, v13, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v15, v6

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v6, 0x3

    const/4 v14, 0x1

    goto/16 :goto_2

    .line 4
    :cond_b
    iget-object v5, v7, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 5
    :goto_8
    iget-object v8, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_e

    iget-object v8, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/d$a;

    iget v9, v8, Landroid/support/v4/app/d$a;->a:I

    const/4 v12, 0x1

    if-eq v9, v12, :cond_d

    const/4 v12, 0x3

    if-eq v9, v12, :cond_c

    packed-switch v9, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-object v1, v8, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    goto :goto_9

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_9

    :cond_c
    :pswitch_2
    iget-object v8, v8, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    const/4 v12, 0x3

    :pswitch_3
    iget-object v8, v8, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    if-nez v3, :cond_10

    .line 6
    iget-boolean v3, v4, Landroid/support/v4/app/d;->j:Z

    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v3, 0x1

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, p2

    move/from16 v9, p3

    goto/16 :goto_1

    :cond_11
    iget-object v1, v7, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_12

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/v;->o(Landroid/support/v4/app/k;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_12
    move/from16 v1, p3

    :goto_c
    const/4 v8, -0x1

    if-ge v1, v10, :cond_15

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d;

    move-object/from16 v9, p2

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2, v8}, Landroid/support/v4/app/d;->k(I)V

    add-int/lit8 v3, v10, -0x1

    if-ne v1, v3, :cond_13

    const/4 v3, 0x1

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v2, v3}, Landroid/support/v4/app/d;->q(Z)V

    goto :goto_e

    :cond_14
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/d;->k(I)V

    invoke-virtual {v2}, Landroid/support/v4/app/d;->p()V

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    move-object/from16 v9, p2

    if-eqz v11, :cond_22

    .line 8
    new-instance v1, Lc0/c;

    invoke-direct {v1}, Lc0/c;-><init>()V

    invoke-virtual {v7, v1}, Landroid/support/v4/app/k;->j(Lc0/c;)V

    add-int/lit8 v2, v10, -0x1

    move/from16 v12, p3

    move v3, v10

    :goto_f
    if-lt v2, v12, :cond_1f

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/d;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    .line 10
    :goto_10
    iget-object v13, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_17

    iget-object v13, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/d$a;

    invoke-static {v13}, Landroid/support/v4/app/d;->t(Landroid/support/v4/app/d$a;)Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v6, 0x1

    goto :goto_11

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_17
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_18

    add-int/lit8 v6, v2, 0x1

    .line 11
    invoke-virtual {v4, v0, v6, v10}, Landroid/support/v4/app/d;->s(Ljava/util/ArrayList;II)Z

    move-result v6

    if-nez v6, :cond_18

    const/4 v6, 0x1

    goto :goto_12

    :cond_18
    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_1e

    iget-object v6, v7, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    if-nez v6, :cond_19

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v7, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    :cond_19
    new-instance v6, Landroid/support/v4/app/k$k;

    invoke-direct {v6, v4, v5}, Landroid/support/v4/app/k$k;-><init>(Landroid/support/v4/app/d;Z)V

    iget-object v13, v7, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    .line 12
    :goto_13
    iget-object v14, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_1b

    iget-object v14, v4, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v4/app/d$a;

    invoke-static {v14}, Landroid/support/v4/app/d;->t(Landroid/support/v4/app/d$a;)Z

    move-result v15

    if-eqz v15, :cond_1a

    iget-object v14, v14, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    invoke-virtual {v14, v6}, Landroid/support/v4/app/g;->X(Landroid/support/v4/app/g$e;)V

    :cond_1a
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    :cond_1b
    if-eqz v5, :cond_1c

    .line 13
    invoke-virtual {v4}, Landroid/support/v4/app/d;->p()V

    const/4 v5, 0x0

    goto :goto_14

    :cond_1c
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/d;->q(Z)V

    :goto_14
    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1d
    invoke-virtual {v7, v1}, Landroid/support/v4/app/k;->j(Lc0/c;)V

    goto :goto_15

    :cond_1e
    const/4 v5, 0x0

    :goto_15
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_f

    :cond_1f
    const/4 v5, 0x0

    .line 14
    iget v2, v1, Lc0/c;->d:I

    :goto_16
    if-ge v5, v2, :cond_21

    .line 15
    iget-object v4, v1, Lc0/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v5

    .line 16
    check-cast v4, Landroid/support/v4/app/g;

    iget-boolean v6, v4, Landroid/support/v4/app/g;->k:Z

    if-nez v6, :cond_20

    .line 17
    iget-object v6, v4, Landroid/support/v4/app/g;->G:Landroid/view/View;

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v13

    iput v13, v4, Landroid/support/v4/app/g;->N:F

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_21
    move v5, v3

    goto :goto_17

    :cond_22
    move/from16 v12, p3

    move v5, v10

    :goto_17
    if-eq v5, v12, :cond_23

    if-eqz v11, :cond_23

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 19
    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/v;->o(Landroid/support/v4/app/k;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    iget v1, v7, Landroid/support/v4/app/k;->l:I

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/support/v4/app/k;->i0(IZ)V

    :cond_23
    :goto_18
    if-ge v12, v10, :cond_26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/d;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, v1, Landroid/support/v4/app/d;->m:I

    if-ltz v2, :cond_25

    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v3, v7, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-nez v3, :cond_24

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    :cond_24
    iget-object v3, v7, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iput v8, v1, Landroid/support/v4/app/d;->m:I

    goto :goto_19

    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_25
    const/4 v4, 0x0

    .line 23
    :goto_19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    :cond_26
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Y(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/k$k;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    iget-boolean v6, v3, Landroid/support/v4/app/k$k;->a:Z

    if-nez v6, :cond_1

    iget-object v6, v3, Landroid/support/v4/app/k$k;->b:Landroid/support/v4/app/d;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1
    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/k$k;->b:Landroid/support/v4/app/d;

    iget-object v6, v5, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    iget-boolean v3, v3, Landroid/support/v4/app/k$k;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Landroid/support/v4/app/k;->p(Landroid/support/v4/app/d;ZZZ)V

    goto :goto_4

    .line 2
    :cond_1
    iget v6, v3, Landroid/support/v4/app/k$k;->c:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 3
    iget-object v6, v3, Landroid/support/v4/app/k$k;->b:Landroid/support/v4/app/d;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Landroid/support/v4/app/d;->s(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_4

    iget-boolean v6, v3, Landroid/support/v4/app/k$k;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Landroid/support/v4/app/k$k;->b:Landroid/support/v4/app/d;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/app/k$k;->a()V

    :cond_5
    :goto_4
    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final Z(I)Landroid/support/v4/app/g;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/support/v4/app/g;->x:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/support/v4/app/g;->x:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a0(Ljava/lang/String;)Landroid/support/v4/app/g;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/g;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/support/v4/app/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/k;->a0(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    return-object v2

    :cond_3
    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    const-string v0, "    "

    .line 1
    invoke-static {p1, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_e

    iget-object v4, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/g;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_d

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/support/v4/app/g;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mContainerId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/support/v4/app/g;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mTag="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/support/v4/app/g;->b:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mIndex="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/support/v4/app/g;->e:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mWho="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->f:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mBackStackNesting="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/support/v4/app/g;->q:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAdded="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->k:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mRemoving="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->l:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mFromLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->m:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mInLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->n:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHidden="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->A:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mDetached="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->B:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mMenuVisible="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mHasMenu="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mRetainInstance="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->C:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mRetaining="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->D:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mUserVisibleHint="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Landroid/support/v4/app/g;->J:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v5, v4, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    if-eqz v5, :cond_0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentManager="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v5, v4, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-eqz v5, :cond_1

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHost="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v5, v4, Landroid/support/v4/app/g;->w:Landroid/support/v4/app/g;

    if-eqz v5, :cond_2

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mParentFragment="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->w:Landroid/support/v4/app/g;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v5, v4, Landroid/support/v4/app/g;->g:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mArguments="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v5, v4, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSavedFragmentState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v5, v4, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSavedViewState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v5, v4, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    if-eqz v5, :cond_6

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTarget="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " mTargetRequestCode="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/support/v4/app/g;->j:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {v4}, Landroid/support/v4/app/g;->h()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mNextAnim="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/g;->h()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v5, v4, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mContainer="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v5, v4, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mView="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v5, v4, Landroid/support/v4/app/g;->H:Landroid/view/View;

    if-eqz v5, :cond_a

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mInnerView="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v4}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAnimatingAway="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mStateAfterAnimating="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/g;->l()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    invoke-virtual {v4}, Landroid/support/v4/app/g;->g()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-static {v4}, Landroid/support/v4/app/b0;->d(Landroid/arch/lifecycle/e;)Landroid/support/v4/app/b0;

    move-result-object v5

    invoke-virtual {v5, v0, p2, p3, p4}, Landroid/support/v4/app/b0;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v5, v4, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v5, :cond_d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    const-string v5, "  "

    .line 4
    invoke-static {v0, v5}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/support/v4/app/k;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 6
    :cond_e
    iget-object p2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_f

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_f
    iget-object p2, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_10

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p2, :cond_10

    iget-object v1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_10
    iget-object p2, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_11

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_3
    if-ge p4, p2, :cond_11

    iget-object v1, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0, p3}, Landroid/support/v4/app/d;->o(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 8
    :cond_11
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_4
    if-ge p4, p2, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_12
    iget-object p2, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_13

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_14

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v2, p2, :cond_14

    iget-object p4, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v4/app/k$i;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/b0;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz p2, :cond_15

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mCurState="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Landroid/support/v4/app/k;->l:I

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " mStateSaved="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/app/k;->q:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mStopped="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/app/k;->r:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mDestroyed="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/app/k;->s:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;)Landroid/support/v4/app/g;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c0(Landroid/support/v4/app/g;IZI)Landroid/support/v4/app/k$d;
    .registers 10

    invoke-virtual {p1}, Landroid/support/v4/app/g;->h()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 1
    iget-object v2, v2, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "anim"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 3
    iget-object v3, v3, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 4
    invoke-static {v3, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/support/v4/app/k$d;

    invoke-direct {v4, v3}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    :try_start_1
    iget-object v3, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 5
    iget-object v3, v3, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 6
    invoke-static {v3, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Landroid/support/v4/app/k$d;

    invoke-direct {v4, v3}, Landroid/support/v4/app/k$d;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 7
    iget-object v2, v2, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 8
    invoke-static {v2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Landroid/support/v4/app/k$d;

    invoke-direct {p2, p1}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p2

    :cond_2
    throw v3

    :cond_3
    const/4 p1, 0x0

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const/16 v2, 0x1001

    if-eq p2, v2, :cond_9

    const/16 v2, 0x1003

    if-eq p2, v2, :cond_7

    const/16 v2, 0x2002

    if-eq p2, v2, :cond_5

    const/4 p2, -0x1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    const/4 p2, 0x3

    goto :goto_1

    :cond_6
    const/4 p2, 0x4

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    const/4 p2, 0x5

    goto :goto_1

    :cond_8
    const/4 p2, 0x6

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    const/4 p2, 0x1

    goto :goto_1

    :cond_a
    const/4 p2, 0x2

    :goto_1
    if-gez p2, :cond_b

    return-object p1

    :cond_b
    const p3, 0x3f79999a    # 0.975f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    if-nez p4, :cond_e

    iget-object p2, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 9
    iget-object p1, p1, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 10
    invoke-static {v3, v2}, Landroid/support/v4/app/k;->e0(FF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 11
    iget-object p1, p1, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 12
    invoke-static {v2, v3}, Landroid/support/v4/app/k;->e0(FF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 13
    iget-object p1, p1, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    const p1, 0x3f89999a    # 1.075f

    .line 14
    invoke-static {v3, p1, v3, v2}, Landroid/support/v4/app/k;->f0(FFFF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 15
    iget-object p1, p1, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 16
    invoke-static {p3, v3, v2, v3}, Landroid/support/v4/app/k;->f0(FFFF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 17
    iget-object p1, p1, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 18
    invoke-static {v3, p3, v3, v2}, Landroid/support/v4/app/k;->f0(FFFF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 19
    iget-object p1, p1, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    const/high16 p1, 0x3f900000    # 1.125f

    .line 20
    invoke-static {p1, v3, v2, v3}, Landroid/support/v4/app/k;->f0(FFFF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :goto_2
    check-cast p2, Landroid/support/v4/app/h$b;

    .line 21
    iget-object p2, p2, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_c

    const/4 v0, 0x1

    :cond_c
    if-eqz v0, :cond_e

    .line 22
    iget-object p2, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    check-cast p2, Landroid/support/v4/app/h$b;

    .line 23
    iget-object p2, p2, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_e
    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d0(Landroid/support/v4/app/g;)V
    .registers 4

    iget v0, p1, Landroid/support/v4/app/g;->e:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/app/k;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/k;->d:I

    iget-object v1, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/g;->V(ILandroid/support/v4/app/g;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/g;->e:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h0(Landroid/support/v4/app/g;)V
    .registers 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/app/k;->l:I

    iget-boolean v1, p1, Landroid/support/v4/app/g;->l:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/g;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    move v6, v0

    invoke-virtual {p1}, Landroid/support/v4/app/g;->i()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/app/g;->j()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    iget-object v0, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1
    iget-object v0, p1, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    :cond_3
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    iget-object v5, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/g;

    iget-object v6, v5, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_3

    iget-object v6, v5, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v6, :cond_3

    move-object v1, v5

    :cond_4
    if-eqz v1, :cond_5

    .line 2
    iget-object v0, v1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_5

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    iget-boolean v0, p1, Landroid/support/v4/app/g;->L:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget v0, p1, Landroid/support/v4/app/g;->N:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_6

    iget-object v4, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iput v1, p1, Landroid/support/v4/app/g;->N:F

    iput-boolean v3, p1, Landroid/support/v4/app/g;->L:Z

    invoke-virtual {p1}, Landroid/support/v4/app/g;->i()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/g;->j()I

    move-result v1

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/k;->c0(Landroid/support/v4/app/g;IZI)Landroid/support/v4/app/k$d;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/k;->t0(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    iget-object v1, v0, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_7

    iget-object v0, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_7
    iget-object v1, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_8
    :goto_1
    iget-boolean v0, p1, Landroid/support/v4/app/g;->M:Z

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/support/v4/app/g;->i()I

    move-result v0

    iget-boolean v1, p1, Landroid/support/v4/app/g;->A:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v4/app/g;->j()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/support/v4/app/k;->c0(Landroid/support/v4/app/g;IZI)Landroid/support/v4/app/k$d;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    if-eqz v1, :cond_b

    iget-object v2, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v1, p1, Landroid/support/v4/app/g;->A:Z

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/support/v4/app/g;->q()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v3}, Landroid/support/v4/app/g;->U(Z)V

    goto :goto_2

    :cond_9
    iget-object v1, p1, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    iget-object v2, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v4, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    new-instance v5, Landroid/support/v4/app/n;

    invoke-direct {v5, v1, v2, p1}, Landroid/support/v4/app/n;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/g;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_a
    iget-object v1, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/k;->t0(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    iget-object v0, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_c

    iget-object v1, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/k;->t0(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    iget-object v1, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_c
    iget-boolean v0, p1, Landroid/support/v4/app/g;->A:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/support/v4/app/g;->q()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/g;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, v3}, Landroid/support/v4/app/g;->U(Z)V

    :cond_e
    :goto_4
    iput-boolean v3, p1, Landroid/support/v4/app/g;->M:Z

    :cond_f
    return-void
.end method

.method public final i()Z
    .registers 6

    invoke-virtual {p0}, Landroid/support/v4/app/k;->n()V

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/k;->W()Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->V()V

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/app/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/k;->v:Ljava/util/ArrayList;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/support/v4/app/k;->l0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v4/app/k;->c:Z

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/k;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/k;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/k;->n0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/support/v4/app/k;->o()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v4/app/k;->o()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/app/k;->t:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Landroid/support/v4/app/k;->t:Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->w0()V

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/k;->m()V

    move v1, v0

    :goto_1
    return v1
.end method

.method public final i0(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroid/support/v4/app/k;->l:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroid/support/v4/app/k;->l:I

    iget-object p1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/k;->h0(Landroid/support/v4/app/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge p2, p1, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    if-eqz v0, :cond_5

    iget-boolean v1, v0, Landroid/support/v4/app/g;->l:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroid/support/v4/app/g;->B:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, v0, Landroid/support/v4/app/g;->L:Z

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->h0(Landroid/support/v4/app/g;)V

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/k;->w0()V

    :cond_7
    return-void
.end method

.method public final j(Lc0/c;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc0/c<",
            "Landroid/support/v4/app/g;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/app/k;->l:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v4/app/g;

    iget v2, v9, Landroid/support/v4/app/g;->b:I

    if-ge v2, v0, :cond_1

    invoke-virtual {v9}, Landroid/support/v4/app/g;->h()I

    move-result v5

    invoke-virtual {v9}, Landroid/support/v4/app/g;->i()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    iget-object v2, v9, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/g;->A:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/g;->L:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, v9}, Lc0/c;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final j0(Landroid/support/v4/app/g;IIIZ)V
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Landroid/support/v4/app/g;->k:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Landroid/support/v4/app/g;->B:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v8, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget-boolean v1, v7, Landroid/support/v4/app/g;->l:Z

    if-eqz v1, :cond_4

    iget v1, v7, Landroid/support/v4/app/g;->b:I

    if-le v0, v1, :cond_4

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, v7, Landroid/support/v4/app/g;->b:I

    :cond_4
    :goto_2
    iget-boolean v1, v7, Landroid/support/v4/app/g;->I:Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v1, :cond_5

    iget v1, v7, Landroid/support/v4/app/g;->b:I

    if-ge v1, v9, :cond_5

    if-le v0, v10, :cond_5

    const/4 v0, 0x2

    const/4 v11, 0x2

    goto :goto_3

    :cond_5
    move v11, v0

    :goto_3
    iget v0, v7, Landroid/support/v4/app/g;->b:I

    const/4 v12, -0x1

    const-string v13, "Fragment "

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-gt v0, v11, :cond_32

    iget-boolean v0, v7, Landroid/support/v4/app/g;->m:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v7, Landroid/support/v4/app/g;->n:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->f()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {v7, v15}, Landroid/support/v4/app/g;->R(Landroid/view/View;)V

    invoke-virtual {v7, v15}, Landroid/support/v4/app/g;->S(Landroid/animation/Animator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->l()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    :cond_8
    iget v0, v7, Landroid/support/v4/app/g;->b:I

    if-eqz v0, :cond_9

    if-eq v0, v8, :cond_16

    if-eq v0, v10, :cond_28

    if-eq v0, v9, :cond_2d

    goto/16 :goto_1b

    :cond_9
    if-lez v11, :cond_16

    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    iget-object v1, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 1
    iget-object v1, v1, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    .line 3
    invoke-virtual {v0, v1, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_a

    move-object v2, v15

    goto :goto_4

    :cond_a
    iget-object v2, v6, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/g;

    if-eqz v2, :cond_c

    .line 4
    :goto_4
    iput-object v2, v7, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    if-eqz v2, :cond_b

    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroid/support/v4/app/g;->j:I

    :cond_b
    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Landroid/support/v4/app/g;->J:Z

    if-nez v0, :cond_d

    iput-boolean v8, v7, Landroid/support/v4/app/g;->I:Z

    if-le v11, v10, :cond_d

    const/4 v0, 0x2

    const/4 v11, 0x2

    goto :goto_5

    .line 5
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": index "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    throw v15

    .line 6
    :cond_d
    :goto_5
    iget-object v0, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    iput-object v0, v7, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    iget-object v1, v6, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    iput-object v1, v7, Landroid/support/v4/app/g;->w:Landroid/support/v4/app/g;

    if-eqz v1, :cond_e

    iget-object v0, v1, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    goto :goto_6

    .line 7
    :cond_e
    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    .line 8
    :goto_6
    iput-object v0, v7, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    iget-object v0, v7, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    if-eqz v0, :cond_10

    iget-object v1, v6, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    iget v0, v0, Landroid/support/v4/app/g;->e:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    if-ne v0, v1, :cond_f

    iget v0, v1, Landroid/support/v4/app/g;->b:I

    if-ge v0, v8, :cond_10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_7
    iget-object v0, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 9
    iget-object v0, v0, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 10
    invoke-virtual {v6, v7, v0, v14}, Landroid/support/v4/app/k;->F(Landroid/support/v4/app/g;Landroid/content/Context;Z)V

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    iget-object v0, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 11
    iget-object v0, v0, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->u()V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_15

    iget-object v0, v7, Landroid/support/v4/app/g;->w:Landroid/support/v4/app/g;

    if-nez v0, :cond_11

    iget-object v0, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    check-cast v0, Landroid/support/v4/app/h$b;

    .line 13
    iget-object v0, v0, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_11
    iget-object v0, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 15
    iget-object v0, v0, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 16
    invoke-virtual {v6, v7, v0, v14}, Landroid/support/v4/app/k;->A(Landroid/support/v4/app/g;Landroid/content/Context;Z)V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->O:Z

    if-nez v0, :cond_14

    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, Landroid/support/v4/app/k;->G(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    .line 17
    iget-object v1, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/support/v4/app/k;->k0()V

    :cond_12
    iput v8, v7, Landroid/support/v4/app/g;->b:I

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    invoke-virtual {v7, v0}, Landroid/support/v4/app/g;->v(Landroid/os/Bundle;)V

    iput-boolean v8, v7, Landroid/support/v4/app/g;->O:Z

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_13

    iget-object v0, v7, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_CREATE:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    .line 18
    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, Landroid/support/v4/app/k;->B(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    goto :goto_8

    .line 19
    :cond_13
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_14
    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/g;->Q(Landroid/os/Bundle;)V

    iput v8, v7, Landroid/support/v4/app/g;->b:I

    :goto_8
    iput-boolean v14, v7, Landroid/support/v4/app/g;->D:Z

    goto :goto_9

    :cond_15
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_16
    :goto_9
    iget-boolean v0, v7, Landroid/support/v4/app/g;->m:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_19

    iget-boolean v0, v7, Landroid/support/v4/app/g;->p:Z

    if-nez v0, :cond_19

    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    .line 22
    invoke-virtual {v7, v0}, Landroid/support/v4/app/g;->A(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 23
    iget-object v2, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v15, v2}, Landroid/support/v4/app/g;->I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_18

    iput-object v0, v7, Landroid/support/v4/app/g;->H:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->A:Z

    if-eqz v0, :cond_17

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    iget-object v2, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v2, v14}, Landroid/support/v4/app/k;->L(Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_a

    :cond_18
    iput-object v15, v7, Landroid/support/v4/app/g;->H:Landroid/view/View;

    :cond_19
    :goto_a
    if-le v11, v8, :cond_28

    .line 24
    iget-boolean v0, v7, Landroid/support/v4/app/g;->m:Z

    if-nez v0, :cond_22

    iget v0, v7, Landroid/support/v4/app/g;->y:I

    if-eqz v0, :cond_1c

    if-eq v0, v12, :cond_1b

    iget-object v2, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/b0;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/b0;->g(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1d

    iget-boolean v2, v7, Landroid/support/v4/app/g;->o:Z

    if-eqz v2, :cond_1a

    goto :goto_c

    :cond_1a
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->k()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Landroid/support/v4/app/g;->y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    const-string v0, "unknown"

    :goto_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No view found for id 0x"

    .line 25
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26
    iget v3, v7, Landroid/support/v4/app/g;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    throw v15

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    throw v15

    :cond_1c
    move-object v0, v15

    :cond_1d
    :goto_c
    iput-object v0, v7, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    iget-object v2, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    .line 27
    invoke-virtual {v7, v2}, Landroid/support/v4/app/g;->A(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 28
    iget-object v3, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v2, v0, v3}, Landroid/support/v4/app/g;->I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v2, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v2, :cond_21

    iput-object v2, v7, Landroid/support/v4/app/g;->H:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_1e

    iget-object v2, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1e
    iget-boolean v0, v7, Landroid/support/v4/app/g;->A:Z

    if-eqz v0, :cond_1f

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    iget-object v1, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v1, v14}, Landroid/support/v4/app/k;->L(Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v7, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_d

    :cond_20
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, v7, Landroid/support/v4/app/g;->L:Z

    goto :goto_e

    :cond_21
    iput-object v15, v7, Landroid/support/v4/app/g;->H:Landroid/view/View;

    :cond_22
    :goto_e
    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    .line 29
    iget-object v1, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/support/v4/app/k;->k0()V

    :cond_23
    iput v10, v7, Landroid/support/v4/app/g;->b:I

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    invoke-virtual {v7, v0}, Landroid/support/v4/app/g;->s(Landroid/os/Bundle;)V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_27

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/support/v4/app/k;->r()V

    .line 30
    :cond_24
    iget-object v0, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, Landroid/support/v4/app/k;->z(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 31
    iget-object v0, v7, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_25

    iget-object v1, v7, Landroid/support/v4/app/g;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v15, v7, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    .line 32
    :cond_25
    iput-boolean v8, v7, Landroid/support/v4/app/g;->E:Z

    .line 33
    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_26

    iget-object v0, v7, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_CREATE:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    .line 34
    :cond_26
    iput-object v15, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    goto :goto_f

    .line 35
    :cond_27
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_f
    if-le v11, v10, :cond_2d

    .line 36
    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k0()V

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->W()Z

    :cond_29
    iput v9, v7, Landroid/support/v4/app/g;->b:I

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->E()V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_2c

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/support/v4/app/k;->S()V

    :cond_2a
    iget-object v0, v7, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_START:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, v7, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    .line 37
    :cond_2b
    invoke-virtual {v6, v7, v14}, Landroid/support/v4/app/k;->J(Landroid/support/v4/app/g;Z)V

    goto :goto_10

    .line 38
    :cond_2c
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    :goto_10
    if-le v11, v9, :cond_52

    .line 39
    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k0()V

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->W()Z

    :cond_2e
    const/4 v0, 0x4

    iput v0, v7, Landroid/support/v4/app/g;->b:I

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->C()V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_31

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/support/v4/app/k;->R()V

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->W()Z

    :cond_2f
    iget-object v0, v7, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-object v0, v7, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    .line 40
    :cond_30
    invoke-virtual {v6, v7, v14}, Landroid/support/v4/app/k;->H(Landroid/support/v4/app/g;Z)V

    iput-object v15, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    iput-object v15, v7, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    goto/16 :goto_1b

    .line 41
    :cond_31
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    if-le v0, v11, :cond_52

    if-eq v0, v8, :cond_45

    if-eq v0, v10, :cond_3b

    if-eq v0, v9, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    goto/16 :goto_1b

    :cond_33
    if-ge v11, v1, :cond_37

    .line 42
    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_34

    iget-object v0, v7, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_PAUSE:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    :cond_34
    iget-object v0, v7, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_PAUSE:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_35

    .line 43
    invoke-virtual {v0, v9}, Landroid/support/v4/app/k;->T(I)V

    .line 44
    :cond_35
    iput v9, v7, Landroid/support/v4/app/g;->b:I

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->B()V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_36

    .line 45
    invoke-virtual {v6, v7, v14}, Landroid/support/v4/app/k;->E(Landroid/support/v4/app/g;Z)V

    goto :goto_11

    .line 46
    :cond_36
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_11
    if-ge v11, v9, :cond_3b

    .line 47
    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_38

    iget-object v0, v7, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    :cond_38
    iget-object v0, v7, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_39

    .line 48
    iput-boolean v8, v0, Landroid/support/v4/app/k;->r:Z

    invoke-virtual {v0, v10}, Landroid/support/v4/app/k;->T(I)V

    .line 49
    :cond_39
    iput v10, v7, Landroid/support/v4/app/g;->b:I

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->F()V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_3a

    .line 50
    invoke-virtual {v6, v7, v14}, Landroid/support/v4/app/k;->K(Landroid/support/v4/app/g;Z)V

    goto :goto_12

    .line 51
    :cond_3a
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_12
    if-ge v11, v10, :cond_45

    .line 52
    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_3c

    iget-object v0, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    check-cast v0, Landroid/support/v4/app/h$b;

    .line 53
    iget-object v0, v0, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/2addr v0, v8

    if-eqz v0, :cond_3c

    .line 54
    iget-object v0, v7, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    if-nez v0, :cond_3c

    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/k;->q0(Landroid/support/v4/app/g;)V

    .line 55
    :cond_3c
    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_3d

    iget-object v0, v7, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    :cond_3d
    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_3e

    .line 56
    invoke-virtual {v0, v8}, Landroid/support/v4/app/k;->T(I)V

    .line 57
    :cond_3e
    iput v8, v7, Landroid/support/v4/app/g;->b:I

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->y()V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_44

    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/b0;->d(Landroid/arch/lifecycle/e;)Landroid/support/v4/app/b0;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 58
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    .line 59
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Lc0/k;

    invoke-virtual {v1}, Lc0/k;->h()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3f

    iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Lc0/k;

    invoke-virtual {v3, v2}, Lc0/k;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 60
    :cond_3f
    iput-boolean v14, v7, Landroid/support/v4/app/g;->p:Z

    .line 61
    invoke-virtual {v6, v7, v14}, Landroid/support/v4/app/k;->M(Landroid/support/v4/app/g;Z)V

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_43

    iget-object v1, v7, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    if-eqz v1, :cond_43

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget v0, v6, Landroid/support/v4/app/k;->l:I

    const/4 v1, 0x0

    if-lez v0, :cond_40

    iget-boolean v0, v6, Landroid/support/v4/app/k;->s:Z

    if-nez v0, :cond_40

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_40

    iget v0, v7, Landroid/support/v4/app/g;->N:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_40

    move/from16 v0, p3

    move/from16 v2, p4

    invoke-virtual {v6, v7, v0, v14, v2}, Landroid/support/v4/app/k;->c0(Landroid/support/v4/app/g;IZI)Landroid/support/v4/app/k$d;

    move-result-object v0

    goto :goto_14

    :cond_40
    move-object v0, v15

    :goto_14
    iput v1, v7, Landroid/support/v4/app/g;->N:F

    if-eqz v0, :cond_42

    .line 62
    iget-object v1, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    iget-object v2, v7, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    move-result-object v3

    iput v11, v3, Landroid/support/v4/app/g$c;->c:I

    .line 64
    iget-object v3, v0, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_41

    new-instance v3, Landroid/support/v4/app/k$f;

    iget-object v4, v0, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    invoke-direct {v3, v4, v2, v1}, Landroid/support/v4/app/k$f;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v4, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/support/v4/app/g;->R(Landroid/view/View;)V

    invoke-static {v3}, Landroid/support/v4/app/k;->b0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v4

    new-instance v5, Landroid/support/v4/app/l;

    invoke-direct {v5, v6, v4, v2, v7}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/k;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/support/v4/app/g;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {v1, v0}, Landroid/support/v4/app/k;->t0(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_15

    :cond_41
    iget-object v3, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    invoke-virtual {v7, v3}, Landroid/support/v4/app/g;->S(Landroid/animation/Animator;)V

    new-instance v4, Landroid/support/v4/app/m;

    invoke-direct {v4, v6, v2, v1, v7}, Landroid/support/v4/app/m;-><init>(Landroid/support/v4/app/k;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/g;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/k;->t0(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 65
    :cond_42
    :goto_15
    iget-object v0, v7, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_43
    iput-object v15, v7, Landroid/support/v4/app/g;->F:Landroid/view/ViewGroup;

    iput-object v15, v7, Landroid/support/v4/app/g;->G:Landroid/view/View;

    iput-object v15, v7, Landroid/support/v4/app/g;->R:Landroid/support/v4/app/g$b;

    iget-object v0, v7, Landroid/support/v4/app/g;->S:Landroid/arch/lifecycle/i;

    invoke-virtual {v0, v15}, Landroid/arch/lifecycle/i;->g(Ljava/lang/Object;)V

    iput-object v15, v7, Landroid/support/v4/app/g;->H:Landroid/view/View;

    iput-boolean v14, v7, Landroid/support/v4/app/g;->n:Z

    goto :goto_16

    .line 66
    :cond_44
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    :goto_16
    if-ge v11, v8, :cond_52

    .line 67
    iget-boolean v0, v6, Landroid/support/v4/app/k;->s:Z

    if-eqz v0, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v15}, Landroid/support/v4/app/g;->R(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_17

    :cond_46
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->f()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->f()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v7, v15}, Landroid/support/v4/app/g;->S(Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_47
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_51

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->f()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_48

    goto/16 :goto_1a

    :cond_48
    iget-boolean v0, v7, Landroid/support/v4/app/g;->D:Z

    if-nez v0, :cond_4b

    .line 68
    iget-object v0, v7, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/d$a;)V

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/support/v4/app/k;->w()V

    :cond_49
    iput v14, v7, Landroid/support/v4/app/g;->b:I

    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    iput-boolean v14, v7, Landroid/support/v4/app/g;->O:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->x()V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_4a

    iput-object v15, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    .line 69
    invoke-virtual {v6, v7, v14}, Landroid/support/v4/app/k;->C(Landroid/support/v4/app/g;Z)V

    goto :goto_18

    .line 70
    :cond_4a
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_4b
    iput v14, v7, Landroid/support/v4/app/g;->b:I

    .line 72
    :goto_18
    iput-boolean v14, v7, Landroid/support/v4/app/g;->E:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->z()V

    iget-boolean v0, v7, Landroid/support/v4/app/g;->E:Z

    if-eqz v0, :cond_50

    iget-object v0, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_4d

    iget-boolean v1, v7, Landroid/support/v4/app/g;->D:Z

    if-eqz v1, :cond_4c

    invoke-virtual {v0}, Landroid/support/v4/app/k;->w()V

    iput-object v15, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    goto :goto_19

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_4d
    :goto_19
    invoke-virtual {v6, v7, v14}, Landroid/support/v4/app/k;->D(Landroid/support/v4/app/g;Z)V

    if-nez p5, :cond_52

    iget-boolean v0, v7, Landroid/support/v4/app/g;->D:Z

    if-nez v0, :cond_4f

    .line 74
    iget v0, v7, Landroid/support/v4/app/g;->e:I

    if-gez v0, :cond_4e

    goto :goto_1b

    :cond_4e
    iget-object v1, v6, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iput v12, v7, Landroid/support/v4/app/g;->e:I

    iput-object v15, v7, Landroid/support/v4/app/g;->f:Ljava/lang/String;

    iput-boolean v14, v7, Landroid/support/v4/app/g;->k:Z

    iput-boolean v14, v7, Landroid/support/v4/app/g;->l:Z

    iput-boolean v14, v7, Landroid/support/v4/app/g;->m:Z

    iput-boolean v14, v7, Landroid/support/v4/app/g;->n:Z

    iput-boolean v14, v7, Landroid/support/v4/app/g;->o:Z

    iput v14, v7, Landroid/support/v4/app/g;->q:I

    iput-object v15, v7, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    iput-object v15, v7, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    iput-object v15, v7, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    iput v14, v7, Landroid/support/v4/app/g;->x:I

    iput v14, v7, Landroid/support/v4/app/g;->y:I

    iput-object v15, v7, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    iput-boolean v14, v7, Landroid/support/v4/app/g;->A:Z

    iput-boolean v14, v7, Landroid/support/v4/app/g;->B:Z

    iput-boolean v14, v7, Landroid/support/v4/app/g;->D:Z

    goto :goto_1b

    .line 76
    :cond_4f
    iput-object v15, v7, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    iput-object v15, v7, Landroid/support/v4/app/g;->w:Landroid/support/v4/app/g;

    iput-object v15, v7, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    goto :goto_1b

    .line 77
    :cond_50
    new-instance v0, Landroid/support/v4/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/i0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_51
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    move-result-object v0

    iput v11, v0, Landroid/support/v4/app/g$c;->c:I

    goto :goto_1c

    :cond_52
    :goto_1b
    move v8, v11

    .line 79
    :goto_1c
    iget v0, v7, Landroid/support/v4/app/g;->b:I

    if-eq v0, v8, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroid/support/v4/app/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v7, Landroid/support/v4/app/g;->b:I

    :cond_53
    return-void
.end method

.method public final k(Landroid/support/v4/app/g;Z)V
    .registers 11

    invoke-virtual {p0, p1}, Landroid/support/v4/app/k;->d0(Landroid/support/v4/app/g;)V

    iget-boolean v0, p1, Landroid/support/v4/app/g;->B:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/g;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/g;->l:Z

    iget-object v1, p1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-nez v1, :cond_0

    iput-boolean v0, p1, Landroid/support/v4/app/g;->M:Z

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    iget v4, p0, Landroid/support/v4/app/k;->l:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public final k0()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->A:Landroid/support/v4/app/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/g;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/app/k;->k0()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l(Landroid/support/v4/app/g;)V
    .registers 5

    iget-boolean v0, p1, Landroid/support/v4/app/g;->B:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/g;->B:Z

    iget-boolean v0, p1, Landroid/support/v4/app/g;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/g;->k:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final l0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-gez p3, :cond_2

    and-int/lit8 v3, p4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p4, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    const/4 v3, -0x1

    if-ltz p3, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/d;

    if-ltz p3, :cond_3

    iget v4, v4, Landroid/support/v4/app/d;->m:I

    if-ne p3, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-gez v0, :cond_5

    return v1

    :cond_5
    and-int/2addr p4, v2

    if-eqz p4, :cond_6

    :goto_2
    add-int/2addr v0, v3

    if-ltz v0, :cond_6

    iget-object p4, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v4/app/d;

    if-ltz p3, :cond_6

    iget p4, p4, Landroid/support/v4/app/d;->m:I

    if-ne p3, p4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v0

    :cond_7
    iget-object p3, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v3, p3, :cond_8

    return v1

    :cond_8
    iget-object p3, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_3
    if-le p3, v3, :cond_9

    iget-object p4, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    return v2
.end method

.method public final m()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m0(Landroid/support/v4/app/g;)V
    .registers 5

    invoke-virtual {p1}, Landroid/support/v4/app/g;->r()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroid/support/v4/app/g;->B:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/g;->k:Z

    iput-boolean v1, p1, Landroid/support/v4/app/g;->l:Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/app/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/k;->Y(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/d;

    iget-boolean v3, v3, Landroid/support/v4/app/d;->t:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroid/support/v4/app/k;->X(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/d;

    iget-boolean v3, v3, Landroid/support/v4/app/d;->t:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v4/app/k;->X(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/support/v4/app/k;->X(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method public final o()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    iget-object v0, p0, Landroid/support/v4/app/k;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/k;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final o0(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V
    .registers 16

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/support/v4/app/p;

    iget-object v0, p1, Landroid/support/v4/app/p;->b:[Landroid/support/v4/app/q;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 1
    iget-object v2, p2, Landroid/support/v4/app/o;->a:Ljava/util/List;

    .line 2
    iget-object v3, p2, Landroid/support/v4/app/o;->b:Ljava/util/List;

    .line 3
    iget-object v4, p2, Landroid/support/v4/app/o;->c:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/g;

    const/4 v8, 0x0

    :goto_2
    iget-object v9, p1, Landroid/support/v4/app/p;->b:[Landroid/support/v4/app/q;

    array-length v10, v9

    if-ge v8, v10, :cond_3

    aget-object v10, v9, v8

    iget v10, v10, Landroid/support/v4/app/q;->c:I

    iget v11, v7, Landroid/support/v4/app/g;->e:I

    if-eq v10, v11, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    array-length v10, v9

    if-eq v8, v10, :cond_5

    aget-object v8, v9, v8

    iput-object v7, v8, Landroid/support/v4/app/q;->m:Landroid/support/v4/app/g;

    iput-object v0, v7, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    iput v1, v7, Landroid/support/v4/app/g;->q:I

    iput-boolean v1, v7, Landroid/support/v4/app/g;->n:Z

    iput-boolean v1, v7, Landroid/support/v4/app/g;->k:Z

    iput-object v0, v7, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    iget-object v9, v8, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    if-eqz v9, :cond_4

    iget-object v10, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 5
    iget-object v10, v10, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 6
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v9, v8, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    const-string v10, "android:view_state"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v7, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    iget-object v8, v8, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    iput-object v8, v7, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find active fragment with index "

    .line 7
    invoke-static {p2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 8
    iget v1, v7, Landroid/support/v4/app/g;->e:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_6
    move-object v3, v0

    move-object v4, v3

    :cond_7
    new-instance v1, Landroid/util/SparseArray;

    iget-object v2, p1, Landroid/support/v4/app/p;->b:[Landroid/support/v4/app/q;

    array-length v2, v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p1, Landroid/support/v4/app/p;->b:[Landroid/support/v4/app/q;

    array-length v5, v2

    const/4 v6, 0x1

    if-ge v1, v5, :cond_f

    aget-object v2, v2, v1

    if-eqz v2, :cond_e

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/o;

    goto :goto_4

    :cond_8
    move-object v5, v0

    :goto_4
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_9

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/m;

    :cond_9
    iget-object v7, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    iget-object v8, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/b0;

    iget-object v9, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    .line 9
    iget-object v10, v2, Landroid/support/v4/app/q;->m:Landroid/support/v4/app/g;

    if-nez v10, :cond_d

    .line 10
    iget-object v10, v7, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 11
    iget-object v11, v2, Landroid/support/v4/app/q;->j:Landroid/os/Bundle;

    if-eqz v11, :cond_a

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_a
    iget-object v11, v2, Landroid/support/v4/app/q;->b:Ljava/lang/String;

    iget-object v12, v2, Landroid/support/v4/app/q;->j:Landroid/os/Bundle;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v10, v11, v12}, Landroid/support/v4/app/b0;->e(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;

    move-result-object v8

    goto :goto_5

    :cond_b
    invoke-static {v10, v11, v12}, Landroid/support/v4/app/g;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;

    move-result-object v8

    :goto_5
    iput-object v8, v2, Landroid/support/v4/app/q;->m:Landroid/support/v4/app/g;

    iget-object v8, v2, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    if-eqz v8, :cond_c

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v8, v2, Landroid/support/v4/app/q;->m:Landroid/support/v4/app/g;

    iget-object v10, v2, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    iput-object v10, v8, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    :cond_c
    iget-object v8, v2, Landroid/support/v4/app/q;->m:Landroid/support/v4/app/g;

    iget v10, v2, Landroid/support/v4/app/q;->c:I

    invoke-virtual {v8, v10, v9}, Landroid/support/v4/app/g;->V(ILandroid/support/v4/app/g;)V

    iget-object v8, v2, Landroid/support/v4/app/q;->m:Landroid/support/v4/app/g;

    iget-boolean v9, v2, Landroid/support/v4/app/q;->d:Z

    iput-boolean v9, v8, Landroid/support/v4/app/g;->m:Z

    iput-boolean v6, v8, Landroid/support/v4/app/g;->o:Z

    iget v6, v2, Landroid/support/v4/app/q;->e:I

    iput v6, v8, Landroid/support/v4/app/g;->x:I

    iget v6, v2, Landroid/support/v4/app/q;->f:I

    iput v6, v8, Landroid/support/v4/app/g;->y:I

    iget-object v6, v2, Landroid/support/v4/app/q;->g:Ljava/lang/String;

    iput-object v6, v8, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    iget-boolean v6, v2, Landroid/support/v4/app/q;->h:Z

    iput-boolean v6, v8, Landroid/support/v4/app/g;->C:Z

    iget-boolean v6, v2, Landroid/support/v4/app/q;->i:Z

    iput-boolean v6, v8, Landroid/support/v4/app/g;->B:Z

    iget-boolean v6, v2, Landroid/support/v4/app/q;->k:Z

    iput-boolean v6, v8, Landroid/support/v4/app/g;->A:Z

    iget-object v6, v7, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    iput-object v6, v8, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    :cond_d
    iget-object v6, v2, Landroid/support/v4/app/q;->m:Landroid/support/v4/app/g;

    iput-object v5, v6, Landroid/support/v4/app/g;->u:Landroid/support/v4/app/o;

    iput-object v0, v6, Landroid/support/v4/app/g;->v:Landroid/arch/lifecycle/m;

    .line 12
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    iget v5, v6, Landroid/support/v4/app/g;->e:I

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, v2, Landroid/support/v4/app/q;->m:Landroid/support/v4/app/g;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_f
    if-eqz p2, :cond_12

    .line 13
    iget-object p2, p2, Landroid/support/v4/app/o;->a:Ljava/util/List;

    if-eqz p2, :cond_10

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_12

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/g;

    iget v3, v2, Landroid/support/v4/app/g;->i:I

    if-ltz v3, :cond_11

    iget-object v4, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/g;

    iput-object v3, v2, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    if-nez v3, :cond_11

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-attaching retained fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/support/v4/app/g;->i:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    iget-object p2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Landroid/support/v4/app/p;->c:[I

    if-eqz p2, :cond_15

    const/4 p2, 0x0

    :goto_8
    iget-object v0, p1, Landroid/support/v4/app/p;->c:[I

    array-length v1, v0

    if-ge p2, v1, :cond_15

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    aget v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    if-eqz v0, :cond_14

    iput-boolean v6, v0, Landroid/support/v4/app/g;->k:Z

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instantiated fragment for index #"

    .line 15
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    iget-object p1, p1, Landroid/support/v4/app/p;->c:[I

    aget p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    const/4 p1, 0x0

    throw p1

    :cond_15
    iget-object p2, p1, Landroid/support/v4/app/p;->d:[Landroid/support/v4/app/e;

    if-eqz p2, :cond_1d

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/app/p;->d:[Landroid/support/v4/app/e;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_9
    iget-object v0, p1, Landroid/support/v4/app/p;->d:[Landroid/support/v4/app/e;

    array-length v1, v0

    if-ge p2, v1, :cond_1e

    aget-object v0, v0, p2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Landroid/support/v4/app/d;

    invoke-direct {v1, p0}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/k;)V

    const/4 v2, 0x0

    :goto_a
    iget-object v3, v0, Landroid/support/v4/app/e;->b:[I

    array-length v4, v3

    if-ge v2, v4, :cond_17

    new-instance v4, Landroid/support/v4/app/d$a;

    invoke-direct {v4}, Landroid/support/v4/app/d$a;-><init>()V

    add-int/lit8 v5, v2, 0x1

    aget v2, v3, v2

    iput v2, v4, Landroid/support/v4/app/d$a;->a:I

    add-int/lit8 v2, v5, 0x1

    aget v3, v3, v5

    if-ltz v3, :cond_16

    iget-object v5, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/g;

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    :goto_b
    iput-object v3, v4, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    iget-object v3, v0, Landroid/support/v4/app/e;->b:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v3, v2

    iput v2, v4, Landroid/support/v4/app/d$a;->c:I

    add-int/lit8 v7, v5, 0x1

    aget v5, v3, v5

    iput v5, v4, Landroid/support/v4/app/d$a;->d:I

    add-int/lit8 v8, v7, 0x1

    aget v7, v3, v7

    iput v7, v4, Landroid/support/v4/app/d$a;->e:I

    add-int/lit8 v9, v8, 0x1

    aget v3, v3, v8

    iput v3, v4, Landroid/support/v4/app/d$a;->f:I

    iput v2, v1, Landroid/support/v4/app/d;->d:I

    iput v5, v1, Landroid/support/v4/app/d;->e:I

    iput v7, v1, Landroid/support/v4/app/d;->f:I

    iput v3, v1, Landroid/support/v4/app/d;->g:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/d;->j(Landroid/support/v4/app/d$a;)V

    move v2, v9

    goto :goto_a

    :cond_17
    iget v2, v0, Landroid/support/v4/app/e;->c:I

    iput v2, v1, Landroid/support/v4/app/d;->h:I

    iget v2, v0, Landroid/support/v4/app/e;->d:I

    iput v2, v1, Landroid/support/v4/app/d;->i:I

    iget-object v2, v0, Landroid/support/v4/app/e;->e:Ljava/lang/String;

    iput-object v2, v1, Landroid/support/v4/app/d;->k:Ljava/lang/String;

    iget v2, v0, Landroid/support/v4/app/e;->f:I

    iput v2, v1, Landroid/support/v4/app/d;->m:I

    iput-boolean v6, v1, Landroid/support/v4/app/d;->j:Z

    iget v2, v0, Landroid/support/v4/app/e;->g:I

    iput v2, v1, Landroid/support/v4/app/d;->n:I

    iget-object v2, v0, Landroid/support/v4/app/e;->h:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/support/v4/app/d;->o:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/support/v4/app/e;->i:I

    iput v2, v1, Landroid/support/v4/app/d;->p:I

    iget-object v2, v0, Landroid/support/v4/app/e;->j:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/support/v4/app/d;->q:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/support/v4/app/e;->k:Ljava/util/ArrayList;

    iput-object v2, v1, Landroid/support/v4/app/d;->r:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/support/v4/app/e;->l:Ljava/util/ArrayList;

    iput-object v2, v1, Landroid/support/v4/app/d;->s:Ljava/util/ArrayList;

    iget-boolean v0, v0, Landroid/support/v4/app/e;->m:Z

    iput-boolean v0, v1, Landroid/support/v4/app/d;->t:Z

    invoke-virtual {v1, v6}, Landroid/support/v4/app/d;->k(I)V

    .line 18
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v1, Landroid/support/v4/app/d;->m:I

    if-ltz v0, :cond_1c

    .line 19
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-nez v2, :cond_18

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    :cond_18
    iget-object v2, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_19
    :goto_c
    if-ge v2, v0, :cond_1b

    iget-object v3, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-nez v3, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    :cond_1a
    iget-object v3, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    monitor-exit p0

    goto :goto_e

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1c
    :goto_e
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_9

    :cond_1d
    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    :cond_1e
    iget p2, p1, Landroid/support/v4/app/p;->e:I

    if-ltz p2, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/g;

    iput-object p2, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/g;

    :cond_1f
    iget p1, p1, Landroid/support/v4/app/p;->f:I

    iput p1, p0, Landroid/support/v4/app/k;->d:I

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 18

    move-object v6, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "fragment"

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "class"

    invoke-interface {v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/support/v4/app/k$h;->a:[I

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v7, v2

    const/4 v2, 0x1

    const/4 v8, -0x1

    invoke-virtual {v4, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 1
    iget-object v4, v4, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 2
    sget-object v11, Landroid/support/v4/app/g;->T:Lc0/j;

    .line 3
    :try_start_0
    sget-object v11, Landroid/support/v4/app/g;->T:Lc0/j;

    invoke-virtual {v11, v7}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    if-nez v12, :cond_2

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-class v4, Landroid/support/v4/app/g;

    invoke-virtual {v4, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    return-object v3

    :cond_3
    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :cond_4
    if-ne v5, v8, :cond_6

    if-ne v9, v8, :cond_6

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    if-eq v9, v8, :cond_7

    invoke-virtual {p0, v9}, Landroid/support/v4/app/k;->Z(I)Landroid/support/v4/app/g;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_8

    if-eqz v10, :cond_8

    invoke-virtual {p0, v10}, Landroid/support/v4/app/k;->c(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_9

    if-eq v5, v8, :cond_9

    invoke-virtual {p0, v5}, Landroid/support/v4/app/k;->Z(I)Landroid/support/v4/app/g;

    move-result-object v4

    :cond_9
    if-nez v4, :cond_d

    iget-object v1, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/b0;

    invoke-virtual {v1, v0, v7, v3}, Landroid/support/v4/app/b0;->e(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;

    move-result-object v4

    iput-boolean v2, v4, Landroid/support/v4/app/g;->m:Z

    if-eqz v9, :cond_a

    move v0, v9

    goto :goto_3

    :cond_a
    move v0, v5

    :goto_3
    iput v0, v4, Landroid/support/v4/app/g;->x:I

    iput v5, v4, Landroid/support/v4/app/g;->y:I

    iput-object v10, v4, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    iput-boolean v2, v4, Landroid/support/v4/app/g;->n:Z

    iput-object v6, v4, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    iget-object v0, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    iput-object v0, v4, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    .line 5
    iget-object v1, v0, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 6
    iput-boolean v2, v4, Landroid/support/v4/app/g;->E:Z

    if-nez v0, :cond_b

    goto :goto_4

    .line 7
    :cond_b
    iget-object v3, v0, Landroid/support/v4/app/j;->a:Landroid/app/Activity;

    :goto_4
    if-eqz v3, :cond_c

    .line 8
    iput-boolean v2, v4, Landroid/support/v4/app/g;->E:Z

    .line 9
    :cond_c
    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/k;->k(Landroid/support/v4/app/g;Z)V

    goto :goto_6

    :cond_d
    iget-boolean v0, v4, Landroid/support/v4/app/g;->n:Z

    if-nez v0, :cond_14

    iput-boolean v2, v4, Landroid/support/v4/app/g;->n:Z

    iget-object v0, v6, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    iput-object v0, v4, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    iget-boolean v1, v4, Landroid/support/v4/app/g;->D:Z

    if-nez v1, :cond_f

    .line 10
    iget-object v1, v0, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    .line 11
    iput-boolean v2, v4, Landroid/support/v4/app/g;->E:Z

    if-nez v0, :cond_e

    goto :goto_5

    .line 12
    :cond_e
    iget-object v3, v0, Landroid/support/v4/app/j;->a:Landroid/app/Activity;

    :goto_5
    if-eqz v3, :cond_f

    .line 13
    iput-boolean v2, v4, Landroid/support/v4/app/g;->E:Z

    :cond_f
    :goto_6
    move-object v8, v4

    .line 14
    iget v3, v6, Landroid/support/v4/app/k;->l:I

    if-ge v3, v2, :cond_10

    iget-boolean v0, v8, Landroid/support/v4/app/g;->m:Z

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v11

    .line 15
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    .line 16
    :goto_7
    iget-object v0, v8, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_13

    if-eqz v9, :cond_11

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    :cond_11
    iget-object v0, v8, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, v8, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_12
    iget-object v0, v8, Landroid/support/v4/app/g;->G:Landroid/view/View;

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not create a view."

    .line 17
    invoke-static {v1, v7, v2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(Landroid/support/v4/app/d;ZZZ)V
    .registers 12

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Landroid/support/v4/app/d;->q(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/d;->p()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/v;->o(Landroid/support/v4/app/k;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    iget p2, p0, Landroid/support/v4/app/k;->l:I

    invoke-virtual {p0, p2, v6}, Landroid/support/v4/app/k;->i0(IZ)V

    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Landroid/support/v4/app/g;->L:Z

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v4/app/g;->y:I

    invoke-virtual {p1, v2}, Landroid/support/v4/app/d;->r(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v4/app/g;->N:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    iget-object v4, v1, Landroid/support/v4/app/g;->G:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p4, :cond_4

    iput v3, v1, Landroid/support/v4/app/g;->N:F

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/support/v4/app/g;->N:F

    iput-boolean p3, v1, Landroid/support/v4/app/g;->L:Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final p0()Landroid/os/Parcelable;
    .registers 12

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$k;

    invoke-virtual {v0}, Landroid/support/v4/app/k$k;->a()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x0

    if-ge v2, v0, :cond_5

    iget-object v4, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/support/v4/app/g;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v6}, Landroid/support/v4/app/g;->l()I

    move-result v7

    invoke-virtual {v6}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    :cond_2
    invoke-virtual {v6, v3}, Landroid/support/v4/app/g;->R(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/support/v4/app/g;->f()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v6}, Landroid/support/v4/app/g;->f()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/app/k;->W()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    iput-object v3, p0, Landroid/support/v4/app/k;->A:Landroid/support/v4/app/o;

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_6

    goto/16 :goto_a

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v2, v0, [Landroid/support/v4/app/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    const-string v6, " has cleared index: "

    const-string v7, "Failure saving state: active "

    if-ge v4, v0, :cond_15

    iget-object v8, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/g;

    if-eqz v8, :cond_14

    iget v5, v8, Landroid/support/v4/app/g;->e:I

    if-ltz v5, :cond_13

    new-instance v5, Landroid/support/v4/app/q;

    invoke-direct {v5, v8}, Landroid/support/v4/app/q;-><init>(Landroid/support/v4/app/g;)V

    aput-object v5, v2, v4

    iget v6, v8, Landroid/support/v4/app/g;->b:I

    if-lez v6, :cond_11

    iget-object v6, v5, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    if-nez v6, :cond_11

    .line 4
    iget-object v6, p0, Landroid/support/v4/app/k;->x:Landroid/os/Bundle;

    if-nez v6, :cond_7

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Landroid/support/v4/app/k;->x:Landroid/os/Bundle;

    :cond_7
    iget-object v6, p0, Landroid/support/v4/app/k;->x:Landroid/os/Bundle;

    invoke-virtual {v8, v6}, Landroid/support/v4/app/g;->P(Landroid/os/Bundle;)V

    iget-object v6, p0, Landroid/support/v4/app/k;->x:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6, v1}, Landroid/support/v4/app/k;->I(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    iget-object v6, p0, Landroid/support/v4/app/k;->x:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Landroid/support/v4/app/k;->x:Landroid/os/Bundle;

    iput-object v3, p0, Landroid/support/v4/app/k;->x:Landroid/os/Bundle;

    goto :goto_5

    :cond_8
    move-object v6, v3

    :goto_5
    iget-object v7, v8, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v7, :cond_9

    invoke-virtual {p0, v8}, Landroid/support/v4/app/k;->q0(Landroid/support/v4/app/g;)V

    :cond_9
    iget-object v7, v8, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    if-eqz v7, :cond_b

    if-nez v6, :cond_a

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_a
    iget-object v7, v8, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    const-string v9, "android:view_state"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_b
    iget-boolean v7, v8, Landroid/support/v4/app/g;->J:Z

    if-nez v7, :cond_d

    if-nez v6, :cond_c

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_c
    iget-boolean v7, v8, Landroid/support/v4/app/g;->J:Z

    const-string v9, "android:user_visible_hint"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    :cond_d
    iput-object v6, v5, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    iget-object v7, v8, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    if-eqz v7, :cond_12

    iget v7, v7, Landroid/support/v4/app/g;->e:I

    if-ltz v7, :cond_10

    if-nez v6, :cond_e

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    :cond_e
    iget-object v6, v5, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    iget-object v7, v8, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    .line 6
    iget v9, v7, Landroid/support/v4/app/g;->e:I

    if-ltz v9, :cond_f

    const-string v7, "android:target_state"

    invoke-virtual {v6, v7, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget v6, v8, Landroid/support/v4/app/g;->j:I

    if-eqz v6, :cond_12

    iget-object v5, v5, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    const-string v7, "android:target_req_state"

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 8
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    throw v3

    .line 9
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_11
    iget-object v6, v8, Landroid/support/v4/app/g;->c:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/support/v4/app/q;->l:Landroid/os/Bundle;

    :cond_12
    :goto_6
    const/4 v5, 0x1

    goto :goto_7

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/support/v4/app/g;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_14
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_15
    if-nez v5, :cond_16

    return-object v3

    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    new-array v4, v0, [I

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v0, :cond_19

    iget-object v8, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/g;

    iget v8, v8, Landroid/support/v4/app/g;->e:I

    aput v8, v4, v5

    aget v8, v4, v5

    if-ltz v8, :cond_17

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    invoke-static {v7}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v4, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->x0(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_18
    move-object v4, v3

    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    new-array v3, v0, [Landroid/support/v4/app/e;

    :goto_9
    if-ge v1, v0, :cond_1a

    new-instance v5, Landroid/support/v4/app/e;

    iget-object v6, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/d;

    invoke-direct {v5, v6}, Landroid/support/v4/app/e;-><init>(Landroid/support/v4/app/d;)V

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0}, Landroid/support/v4/app/p;-><init>()V

    iput-object v2, v0, Landroid/support/v4/app/p;->b:[Landroid/support/v4/app/q;

    iput-object v4, v0, Landroid/support/v4/app/p;->c:[I

    iput-object v3, v0, Landroid/support/v4/app/p;->d:[Landroid/support/v4/app/e;

    iget-object v1, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/g;

    if-eqz v1, :cond_1b

    iget v1, v1, Landroid/support/v4/app/g;->e:I

    iput v1, v0, Landroid/support/v4/app/p;->e:I

    :cond_1b
    iget v1, p0, Landroid/support/v4/app/k;->d:I

    iput v1, v0, Landroid/support/v4/app/p;->f:I

    invoke-virtual {p0}, Landroid/support/v4/app/k;->r0()V

    return-object v0

    :cond_1c
    :goto_a
    return-object v3
.end method

.method public final q(Landroid/support/v4/app/g;)V
    .registers 4

    iget-boolean v0, p1, Landroid/support/v4/app/g;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/g;->B:Z

    iget-boolean v0, p1, Landroid/support/v4/app/g;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/g;->k:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final q0(Landroid/support/v4/app/g;)V
    .registers 4

    iget-object v0, p1, Landroid/support/v4/app/g;->H:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->y:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->y:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/g;->H:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/k;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/k;->y:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/g;->d:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/k;->y:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public final r()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->T(I)V

    return-void
.end method

.method public final r0()V
    .registers 10

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    iget-object v6, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/g;

    if-eqz v6, :cond_7

    iget-boolean v7, v6, Landroid/support/v4/app/g;->C:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/g;

    if-eqz v7, :cond_1

    iget v7, v7, Landroid/support/v4/app/g;->e:I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Landroid/support/v4/app/g;->i:I

    :cond_2
    iget-object v7, v6, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/support/v4/app/k;->r0()V

    iget-object v7, v6, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    iget-object v7, v7, Landroid/support/v4/app/k;->A:Landroid/support/v4/app/o;

    goto :goto_2

    :cond_3
    iget-object v7, v6, Landroid/support/v4/app/g;->u:Landroid/support/v4/app/o;

    :goto_2
    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v2, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v5, :cond_6

    iget-object v7, v6, Landroid/support/v4/app/g;->v:Landroid/arch/lifecycle/m;

    if-eqz v7, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_6

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    iget-object v6, v6, Landroid/support/v4/app/g;->v:Landroid/arch/lifecycle/m;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    iput-object v1, p0, Landroid/support/v4/app/k;->A:Landroid/support/v4/app/o;

    goto :goto_5

    :cond_a
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0, v3, v4, v5}, Landroid/support/v4/app/o;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->A:Landroid/support/v4/app/o;

    :goto_5
    return-void
.end method

.method public final s(Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/g;->G(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s0()V
    .registers 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/k;->z:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Landroid/support/v4/app/k;->B:Landroid/support/v4/app/k$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    .line 3
    iget-object v0, v0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, Landroid/support/v4/app/k;->B:Landroid/support/v4/app/k$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final t(Landroid/view/MenuItem;)Z
    .registers 6

    iget v0, p0, Landroid/support/v4/app/k;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/g;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/support/v4/app/g;->H(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    :goto_0
    invoke-static {v1, v0}, La3/r0;->j(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->T(I)V

    return-void
.end method

.method public final u0(Landroid/support/v4/app/g;)V
    .registers 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/g;->e:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p1, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/g;

    return-void
.end method

.method public final v(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 10

    iget v0, p0, Landroid/support/v4/app/k;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/g;

    if-eqz v5, :cond_3

    .line 1
    iget-boolean v6, v5, Landroid/support/v4/app/g;->A:Z

    if-nez v6, :cond_1

    iget-object v6, v5, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v6, :cond_1

    invoke-virtual {v6, p1, p2}, Landroid/support/v4/app/k;->v(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    or-int/2addr v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    :goto_2
    iget-object p1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    iget-object p1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/g;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iput-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    return v4
.end method

.method public final w()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->W()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->T(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    iput-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/b0;

    iput-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    return-void
.end method

.method public final w0()V
    .registers 10

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/support/v4/app/g;

    if-eqz v4, :cond_2

    iget-boolean v2, v4, Landroid/support/v4/app/g;->I:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v4/app/k;->c:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/k;->t:Z

    goto :goto_1

    :cond_1
    iput-boolean v0, v4, Landroid/support/v4/app/g;->I:Z

    iget v5, p0, Landroid/support/v4/app/k;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final x()V
    .registers 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/g;->J()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x0(Ljava/lang/RuntimeException;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc0/d;

    invoke-direct {v0}, Lc0/d;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    check-cast v0, Landroid/support/v4/app/h$b;

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/support/v4/app/h;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v5, v4, v2, v0}, Landroid/support/v4/app/k;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method public final y(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/g;->K(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final z(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    .line 2
    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->z(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/k$g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method
