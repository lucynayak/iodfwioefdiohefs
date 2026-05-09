.class public final Lb2/d;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object p1, p0, Lb2/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lb2/d;->b:Landroid/view/View;

    const p1, 0x7f0b0063

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f080178

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f080179

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const p1, 0x1030002

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lb2/d;->b:Landroid/view/View;

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const v2, 0x800015

    if-ne v1, v2, :cond_0

    const v1, 0x800035

    goto :goto_0

    :cond_0
    const v2, 0x800013

    if-ne v1, v2, :cond_1

    const v1, 0x800033

    goto :goto_0

    :cond_1
    const/16 v2, 0x33

    if-ne v1, v2, :cond_2

    const/16 v1, 0x51

    goto :goto_0

    :cond_2
    const/16 v1, 0x31

    :goto_0
    iget-object v2, p0, Lb2/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sget v3, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_3

    const/16 v4, 0x33

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const v3, 0x3ed5c28f    # 0.4175f

    :goto_1
    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lb2/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v4, 0x3c353f7d    # 0.0110625f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
