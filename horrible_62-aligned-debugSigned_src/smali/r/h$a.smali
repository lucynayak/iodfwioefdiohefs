.class public final Lr/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/support/design/widget/CoordinatorLayout;

.field public final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final synthetic d:Lr/h;


# direct methods
.method public constructor <init>(Lr/h;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lr/h$a;->d:Lr/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr/h$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Lr/h$a;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lr/h$a;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr/h$a;->d:Lr/h;

    iget-object v0, v0, Lr/h;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr/h$a;->d:Lr/h;

    iget-object v1, p0, Lr/h$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lr/h$a;->c:Landroid/view/View;

    iget-object v3, v0, Lr/h;->d:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lr/h;->B(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    iget-object v0, p0, Lr/h$a;->c:Landroid/view/View;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lr/h$a;->d:Lr/h;

    iget-object v1, p0, Lr/h$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lr/h$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lr/h;->z(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
