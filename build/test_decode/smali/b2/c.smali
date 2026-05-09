.class public final Lb2/c;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 17

    move-object/from16 v0, p0

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const/4 v2, -0x1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_0

    const/16 v4, 0x33

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v4, 0x3ddc28f6    # 0.1075f

    mul-float v1, v1, v4

    float-to-int v1, v1

    :goto_0
    sget v4, Ldev/virus/variable/app/MinecraftActivity;->k:I

    if-eq v4, v3, :cond_2

    const/16 v5, 0x33

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v4, 0x3e333333    # 0.175f

    mul-float v2, v2, v4

    float-to-int v2, v2

    :cond_3
    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(II)V

    move-object/from16 v1, p2

    iput-object v1, v0, Lb2/c;->a:Landroid/view/View;

    sget v2, Ldev/virus/variable/app/MinecraftActivity;->k:I

    if-eq v2, v3, :cond_4

    const/16 v5, 0x33

    if-ne v2, v5, :cond_5

    :cond_4
    const v2, 0x7f0b005e

    goto :goto_1

    :cond_5
    const v2, 0x7f0b005f

    :goto_1
    const/4 v4, 0x0

    move-object/from16 v10, p3

    invoke-virtual {v10, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v4, 0x7f08012e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v4, 0x7f08012f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v4, 0x7f080130

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v4, 0x7f080131

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v4, 0x7f08012d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/ImageButton;

    const v4, 0x7f080133

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/ImageButton;

    const v4, 0x7f080135

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/ImageButton;

    const v4, 0x7f080132

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/ImageButton;

    const v4, 0x7f080134

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/ImageButton;

    new-instance v16, Lb2/a;

    const-string v8, "Combat"

    move-object/from16 v4, v16

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lb2/a;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/widget/ImageButton;)V

    sput-object v16, Lb2/a;->e:Lb2/a;

    new-instance v16, Lb2/a;

    const-string v8, "Movement"

    move-object/from16 v4, v16

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lb2/a;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/widget/ImageButton;)V

    sput-object v16, Lb2/a;->f:Lb2/a;

    new-instance v16, Lb2/a;

    const-string v8, "Player"

    move-object/from16 v4, v16

    move-object v9, v13

    invoke-direct/range {v4 .. v9}, Lb2/a;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/widget/ImageButton;)V

    sput-object v16, Lb2/a;->g:Lb2/a;

    new-instance v16, Lb2/a;

    const-string v8, "Misc"

    move-object/from16 v4, v16

    move-object v9, v14

    invoke-direct/range {v4 .. v9}, Lb2/a;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/widget/ImageButton;)V

    sput-object v16, Lb2/a;->h:Lb2/a;

    new-instance v16, Lb2/a;

    const-string v8, "Other"

    move-object/from16 v4, v16

    move-object v9, v15

    invoke-direct/range {v4 .. v9}, Lb2/a;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/widget/ImageButton;)V

    sput-object v16, Lb2/a;->i:Lb2/a;

    sget-object v1, Lb2/a;->e:Lb2/a;

    invoke-virtual {v0, v1}, Lb2/c;->b(Lb2/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lb2/a;->f:Lb2/a;

    invoke-virtual {v0, v1}, Lb2/c;->b(Lb2/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lb2/a;->g:Lb2/a;

    invoke-virtual {v0, v1}, Lb2/c;->b(Lb2/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lb2/a;->h:Lb2/a;

    invoke-virtual {v0, v1}, Lb2/c;->b(Lb2/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lb2/a;->i:Lb2/a;

    invoke-virtual {v0, v1}, Lb2/c;->b(Lb2/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const v2, 0x800015

    if-ne v1, v2, :cond_6

    const v1, 0x7f0e01f9

    goto :goto_2

    :cond_6
    if-eq v1, v3, :cond_7

    const/16 v5, 0x33

    if-ne v1, v5, :cond_8

    :cond_7
    const v1, 0x7f0e01f7

    goto :goto_2

    :cond_8
    const v1, 0x7f0e01f8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lz1/b;->c()V

    sget-object v0, Lb2/a;->e:Lb2/a;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lb2/a;->e:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->dismiss()V

    :cond_0
    sget-object v0, Lb2/a;->f:Lb2/a;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lb2/a;->f:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->dismiss()V

    :cond_1
    sget-object v0, Lb2/a;->g:Lb2/a;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lb2/a;->g:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->dismiss()V

    :cond_2
    sget-object v0, Lb2/a;->h:Lb2/a;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lb2/a;->h:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->dismiss()V

    :cond_3
    sget-object v0, Lb2/a;->i:Lb2/a;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lb2/a;->i:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->dismiss()V

    :cond_4
    return-void
.end method

.method public final b(Lb2/a;)Landroid/view/View$OnClickListener;
    .locals 2

    new-instance v0, Lb2/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lb2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method
