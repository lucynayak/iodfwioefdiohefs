.class public final Ld2/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Ld2/p;

.field public final b:I

.field public final c:I

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Ld2/p;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/p$a;->a:Ld2/p;

    iput p2, p0, Ld2/p$a;->b:I

    iput p3, p0, Ld2/p$a;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/p$a;->h:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Ld2/p$a;->a:Ld2/p;

    iget-object v2, v1, Ld2/p;->r:Li2/e;

    invoke-virtual {v2}, Li2/e;->isActive()Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Ld2/p$a;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Ld2/p$a;->e:F

    iget-object v3, v1, Ld2/p;->v:[[I

    iget v4, p0, Ld2/p$a;->b:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v5, v3, v4

    iput v5, p0, Ld2/p$a;->f:I

    const/4 v4, 0x1

    aget v5, v3, v4

    iput v5, p0, Ld2/p$a;->g:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Ld2/p$a;->d:F

    sub-float v3, v3, v4

    float-to-int v3, v3

    iget v4, p0, Ld2/p$a;->f:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Ld2/p$a;->e:F

    sub-float v4, v4, v5

    float-to-int v4, v4

    iget v5, p0, Ld2/p$a;->g:I

    add-int/2addr v4, v5

    iget-object v5, v1, Ld2/p;->s:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    if-gez v6, :cond_1

    const/4 v6, 0x0

    :cond_1
    if-gez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-le v3, v6, :cond_3

    move v3, v6

    :cond_3
    :goto_0
    iget v6, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    if-gez v6, :cond_4

    const/4 v6, 0x0

    :cond_4
    if-gez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    if-le v4, v6, :cond_6

    move v4, v6

    :cond_6
    :goto_1
    iget-object v5, v1, Ld2/p;->v:[[I

    iget v6, p0, Ld2/p$a;->b:I

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    iget-object v5, v1, Ld2/p;->u:[Landroid/widget/PopupWindow;

    iget v6, p0, Ld2/p$a;->b:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_7

    :try_start_0
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x6

    if-ne v0, v3, :cond_a

    :cond_9
    invoke-virtual {v1}, Ld2/p;->savePositions()V

    :cond_a
    const/4 v0, 0x1

    return v0

    :cond_b
    if-nez v0, :cond_c

    iget v3, p0, Ld2/p$a;->c:I

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-boolean v4, p0, Ld2/p$a;->h:Z

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v4, 0x44ffffff    # 2047.9999f

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object v4, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    :try_start_2
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const v4, -0xff0100

    :goto_2
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v3, 0x1

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x6

    if-ne v0, v3, :cond_e

    :cond_d
    iget v3, p0, Ld2/p$a;->c:I

    const/4 v4, 0x0

    :try_start_3
    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    iput-boolean v4, p0, Ld2/p$a;->h:Z

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v4, 0x66000000

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object v4, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    :try_start_4
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    const v4, -0xff0100

    :goto_3
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method
