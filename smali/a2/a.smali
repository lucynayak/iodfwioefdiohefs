.class public final synthetic La2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:La2/b;

.field public final synthetic c:I

.field public final synthetic d:Lc2/b;


# direct methods
.method public synthetic constructor <init>(La2/b;ILc2/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/a;->b:La2/b;

    iput p2, p0, La2/a;->c:I

    iput-object p3, p0, La2/a;->d:Lc2/b;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, La2/a;->b:La2/b;

    iget v1, p0, La2/a;->c:I

    iget-object v2, p0, La2/a;->d:Lc2/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_f

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 p2, 0x3

    if-eq v3, p2, :cond_4

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, v0, La2/b;->f:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget v2, v0, La2/b;->h:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-gez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v3, v0, La2/b;->f:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    iget v3, v0, La2/b;->h:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-lez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, v0, La2/b;->g:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    iget v3, v0, La2/b;->i:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    cmpl-float p1, p1, v2

    if-gez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, v0, La2/b;->g:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget v2, v0, La2/b;->i:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    :cond_1
    iput-boolean v4, v0, La2/b;->e:Z

    :cond_2
    iget-boolean p1, v0, La2/b;->e:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, La2/a;->d:Lc2/b;

    invoke-virtual {p1}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz1/p;->isBindPinned(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, v0, La2/b;->f:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, La2/b;->h:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, v0, La2/b;->g:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, La2/b;->i:I

    iget p2, v0, La2/b;->h:I

    const/4 v1, -0x1

    invoke-virtual {v0, p2, p1, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_6

    :cond_4
    iget-boolean p2, v0, La2/b;->e:Z

    if-nez p2, :cond_d

    invoke-virtual {v2}, Lc2/b;->isToggleable()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v2}, Lc2/b;->R()V

    invoke-virtual {v0}, La2/b;->a()V

    iget-object p2, v2, Lc2/b;->j:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    invoke-virtual {v2}, Lc2/b;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_5
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const-string p2, "Notifications"

    invoke-static {p2}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p2

    invoke-virtual {p2}, Lc2/b;->isActive()Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FastShift"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    const-string v3, "FastInventory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": <font color=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "#00FF00\'>"

    goto :goto_1

    :cond_9
    const-string v1, "#FF0000\'>"

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "enabled"

    goto :goto_2

    :cond_a
    const-string v1, "disabled"

    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lj2/b;->a(Ljava/lang/String;)V

    .line 2
    :cond_b
    :goto_3
    iget-object p2, v2, Lc2/b;->n:Lc2/b$b;

    if-eqz p2, :cond_c

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lc2/b;->isActive()Z

    invoke-interface {p2}, Lc2/b$b;->a()V
    :try_end_0
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p2}, Lk2/c;->f(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    invoke-virtual {v2}, Lc2/b;->D()V

    .line 4
    iget-object p2, v2, Lc2/b;->m:Lc2/b$a;

    if-eqz p2, :cond_d

    .line 5
    :try_start_1
    invoke-interface {p2, p1}, Lc2/b$a;->onClick(Landroid/view/View;)V
    :try_end_1
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lk2/c;->f(Ljava/lang/Throwable;)V

    :cond_d
    iget-boolean v3, v0, La2/b;->e:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, La2/a;->d:Lc2/b;

    invoke-virtual {v3}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, La2/b;->h:I

    iget v5, v0, La2/b;->i:I

    invoke-static {v3, v4, v5}, Lz1/p;->saveBindPos(Ljava/lang/String;II)V

    :cond_e
    :goto_5
    const/4 p1, 0x0

    iput-boolean p1, v0, La2/b;->e:Z

    const/4 v4, 0x1

    goto :goto_6

    :cond_f
    iget p1, v0, La2/b;->h:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, La2/b;->f:I

    iget p1, v0, La2/b;->i:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, La2/b;->g:I

    :cond_10
    :goto_6
    return v4
.end method
