.class public Landroid/support/design/widget/BaseTransientBottomBar$Behavior;
.super Landroid/support/design/widget/SwipeDismissBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lr0/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    new-instance v0, Lr0/e;

    invoke-direct {v0, p0}, Lr0/e;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->h:Lr0/e;

    return-void
.end method


# virtual methods
.method public final e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->h:Lr0/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lr/k;->b:Lr/k;

    if-nez v0, :cond_1

    new-instance v0, Lr/k;

    invoke-direct {v0}, Lr/k;-><init>()V

    sput-object v0, Lr/k;->b:Lr/k;

    :cond_1
    sget-object v0, Lr/k;->b:Lr/k;

    .line 3
    iget-object v0, v0, Lr/k;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 4
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    sget-object v0, Lr/k;->b:Lr/k;

    if-nez v0, :cond_3

    new-instance v0, Lr/k;

    invoke-direct {v0}, Lr/k;-><init>()V

    sput-object v0, Lr/k;->b:Lr/k;

    :cond_3
    sget-object v0, Lr/k;->b:Lr/k;

    .line 6
    iget-object v0, v0, Lr/k;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 7
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/SwipeDismissBehavior;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final s(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->h:Lr0/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p1, Lr/c;

    return p1
.end method
