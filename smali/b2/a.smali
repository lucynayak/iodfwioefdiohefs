.class public final Lb2/a;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field public static e:Lb2/a;

.field public static f:Lb2/a;

.field public static g:Lb2/a;

.field public static h:Lb2/a;

.field public static i:Lb2/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/ImageButton;

.field public final d:Landroid/widget/LinearLayout;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/widget/ImageButton;)V
    .registers 16

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v5, "variable"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "window_width_scale"

    const v7, 0x3e99999a    # 0.3f

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    mul-float v6, v8, v6

    float-to-int v0, v6

    sget v2, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    const/16 v4, 0x33

    if-ne v2, v4, :cond_1

    :cond_0
    const v2, 0x3f4e147b    # 0.805f

    goto :goto_0

    :cond_1
    const v2, 0x3f7ae148    # 0.98f

    :goto_0
    const-string v6, "window_height_scale"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const v6, 0x3f7ae148    # 0.98f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_2

    const v2, 0x3f7ae148    # 0.98f

    :cond_2
    int-to-float v7, v7

    mul-float v2, v7, v2

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object p1, p0, Lb2/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lb2/a;->b:Landroid/view/View;

    iput-object p5, p0, Lb2/a;->c:Landroid/widget/ImageButton;

    iput-object p4, p0, Lb2/a;->j:Ljava/lang/String;

    const p5, 0x7f0b0023

    const/4 v0, 0x0

    invoke-virtual {p3, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    const v0, 0x7f080072

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lb2/a;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f080071

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lb2/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lc2/b;

    invoke-virtual {v8}, Lc2/b;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v4, La2/j;

    iget-object v9, p0, Lb2/a;->d:Landroid/widget/LinearLayout;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, La2/j;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    sget p1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const p2, 0x800015

    if-ne p1, p2, :cond_5

    const p1, 0x7f0e01fd

    goto :goto_2

    :cond_5
    if-eq p1, v3, :cond_6

    const/16 v4, 0x33

    if-ne p1, v4, :cond_7

    :cond_6
    const p1, 0x7f0e01fb

    goto :goto_2

    :cond_7
    const p1, 0x7f0e01fc

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .registers 4

    invoke-static {}, Lz1/b;->c()V

    const/4 v0, 0x1

    invoke-static {v0}, Le2/ap;->setSliderVisible(Z)V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lb2/a;->c:Landroid/widget/ImageButton;

    iget-object v1, p0, Lb2/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final rebuildViews()V
    .registers 13

    iget-object v4, p0, Lb2/a;->j:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v0, p0, Lb2/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v2, p0, Lb2/a;->b:Landroid/view/View;

    iget-object v1, p0, Lb2/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v5, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc2/b;

    invoke-virtual {v10}, Lc2/b;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v6, La2/j;

    iget-object v7, p0, Lb2/a;->a:Landroid/content/Context;

    move-object v8, v2

    move-object v9, v3

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, La2/j;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Le2/ap;->setSliderVisible(Z)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
