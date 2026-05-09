.class public final synthetic Le2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Le2/m;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le2/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/k;->b:Le2/m;

    iput-object p2, p0, Le2/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p1, p0, Le2/k;->b:Le2/m;

    iget-object v0, p0, Le2/k;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_3

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Le2/m;->s:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Le2/m;->u:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p1, Le2/m;->w:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Le2/m;->s:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Le2/m;->u:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p1, Le2/m;->w:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p1, Le2/m;->t:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Le2/m;->v:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p1, Le2/m;->w:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p1, Le2/m;->t:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Le2/m;->v:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p1, Le2/m;->w:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_1
    iput-boolean v2, p1, Le2/m;->r:Z

    :cond_2
    iget-boolean v0, p1, Le2/m;->r:Z

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Le2/m;->s:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Le2/m;->u:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p1, Le2/m;->t:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Le2/m;->v:I

    iget-object v0, p1, Le2/m;->q:Landroid/widget/PopupWindow;

    iget p1, p1, Le2/m;->u:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p1, Le2/m;->r:Z

    if-nez p2, :cond_4

    .line 2
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result p2

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->sendChatMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p1, Le2/m;->r:Z

    goto :goto_0

    :cond_5
    iget v0, p1, Le2/m;->u:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Le2/m;->s:I

    iget v0, p1, Le2/m;->v:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Le2/m;->t:I

    :cond_6
    :goto_0
    return v2
.end method
