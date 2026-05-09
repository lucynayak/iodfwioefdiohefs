.class public final La2/b;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/TextView;

.field public final d:Lc2/b;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lc2/b;

.field public k:Li2/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->j:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    sget v2, Ldev/virus/variable/app/MinecraftActivity;->j:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object p1, p0, La2/b;->a:Landroid/content/Context;

    iput-object p2, p0, La2/b;->b:Landroid/view/View;

    iput-object p4, p0, La2/b;->d:Lc2/b;

    const-string p2, "GhostMode"

    invoke-static {p2}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p2

    iput-object p2, p0, La2/b;->j:Lc2/b;

    const-string v0, "Hide binds"

    invoke-virtual {p2, v0}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p2

    check-cast p2, Li2/e;

    iput-object p2, p0, La2/b;->k:Li2/e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const p2, 0x3ccccccd    # 0.025f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const p2, 0x7f0b0034

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, La2/b;->c:Landroid/widget/TextView;

    invoke-virtual {p4}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lz1/p;->getBindDisplayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Ldev/virus/variable/app/MinecraftActivity;->i:F

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p3, La2/a;

    invoke-direct {p3, p0, p1, p4}, La2/a;-><init>(La2/b;ILc2/b;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0e01f6

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, La2/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, La2/b;->d:Lc2/b;

    invoke-virtual {v1}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz1/p;->getBindDisplayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, La2/b;->j:Lc2/b;

    invoke-virtual {v1}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La2/b;->k:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, La2/b;->d:Lc2/b;

    invoke-virtual {v1}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, La2/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, La2/b;->j:Lc2/b;

    invoke-virtual {v1}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La2/b;->k:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La2/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget v2, Ldev/virus/variable/app/MinecraftActivity;->bindShape:I

    if-nez v2, :cond_3

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_1
    iget-object v2, p0, La2/b;->d:Lc2/b;

    invoke-virtual {v2}, Lc2/b;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v3, "#FF1A1A2E"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget-object v3, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    :cond_5
    const-string v3, "#FF0F0F23"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const-string v3, "#FF333333"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v0, p0, La2/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, La2/b;->d:Lc2/b;

    iget v1, v1, Lc2/b;->bindOpacity:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
