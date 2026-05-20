.class public final synthetic Le2/j0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Le2/j0;


# direct methods
.method public synthetic constructor <init>(Le2/j0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/j0$b;->b:Le2/j0;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object p1, p0, Le2/j0$b;->b:Le2/j0;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Le2/j0;->w:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Le2/j0;->r:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p1, Le2/j0;->x:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Le2/j0;->s:I

    iget-object v0, p1, Le2/j0;->p:Landroid/widget/PopupWindow;

    iget p1, p1, Le2/j0;->r:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p1, Le2/j0;->r:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Le2/j0;->w:I

    iget v0, p1, Le2/j0;->s:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Le2/j0;->x:I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
