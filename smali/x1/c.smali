.class public final synthetic Lx1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Ldev/virus/variable/app/InterfaceActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ldev/virus/variable/app/InterfaceActivity;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/c;->b:Ldev/virus/variable/app/InterfaceActivity;

    iput p2, p0, Lx1/c;->c:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object p1, p0, Lx1/c;->b:Ldev/virus/variable/app/InterfaceActivity;

    iget v0, p0, Lx1/c;->c:I

    sget v1, Ldev/virus/variable/app/InterfaceActivity;->S:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_3

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Ldev/virus/variable/app/InterfaceActivity;->H:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Ldev/virus/variable/app/InterfaceActivity;->J:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, v0

    cmpl-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v4, p1, Ldev/virus/variable/app/InterfaceActivity;->H:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, p1, Ldev/virus/variable/app/InterfaceActivity;->J:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v4, p1, Ldev/virus/variable/app/InterfaceActivity;->I:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, p1, Ldev/virus/variable/app/InterfaceActivity;->K:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpl-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p1, Ldev/virus/variable/app/InterfaceActivity;->I:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p1, Ldev/virus/variable/app/InterfaceActivity;->K:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_2

    :cond_1
    iput-boolean v2, p1, Ldev/virus/variable/app/InterfaceActivity;->G:Z

    :cond_2
    iget-boolean v0, p1, Ldev/virus/variable/app/InterfaceActivity;->G:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Ldev/virus/variable/app/InterfaceActivity;->H:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Ldev/virus/variable/app/InterfaceActivity;->J:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p1, Ldev/virus/variable/app/InterfaceActivity;->I:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Ldev/virus/variable/app/InterfaceActivity;->K:I

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->F:Landroid/widget/PopupWindow;

    iget v1, p1, Ldev/virus/variable/app/InterfaceActivity;->J:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, p2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    iput-boolean p2, p1, Ldev/virus/variable/app/InterfaceActivity;->G:Z

    goto :goto_0

    :cond_4
    iget v0, p1, Ldev/virus/variable/app/InterfaceActivity;->J:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Ldev/virus/variable/app/InterfaceActivity;->H:I

    iget v0, p1, Ldev/virus/variable/app/InterfaceActivity;->K:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Ldev/virus/variable/app/InterfaceActivity;->I:I

    :cond_5
    :goto_0
    return v2
.end method
