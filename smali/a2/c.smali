.class public final synthetic La2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:La2/d;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(La2/d;Landroid/widget/TextView;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/c;->b:La2/d;

    iput-object p2, p0, La2/c;->c:Landroid/widget/TextView;

    iput p3, p0, La2/c;->d:I

    iput p4, p0, La2/c;->e:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16

    iget-object p1, p0, La2/c;->b:La2/d;

    iget-object v0, p0, La2/c;->c:Landroid/widget/TextView;

    iget v1, p0, La2/c;->d:I

    iget v2, p0, La2/c;->e:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v3, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v5, 0x1

    if-eqz p2, :cond_13

    const/4 v6, 0x0

    if-eq p2, v5, :cond_9

    const/4 v7, 0x2

    if-eq p2, v7, :cond_1

    const/4 v7, 0x3

    if-eq p2, v7, :cond_9

    goto/16 :goto_7

    :cond_1
    iget p2, p1, La2/d;->c:I

    int-to-float p2, p2

    add-float/2addr p2, v3

    iget v0, p1, La2/d;->d:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    const/high16 v7, 0x41c80000    # 25.0f

    cmpl-float v7, v0, v7

    if-gez v7, :cond_2

    const/high16 v7, -0x3e380000    # -25.0f

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_14

    :cond_2
    iput-boolean v5, p1, La2/d;->b:Z

    float-to-int p2, p2

    iput p2, p1, La2/d;->d:I

    sget v0, Ldev/virus/variable/app/MinecraftActivity;->k:I

    if-ne v0, v4, :cond_3

    move v7, p2

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eq v0, v4, :cond_4

    move v6, p2

    goto :goto_2

    :cond_4
    move v6, v6

    :goto_2
    if-ne v0, v4, :cond_6

    if-gez v7, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    sget v9, Ldev/virus/variable/app/MinecraftActivity;->c:I

    sub-int/2addr v9, v8

    if-le v7, v9, :cond_8

    move v7, v9

    goto :goto_3

    :cond_6
    if-gez v6, :cond_7

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    sget v9, Ldev/virus/variable/app/MinecraftActivity;->d:I

    sub-int/2addr v9, v8

    if-le v6, v9, :cond_8

    move v6, v9

    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_14

    :try_start_0
    const/4 p2, -0x1

    invoke-virtual {p1, v7, v6, p2, p2}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    const/4 p2, 0x0

    iput-boolean p2, p1, La2/d;->b:Z

    goto/16 :goto_7

    :cond_9
    iget-boolean p2, p1, La2/d;->b:Z

    if-nez p2, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p1, La2/d;->j:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x320

    cmp-long p2, v7, v9

    if-ltz p2, :cond_e

    sget v7, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const v8, 0x800015

    if-ne v7, v8, :cond_a

    const/16 v7, 0x11

    goto :goto_4

    :cond_a
    const v7, 0x800015

    :goto_4
    sput v7, Ldev/virus/variable/app/MinecraftActivity;->k:I

    iget-object v8, p1, La2/d;->e:Landroid/content/Context;

    const-string v9, "variable"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "menu_position"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v5, p1, La2/d;->b:Z

    :try_start_1
    iget-object v8, p1, La2/d;->a:Lb2/c;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lb2/c;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_b
    :try_start_2
    iget-object v8, p1, La2/d;->a:Lb2/c;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_c
    :try_start_3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_d
    const/4 v8, 0x0

    iput-object v8, p1, La2/d;->a:Lb2/c;

    sput-object v8, Ldev/virus/variable/app/MinecraftActivity;->b:La2/d;

    :try_start_4
    iget-object v8, p1, La2/d;->f:Landroid/view/View;

    new-instance v9, La2/o;

    iget-object v10, p1, La2/d;->e:Landroid/content/Context;

    iget-object v11, p1, La2/d;->g:Landroid/view/LayoutInflater;

    invoke-direct {v9, v10, v8, v11}, La2/o;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    goto :goto_7

    :cond_e
    iget-object p2, p1, La2/d;->a:Lb2/c;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_f

    :try_start_5
    iget-object p2, p1, La2/d;->a:Lb2/c;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p2}, Lb2/c;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    goto :goto_5

    :cond_f
    :try_start_6
    iget-object p2, p1, La2/d;->a:Lb2/c;

    iget-object v3, p2, Lb2/c;->a:Landroid/view/View;

    sget v7, Ldev/virus/variable/app/MinecraftActivity;->k:I

    if-ne v7, v4, :cond_10

    const/16 v7, 0x30

    :cond_10
    invoke-virtual {p2, v3, v7, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :goto_5
    const-string p2, "GhostMode"

    invoke-static {p2}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p2

    invoke-virtual {p2}, Lc2/b;->isActive()Z

    move-result p2

    if-nez p2, :cond_12

    iget-object p2, p1, La2/d;->a:Lb2/c;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_6

    :cond_11
    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_12
    const/4 v6, 0x0

    iput-boolean v6, p1, La2/d;->b:Z

    goto :goto_7

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p1, La2/d;->j:J

    iget p2, p1, La2/d;->d:I

    int-to-float p2, p2

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, p1, La2/d;->c:I

    :cond_14
    :goto_7
    return v5
.end method
