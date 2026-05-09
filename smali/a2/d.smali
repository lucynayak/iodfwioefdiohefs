.class public final La2/d;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field public a:Lb2/c;

.field public b:Z

.field public c:I

.field public d:I

.field public e:Landroid/content/Context;

.field public f:Landroid/view/View;

.field public g:Landroid/view/LayoutInflater;

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget v0, Ldev/virus/variable/app/MinecraftActivity;->c:I

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v0}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object p1, p0, La2/d;->e:Landroid/content/Context;

    iput-object p2, p0, La2/d;->f:Landroid/view/View;

    iput-object p3, p0, La2/d;->g:Landroid/view/LayoutInflater;

    iget-object v0, p0, La2/d;->a:Lb2/c;

    if-nez v0, :cond_0

    new-instance v0, Lb2/c;

    invoke-direct {v0, p1, p2, p3}, Lb2/c;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, La2/d;->a:Lb2/c;

    :cond_0
    sget v0, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const/16 v1, 0x11

    const v2, 0x800015

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    sput v2, Ldev/virus/variable/app/MinecraftActivity;->k:I

    :cond_1
    sget v0, Ldev/virus/variable/app/MinecraftActivity;->k:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, La2/d;->d:I

    sget v0, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const v2, 0x800015

    if-ne v0, v2, :cond_3

    const v3, 0x7f07007f

    goto :goto_1

    :cond_3
    const v3, 0x7f07007e

    :goto_1
    if-ne v0, v2, :cond_4

    const v0, 0x7f07007c

    goto :goto_2

    :cond_4
    const v0, 0x7f07007b

    :goto_2
    const v4, 0x7f0b0033

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, La2/c;

    invoke-direct {p1, p0, p3, v3, v0}, La2/c;-><init>(La2/d;Landroid/widget/TextView;II)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    if-ne p1, v2, :cond_5

    const p3, 0x800033

    goto :goto_3

    :cond_5
    const p3, 0x800053

    :goto_3
    const/4 v0, 0x0

    if-ne p1, v1, :cond_6

    iget v2, p0, La2/d;->d:I

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eq p1, v1, :cond_7

    iget v0, p0, La2/d;->d:I

    goto :goto_5

    :cond_7
    :goto_5
    :try_start_0
    invoke-virtual {p0, p2, p3, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v2, "MenuBtn"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method
