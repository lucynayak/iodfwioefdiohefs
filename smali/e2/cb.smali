.class public final Le2/cb;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public oView:Le2/CompassView;

.field public final p:Li2/e;

.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "Compass"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Scale"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/cb;->o:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "Edit position"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/cb;->p:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x4008000000000000L    # 3.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 4

    iget-object v0, p0, Le2/cb;->oView:Le2/CompassView;

    if-eqz v0, :cond_1

    sget-object v1, Lk2/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Le2/cb;->oView:Le2/CompassView;

    const/4 v0, 0x0

    iput v0, p0, Le2/cb;->q:I

    :cond_1
    return-void
.end method

.method public final G()V
    .registers 12

    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le2/cb;->o:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    new-instance v2, Le2/CompassView;

    invoke-direct {v2, v0}, Le2/CompassView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Le2/cb;->oView:Le2/CompassView;

    const/16 v3, 0x168

    iput v3, p0, Le2/cb;->q:I

    const/4 v9, 0x0

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setPivotY(F)V

    const/high16 v9, 0x40400000    # 3.0f

    div-float v9, v1, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v9, p0, Le2/cb;->o:Li2/d;

    new-instance v10, Le2/cb$a;

    invoke-direct {v10, p0}, Le2/cb$a;-><init>(Le2/cb;)V

    iput-object v10, v9, Li2/d;->f:Li2/d$a;

    iget-object v9, p0, Le2/cb;->p:Li2/e;

    new-instance v10, Le2/cb$b;

    invoke-direct {v10, p0}, Le2/cb$b;-><init>(Le2/cb;)V

    iput-object v10, v9, Li2/e;->f:Li2/e$a;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    move v5, v3

    move v6, v3

    const/4 v7, 0x2

    const/16 v8, 0x318

    iget-object v9, p0, Le2/cb;->p:Li2/e;

    if-eqz v9, :cond_0

    iget-boolean v9, v9, Li2/e;->e:Z

    if-eqz v9, :cond_0

    const v8, 0x800328

    :cond_0
    const/4 v9, -0x3

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v5, 0xa

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v5, "variable"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "compass_abs_wx"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v6, "compass_abs_wy"

    const/16 v7, 0xa

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Le2/HudDragTouch;

    const-string v6, "compass_abs_wx"

    const-string v7, "compass_abs_wy"

    iget-object v8, p0, Le2/cb;->p:Li2/e;

    invoke-direct {v5, v6, v7, v8}, Le2/HudDragTouch;-><init>(Ljava/lang/String;Ljava/lang/String;Li2/e;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final J()V
    .registers 8

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/cb;->oView:Le2/CompassView;

    if-eqz v0, :cond_0

    invoke-static {}, La3/r0;->y()F

    move-result v3

    invoke-virtual {v0, v3}, Le2/CompassView;->setYaw(F)V

    iget-object v1, p0, Le2/cb;->o:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
