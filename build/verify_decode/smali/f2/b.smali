.class public final synthetic Lf2/b;
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
    .locals 0

    iput p3, p0, Lf2/b;->b:I

    iput-object p1, p0, Lf2/b;->d:Lc2/b;

    iput p2, p0, Lf2/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    iget p1, p0, Lf2/b;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "current"

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lf2/b;->d:Lc2/b;

    check-cast p1, Lf2/i;

    iget v7, p0, Lf2/b;->c:I

    sget v8, Lf2/i;->w:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v0, :cond_3

    if-eq v8, v6, :cond_0

    if-eq v8, v5, :cond_3

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p1, Lf2/i;->s:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p1, Lf2/i;->u:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v7

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Lf2/i;->s:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Lf2/i;->u:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    neg-int v3, v7

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v5, p1, Lf2/i;->t:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget v5, p1, Lf2/i;->v:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p1, Lf2/i;->t:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p1, Lf2/i;->v:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    :cond_1
    iput-boolean v0, p1, Lf2/i;->r:Z

    :cond_2
    iget-boolean v1, p1, Lf2/i;->r:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p1, Lf2/i;->s:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lf2/i;->u:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lf2/i;->t:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Lf2/i;->v:I

    iget-object v1, p1, Lf2/i;->q:Landroid/widget/PopupWindow;

    iget p1, p1, Lf2/i;->u:I

    invoke-virtual {v1, p1, p2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p1, Lf2/i;->r:Z

    if-nez p2, :cond_4

    iget-object p2, p1, Lf2/i;->o:Li2/d;

    invoke-virtual {p2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float p2, v3

    invoke-static {}, La3/r0;->y()F

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float v3, v3, p2

    invoke-static {}, La3/r0;->t()F

    move-result v7

    sub-float/2addr v7, v4

    float-to-double v7, v7

    const-wide v9, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float v4, v4, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, p2

    .line 2
    invoke-static {v3, v4, v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelative(FFF)V

    .line 3
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    .line 4
    :cond_4
    iput-boolean v1, p1, Lf2/i;->r:Z

    goto :goto_0

    :cond_5
    iget v1, p1, Lf2/i;->u:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lf2/i;->s:I

    iget v1, p1, Lf2/i;->v:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Lf2/i;->t:I

    :cond_6
    :goto_0
    return v0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lf2/b;->d:Lc2/b;

    check-cast p1, Lf2/c;

    iget v7, p0, Lf2/b;->c:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_c

    if-eq v8, v0, :cond_a

    if-eq v8, v6, :cond_7

    if-eq v8, v5, :cond_a

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p1, Lf2/c;->s:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p1, Lf2/c;->u:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v7

    cmpl-float v1, v1, v2

    if-gez v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Lf2/c;->s:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Lf2/c;->u:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    neg-int v3, v7

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-lez v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v5, p1, Lf2/c;->t:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget v5, p1, Lf2/c;->v:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    cmpl-float v1, v1, v2

    if-gez v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p1, Lf2/c;->t:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p1, Lf2/c;->v:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_9

    :cond_8
    iput-boolean v0, p1, Lf2/c;->r:Z

    :cond_9
    iget-boolean v1, p1, Lf2/c;->r:Z

    if-eqz v1, :cond_d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p1, Lf2/c;->s:I

    int-to-float v2, v2

    add-float/2addr v1, v2

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

    invoke-virtual {v1, p1, p2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    :cond_a
    iget-boolean p2, p1, Lf2/c;->r:Z

    if-nez p2, :cond_b

    iget-object p2, p1, Lf2/c;->o:Li2/d;

    invoke-virtual {p2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float p2, v3

    .line 7
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelativeY(F)V

    .line 8
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    .line 9
    :cond_b
    iput-boolean v1, p1, Lf2/c;->r:Z

    goto :goto_1

    :cond_c
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

    :cond_d
    :goto_1
    return v0

    .line 10
    :goto_2
    iget-object p1, p0, Lf2/b;->d:Lc2/b;

    check-cast p1, Lh2/k;

    iget v2, p0, Lf2/b;->c:I

    sget v3, Lh2/k;->x:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_14

    if-eq v3, v0, :cond_11

    if-eq v3, v6, :cond_e

    if-eq v3, v5, :cond_11

    goto/16 :goto_5

    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Lh2/k;->r:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Lh2/k;->t:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, v2

    cmpl-float v1, v1, v3

    if-gez v1, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v5, p1, Lh2/k;->r:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget v5, p1, Lh2/k;->t:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v5, p1, Lh2/k;->s:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget v5, p1, Lh2/k;->u:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    cmpl-float v1, v1, v3

    if-gez v1, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p1, Lh2/k;->s:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Lh2/k;->u:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    :cond_f
    iput-boolean v0, p1, Lh2/k;->q:Z

    :cond_10
    iget-boolean v1, p1, Lh2/k;->q:Z

    if-eqz v1, :cond_15

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p1, Lh2/k;->r:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lh2/k;->t:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p1, Lh2/k;->s:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Lh2/k;->u:I

    iget-object v1, p1, Lh2/k;->p:Landroid/widget/PopupWindow;

    iget p1, p1, Lh2/k;->t:I

    invoke-virtual {v1, p1, p2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    :cond_11
    iget-boolean p2, p1, Lh2/k;->q:Z

    if-nez p2, :cond_13

    const/4 p2, 0x0

    :goto_3
    const/16 v2, 0x9

    if-ge p2, v2, :cond_13

    .line 12
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v2

    const/16 v3, 0x170

    if-ne v2, v3, :cond_12

    .line 13
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v2

    .line 14
    iput v2, p1, Lh2/k;->v:I

    iput v6, p1, Lh2/k;->w:I

    .line 15
    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    goto :goto_4

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 16
    :cond_13
    :goto_4
    iput-boolean v1, p1, Lh2/k;->q:Z

    goto :goto_5

    :cond_14
    iget v1, p1, Lh2/k;->t:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lh2/k;->r:I

    iget v1, p1, Lh2/k;->u:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Lh2/k;->s:I

    :cond_15
    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
