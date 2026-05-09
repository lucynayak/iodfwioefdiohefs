.class public final Landroid/support/v4/widget/SwipeRefreshLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lg0/f;->setAlpha(I)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Lg0/f;

    invoke-virtual {p1}, Lg0/f;->start()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Landroid/support/v4/widget/SwipeRefreshLayout$h;

    if-eqz p1, :cond_1

    check-cast p1, Lx1/i;

    iget-object p1, p1, Lx1/i;->b:Ljava/lang/Object;

    check-cast p1, Ldev/virus/variable/app/ScriptManagerActivity;

    .line 1
    iget-object v0, p1, Ldev/virus/variable/app/ScriptManagerActivity;->n:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p1, Ldev/virus/variable/app/ScriptManagerActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {}, Lk2/c;->d()V

    .line 2
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    .line 4
    iget-object v2, v1, Lk2/d;->c:Ljava/lang/String;

    const-string v3, "script"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lk2/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lk2/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v2, p1, Ldev/virus/variable/app/ScriptManagerActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2}, Ldev/virus/variable/app/ScriptManagerActivity;->p(Lk2/d;Landroid/widget/LinearLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Lg0/c;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->h()V

    :goto_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
