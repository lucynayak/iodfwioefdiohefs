.class public final synthetic Lx1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    iput p4, p0, Lx1/k;->b:I

    iput-object p1, p0, Lx1/k;->c:Ljava/lang/Object;

    iput-object p2, p0, Lx1/k;->d:Ljava/lang/Object;

    iput-object p3, p0, Lx1/k;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget v0, p0, Lx1/k;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, p0, Lx1/k;->c:Ljava/lang/Object;

    check-cast v0, Lc2/b;

    iget-object v1, p0, Lx1/k;->d:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lx1/k;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Lc2/b;->isToggleable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lc2/b;->R()V

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f08017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lx1/k;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lx1/k;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lc2/b;->isBindable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, v0, Lc2/b;->k:La2/b;

    .line 3
    invoke-virtual {v1}, La2/b;->a()V

    :cond_3
    const-string v1, "Notifications"

    invoke-static {v1}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v1

    invoke-virtual {v1}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <font color=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "#00FF00\'>"

    goto :goto_2

    :cond_4
    const-string v2, "#FF0000\'>"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "enabled"

    goto :goto_3

    :cond_5
    const-string v2, "disabled"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj2/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_6
    iget-object v1, v0, Lc2/b;->n:Lc2/b$b;

    if-eqz v1, :cond_7

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    invoke-interface {v1}, Lc2/b$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v1}, Lk2/c;->f(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lc2/b;->isToggleable()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lc2/b;->isBindable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lc2/b;->k:La2/b;

    invoke-virtual {v1}, La2/b;->a()V

    :cond_8
    invoke-virtual {v0}, Lc2/b;->D()V

    .line 6
    iget-object v0, v0, Lc2/b;->m:Lc2/b$a;

    if-eqz v0, :cond_9

    .line 7
    :try_start_1
    invoke-interface {v0, p1}, Lc2/b$a;->onClick(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lk2/c;->f(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return-void

    .line 8
    :pswitch_1
    iget-object p1, p0, Lx1/k;->c:Ljava/lang/Object;

    check-cast p1, Ldev/virus/variable/app/ScriptManagerActivity;

    iget-object v0, p0, Lx1/k;->d:Ljava/lang/Object;

    check-cast v0, Lk2/d;

    iget-object v2, p0, Lx1/k;->e:Ljava/lang/Object;

    check-cast v2, Landroid/widget/RelativeLayout;

    sget v3, Ldev/virus/variable/app/ScriptManagerActivity;->p:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/b;

    iget-boolean p1, v4, Lc2/b;->e:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    iput-boolean p1, v4, Lc2/b;->e:Z

    :cond_b
    iget-boolean p1, v4, Lc2/b;->d:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    iput-boolean p1, v4, Lc2/b;->d:Z

    iget-object p1, v4, Lc2/b;->k:La2/b;

    if-eqz p1, :cond_a

    :try_start_2
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    goto :goto_6

    :cond_c
    iget-object p1, p0, Lx1/k;->c:Ljava/lang/Object;

    check-cast p1, Ldev/virus/variable/app/ScriptManagerActivity;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "onScriptDisabled"

    .line 9
    invoke-static {v0, v3, v1}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lk2/c;->c:Ljava/util/HashSet;

    .line 10
    iget-object v3, v0, Lk2/d;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lk2/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v0, v0, Lk2/d;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 14
    iget-object p1, p1, Ldev/virus/variable/app/ScriptManagerActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 15
    :goto_7
    iget-object p1, p0, Lx1/k;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lx1/k;->d:Ljava/lang/Object;

    check-cast v0, Lc2/b;

    iget-object v2, p0, Lx1/k;->e:Ljava/lang/Object;

    check-cast v2, Landroid/widget/LinearLayout;

    iget-boolean v3, v0, Lc2/b;->e:Z

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, -0x3e600000    # -20.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, p0}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lx1/k$1;

    invoke-direct {v4, p1}, Lx1/k$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_8

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const/high16 v3, -0x3e600000    # -20.0f

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, p0}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_8
    iget-boolean p1, v0, Lc2/b;->e:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lc2/b;->e:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
