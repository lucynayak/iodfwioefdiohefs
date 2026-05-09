.class public final Landroid/support/design/widget/SwipeDismissBehavior$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Z

.field public final synthetic d:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .registers 4

    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->d:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->d:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lg0/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg0/p;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->b:Landroid/view/View;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->d:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
