.class public final synthetic Lf2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lc2/b;


# direct methods
.method public synthetic constructor <init>(Lc2/b;II)V
    .registers 4

    iput p3, p0, Lf2/a;->b:I

    iput-object p1, p0, Lf2/a;->d:Lc2/b;

    iput p2, p0, Lf2/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    iget p1, p0, Lf2/a;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lf2/a;->d:Lc2/b;

    check-cast p1, Lf2/c;

    iget v5, p0, Lf2/a;->c:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_5

    if-eq v6, v0, :cond_3

    if-eq v6, v4, :cond_0

    if-eq v6, v3, :cond_3

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Lf2/c;->s:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Lf2/c;->u:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, v5

    cmpl-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v4, p1, Lf2/c;->s:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, p1, Lf2/c;->u:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    neg-int v4, v5

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v5, p1, Lf2/c;->t:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget v5, p1, Lf2/c;->v:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    cmpl-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p1, Lf2/c;->t:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Lf2/c;->v:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2

    :cond_1
    iput-boolean v0, p1, Lf2/c;->r:Z

    :cond_2
    iget-boolean v1, p1, Lf2/c;->r:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Lf2/c;->s:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Lf2/c;->u:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lf2/c;->t:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Lf2/c;->v:I

    iget-object v1, p1, Lf2/c;->q:Landroid/widget/PopupWindow;

    iget p1, p1, Lf2/c;->u:I

    invoke-virtual {v1, p1, p2, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p1, Lf2/c;->r:Z

    if-nez p2, :cond_4

    iget-object p2, p1, Lf2/c;->o:Li2/d;

    const-string v2, "current"

    invoke-virtual {p2, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float p2, v2

    .line 2
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelativeY(F)V

    const/4 p2, 0x0

    .line 3
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    .line 4
    :cond_4
    iput-boolean v1, p1, Lf2/c;->r:Z

    goto :goto_0

    :cond_5
    iget v1, p1, Lf2/c;->u:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lf2/c;->s:I

    iget v1, p1, Lf2/c;->v:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Lf2/c;->t:I

    :cond_6
    :goto_0
    return v0

    .line 5
    :goto_1
    iget-object p1, p0, Lf2/a;->d:Lc2/b;

    check-cast p1, Lh2/l;

    iget v5, p0, Lf2/a;->c:I

    sget v6, Lh2/l;->x:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_d

    if-eq v6, v0, :cond_a

    if-eq v6, v4, :cond_7

    if-eq v6, v3, :cond_a

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Lh2/l;->r:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Lh2/l;->t:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, v5

    cmpl-float v1, v1, v3

    if-gez v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v4, p1, Lh2/l;->r:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, p1, Lh2/l;->t:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    neg-int v4, v5

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-lez v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v5, p1, Lh2/l;->s:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget v5, p1, Lh2/l;->u:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    cmpl-float v1, v1, v3

    if-gez v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p1, Lh2/l;->s:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Lh2/l;->u:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_9

    :cond_8
    iput-boolean v0, p1, Lh2/l;->q:Z

    :cond_9
    iget-boolean v1, p1, Lh2/l;->q:Z

    if-eqz v1, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Lh2/l;->r:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Lh2/l;->t:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lh2/l;->s:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Lh2/l;->u:I

    iget-object v1, p1, Lh2/l;->p:Landroid/widget/PopupWindow;

    iget p1, p1, Lh2/l;->t:I

    invoke-virtual {v1, p1, p2, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_4

    :cond_a
    iget-boolean p2, p1, Lh2/l;->q:Z

    if-nez p2, :cond_c

    const/4 p2, 0x0

    :goto_2
    const/16 v2, 0x9

    if-ge p2, v2, :cond_c

    .line 7
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v2

    const/16 v3, 0x1b6

    if-ne v2, v3, :cond_b

    .line 8
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v2

    .line 9
    iput v2, p1, Lh2/l;->v:I

    iput v4, p1, Lh2/l;->w:I

    .line 10
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    goto :goto_3

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 11
    :cond_c
    :goto_3
    iput-boolean v1, p1, Lh2/l;->q:Z

    goto :goto_4

    :cond_d
    iget v1, p1, Lh2/l;->t:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lh2/l;->r:I

    iget v1, p1, Lh2/l;->u:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Lh2/l;->s:I

    :cond_e
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
