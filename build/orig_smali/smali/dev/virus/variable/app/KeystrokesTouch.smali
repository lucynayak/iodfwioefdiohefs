.class public final synthetic Ldev/virus/variable/app/KeystrokesTouch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Ldev/virus/variable/app/Keystrokes;


# direct methods
.method public synthetic constructor <init>(Ldev/virus/variable/app/Keystrokes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/virus/variable/app/KeystrokesTouch;->b:Ldev/virus/variable/app/Keystrokes;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Ldev/virus/variable/app/KeystrokesTouch;->b:Ldev/virus/variable/app/Keystrokes;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Ldev/virus/variable/app/Keystrokes;->r:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Ldev/virus/variable/app/Keystrokes;->t:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p1, Ldev/virus/variable/app/Keystrokes;->s:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Ldev/virus/variable/app/Keystrokes;->u:I

    iget-object v0, p1, Ldev/virus/variable/app/Keystrokes;->q:Landroid/widget/PopupWindow;

    iget p1, p1, Ldev/virus/variable/app/Keystrokes;->t:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p1, Ldev/virus/variable/app/Keystrokes;->t:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Ldev/virus/variable/app/Keystrokes;->r:I

    iget v0, p1, Ldev/virus/variable/app/Keystrokes;->u:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Ldev/virus/variable/app/Keystrokes;->s:I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
