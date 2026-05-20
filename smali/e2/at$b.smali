.class public final Le2/at$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le2/at;

.field public final b:Z


# direct methods
.method public constructor <init>(Le2/at;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/at$b;->a:Le2/at;

    iput-boolean p2, p0, Le2/at$b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Le2/at$b;->a:Le2/at;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Le2/at$b;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Le2/at;->overlay:Landroid/widget/PopupWindow;

    if-nez v1, :cond_3

    iget-object v1, v0, Le2/at;->o:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    new-instance v3, Le2/at$a;

    invoke-direct {v3, v2, v0}, Le2/at$a;-><init>(Landroid/content/Context;Le2/at;)V

    iput-object v3, v0, Le2/at;->tracerView:Le2/at$a;

    const/4 v4, -0x1

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v3, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/16 v7, 0x33

    invoke-virtual {v5, v1, v7, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput-object v5, v0, Le2/at;->overlay:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    iget-object v1, v0, Le2/at;->overlay:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Le2/at;->overlay:Landroid/widget/PopupWindow;

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Le2/at;->tracerView:Le2/at$a;

    :cond_3
    return-void
.end method
