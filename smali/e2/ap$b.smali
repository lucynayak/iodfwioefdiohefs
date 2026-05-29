.class public final Le2/ap$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Le2/ap;

.field public downParamsX:I

.field public downParamsY:I

.field public downRawX:F

.field public downRawY:F


# direct methods
.method public constructor <init>(Le2/ap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/ap$b;->b:Le2/ap;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Le2/ap$b;->b:Le2/ap;

    iget-object v0, v0, Le2/ap;->p:Li2/e;

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

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Le2/ap$b;->downRawX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Le2/ap$b;->downRawY:F

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Le2/ap$b;->downParamsX:I

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Le2/ap$b;->downParamsY:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Le2/ap$b;->downRawX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Le2/ap$b;->downParamsX:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Le2/ap$b;->downRawY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Le2/ap$b;->downParamsY:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "variable"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "zoom_slider_wx"

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "zoom_slider_wy"

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
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
