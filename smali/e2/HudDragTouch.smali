.class public final Le2/HudDragTouch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public downParamsX:I

.field public downParamsY:I

.field public downRawX:F

.field public downRawY:F

.field public final editSetting:Li2/e;

.field public maxWindowX:I

.field public maxWindowY:I

.field public final xKey:Ljava/lang/String;

.field public final yKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Li2/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/HudDragTouch;->xKey:Ljava/lang/String;

    iput-object p2, p0, Le2/HudDragTouch;->yKey:Ljava/lang/String;

    iput-object p3, p0, Le2/HudDragTouch;->editSetting:Li2/e;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Le2/HudDragTouch;->editSetting:Li2/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Li2/e;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v0, v3, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Le2/HudDragTouch;->downRawX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Le2/HudDragTouch;->downRawY:F

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Le2/HudDragTouch;->downParamsX:I

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Le2/HudDragTouch;->downParamsY:I

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Le2/HudDragTouch;->downRawX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Le2/HudDragTouch;->downParamsX:I

    add-int/2addr v1, v2

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    if-ltz v2, :cond_4

    if-le v1, v2, :cond_4

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Le2/HudDragTouch;->downRawY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Le2/HudDragTouch;->downParamsY:I

    add-int/2addr v1, v2

    if-ltz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    if-ltz v2, :cond_6

    if-le v1, v2, :cond_6

    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_7

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "variable"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Le2/HudDragTouch;->xKey:Ljava/lang/String;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Le2/HudDragTouch;->yKey:Ljava/lang/String;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    :goto_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
