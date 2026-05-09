.class public final Le2/cb;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public oView:Le2/CompassView;


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

    return-void

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

    :cond_1
    return-void
.end method

.method public final G()V
    .registers 11

    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le2/cb;->o:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    new-instance v2, Le2/CompassView;

    invoke-direct {v2, v0}, Le2/CompassView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Le2/cb;->oView:Le2/CompassView;

    const/16 v3, 0x78

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    move v5, v3

    move v6, v3

    const/4 v7, 0x2

    const/16 v8, 0x18

    const/4 v9, -0x3

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v5, 0xa

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final J()V
    .registers 6

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le2/cb;->oView:Le2/CompassView;

    if-eqz v0, :cond_1

    invoke-static {}, La3/r0;->y()F

    move-result v3

    invoke-virtual {v0, v3}, Le2/CompassView;->setYaw(F)V

    iget-object v1, p0, Le2/cb;->o:Li2/d;

    invoke-virtual {v1}, Li2/d;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    const/16 v2, 0x78

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v4, Lk2/a;->b:Landroid/content/Context;

    if-eqz v4, :cond_0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    new-instance v1, Le2/cb$LayoutRunnable;

    invoke-direct {v1, v0, v3, v4}, Le2/cb$LayoutRunnable;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method
