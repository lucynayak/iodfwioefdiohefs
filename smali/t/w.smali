.class public abstract Lt/w;
.super Lt/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/w$a;,
        Lt/w$b;
    }
.end annotation


# static fields
.field public static final z:[Ljava/lang/String;


# instance fields
.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lt/w;->z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lt/f;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lt/w;->y:I

    return-void
.end method


# virtual methods
.method public final H(Lt/m;)V
    .registers 5

    iget-object v0, p1, Lt/m;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p1, Lt/m;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lt/m;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lt/m;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p1, Lt/m;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p1, Lt/m;->a:Ljava/util/HashMap;

    const-string v1, "android:visibility:screenLocation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final I(Lt/m;Lt/m;)Lt/w$b;
    .registers 10

    new-instance v0, Lt/w$b;

    invoke-direct {v0}, Lt/w$b;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lt/w$b;->a:Z

    iput-boolean v1, v0, Lt/w$b;->b:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_0

    iget-object v6, p1, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lt/w$b;->c:I

    iget-object v6, p1, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Lt/w$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iput v4, v0, Lt/w$b;->c:I

    iput-object v3, v0, Lt/w$b;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_1

    iget-object v6, p2, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v3, p2, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lt/w$b;->d:I

    iget-object v3, p2, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lt/w$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iput v4, v0, Lt/w$b;->d:I

    iput-object v3, v0, Lt/w$b;->f:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget p1, v0, Lt/w$b;->c:I

    iget p2, v0, Lt/w$b;->d:I

    if-ne p1, p2, :cond_2

    iget-object v3, v0, Lt/w$b;->e:Landroid/view/ViewGroup;

    iget-object v4, v0, Lt/w$b;->f:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    return-object v0

    :cond_2
    if-eq p1, p2, :cond_4

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    if-nez p2, :cond_8

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lt/w$b;->f:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, v0, Lt/w$b;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_8

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    iget p1, v0, Lt/w$b;->d:I

    if-nez p1, :cond_7

    :goto_2
    iput-boolean v2, v0, Lt/w$b;->b:Z

    goto :goto_4

    :cond_7
    if-nez p2, :cond_8

    iget p1, v0, Lt/w$b;->c:I

    if-nez p1, :cond_8

    :goto_3
    iput-boolean v1, v0, Lt/w$b;->b:Z

    :goto_4
    iput-boolean v2, v0, Lt/w$b;->a:Z

    :cond_8
    return-object v0
.end method

.method public final d(Lt/m;)V
    .registers 2

    invoke-virtual {p0, p1}, Lt/w;->H(Lt/m;)V

    return-void
.end method

.method public final k(Landroid/view/ViewGroup;Lt/m;Lt/m;)Landroid/animation/Animator;
    .registers 14

    invoke-virtual {p0, p2, p3}, Lt/w;->I(Lt/m;Lt/m;)Lt/w$b;

    move-result-object v0

    iget-boolean v1, v0, Lt/w$b;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    iget-object v1, v0, Lt/w$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Lt/w$b;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    :cond_0
    iget-boolean v1, v0, Lt/w$b;->b:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    .line 1
    iget p1, p0, Lt/w;->y:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_4

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p3, Lt/m;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lt/f;->n(Landroid/view/View;Z)Lt/m;

    move-result-object v0

    invoke-virtual {p0, p1, v3}, Lt/f;->q(Landroid/view/View;Z)Lt/m;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lt/w;->I(Lt/m;Lt/m;)Lt/w$b;

    move-result-object p1

    iget-boolean p1, p1, Lt/w$b;->a:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p3, Lt/m;->b:Landroid/view/View;

    move-object p3, p0

    check-cast p3, Lt/c;

    .line 2
    invoke-static {p2, v5}, Lt/c;->K(Lt/m;F)F

    move-result p2

    cmpl-float v0, p2, v4

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, p2

    :goto_0
    invoke-virtual {p3, p1, v5, v4}, Lt/c;->J(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v2

    :cond_4
    :goto_1
    return-object v2

    .line 3
    :cond_5
    iget v0, v0, Lt/w$b;->d:I

    .line 4
    iget v1, p0, Lt/w;->y:I

    const/4 v7, 0x2

    and-int/2addr v1, v7

    if-eq v1, v7, :cond_6

    goto/16 :goto_9

    :cond_6
    if-eqz p2, :cond_7

    iget-object v1, p2, Lt/m;->b:Landroid/view/View;

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    if-eqz p3, :cond_8

    iget-object p3, p3, Lt/m;->b:Landroid/view/View;

    goto :goto_3

    :cond_8
    move-object p3, v2

    :goto_3
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    const/4 v8, 0x4

    if-ne v0, v8, :cond_a

    goto :goto_4

    :cond_a
    if-ne v1, p3, :cond_b

    :goto_4
    move-object v1, v2

    goto :goto_8

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    goto :goto_6

    :cond_c
    :goto_5
    if-eqz p3, :cond_d

    move-object v1, p3

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Landroid/view/View;

    if-eqz p3, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3, v6}, Lt/f;->q(Landroid/view/View;Z)Lt/m;

    move-result-object v8

    invoke-virtual {p0, p3, v6}, Lt/f;->n(Landroid/view/View;Z)Lt/m;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lt/w;->I(Lt/m;Lt/m;)Lt/w$b;

    move-result-object v8

    iget-boolean v8, v8, Lt/w$b;->a:Z

    if-nez v8, :cond_f

    :goto_6
    invoke-static {p1, v1, p3}, Lt/l;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_7

    :cond_f
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_10

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_10

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    :cond_10
    move-object v1, v2

    :goto_7
    move-object p3, v2

    goto :goto_8

    :cond_11
    move-object p3, v2

    move-object v1, p3

    :goto_8
    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    iget-object p3, p2, Lt/m;->a:Ljava/util/HashMap;

    const-string v0, "android:visibility:screenLocation"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    aget v0, p3, v3

    aget p3, p3, v6

    new-array v2, v7, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v3

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v0, v2, v6

    sub-int/2addr p3, v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {v1, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 5
    new-instance p3, Lt/o;

    invoke-direct {p3, p1}, Lt/o;-><init>(Landroid/view/ViewGroup;)V

    .line 6
    iget-object p1, p3, Lt/o;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroupOverlay;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 7
    move-object p1, p0

    check-cast p1, Lt/c;

    .line 8
    sget-object v0, Lt/r;->a:Lt/t;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p2, v4}, Lt/c;->K(Lt/m;F)F

    move-result p2

    invoke-virtual {p1, v1, p2, v5}, Lt/c;->J(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_12

    .line 10
    iget-object p1, p3, Lt/o;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroupOverlay;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_9

    .line 11
    :cond_12
    new-instance p1, Lt/v;

    invoke-direct {p1, p3, v1}, Lt/v;-><init>(Lt/p;Landroid/view/View;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_9

    :cond_13
    if-eqz p3, :cond_15

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-static {p3, v3}, Lt/r;->d(Landroid/view/View;I)V

    move-object v1, p0

    check-cast v1, Lt/c;

    .line 12
    sget-object v2, Lt/r;->a:Lt/t;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p2, v4}, Lt/c;->K(Lt/m;F)F

    move-result p2

    invoke-virtual {v1, p3, p2, v5}, Lt/c;->J(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 14
    new-instance p1, Lt/w$a;

    invoke-direct {p1, p3, v0}, Lt/w$a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 16
    invoke-virtual {p0, p1}, Lt/f;->a(Lt/f$d;)Lt/f;

    goto :goto_9

    :cond_14
    invoke-static {p3, p1}, Lt/r;->d(Landroid/view/View;I)V

    :cond_15
    :goto_9
    return-object v2
.end method

.method public final p()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lt/w;->z:[Ljava/lang/String;

    return-object v0
.end method

.method public final r(Lt/m;Lt/m;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Lt/m;->a:Ljava/util/HashMap;

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Lt/m;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lt/w;->I(Lt/m;Lt/m;)Lt/w$b;

    move-result-object p1

    iget-boolean p2, p1, Lt/w$b;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Lt/w$b;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Lt/w$b;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method
