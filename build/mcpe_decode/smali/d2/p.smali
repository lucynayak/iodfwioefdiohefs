.class public final Ld2/p;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public final o:Li2/b;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public final r:Li2/e;

.field public s:Landroid/content/Context;

.field public t:Landroid/view/View;

.field public u:[Landroid/widget/PopupWindow;

.field public v:[[I

.field public w:[I

.field public y:[D

.field public z:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 11

    const-string v0, "ButtonEditor"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Ld2/p;->s:Landroid/content/Context;

    iput-object p2, p0, Ld2/p;->t:Landroid/view/View;

    const/4 v0, 0x6

    new-array v4, v0, [Landroid/widget/PopupWindow;

    iput-object v4, p0, Ld2/p;->u:[Landroid/widget/PopupWindow;

    new-array v4, v0, [[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, p0, Ld2/p;->v:[[I

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Ld2/p;->w:[I

    new-array v5, v0, [D

    const-wide v6, 0x4054000000000000L    # 80.0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_1

    aput-wide v6, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iput-object v5, p0, Ld2/p;->y:[D

    const/4 v8, -0x1

    iput v8, p0, Ld2/p;->B:I

    new-instance v4, Li2/b;

    const-string v5, "Button"

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "Forward"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "Back"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "Left"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v8, 0x3

    const-string v7, "Right"

    aput-object v7, v6, v8

    const/4 v8, 0x4

    const-string v7, "Jump"

    aput-object v7, v6, v8

    const/4 v8, 0x5

    const-string v7, "Sneak"

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v4, p0, Ld2/p;->o:Li2/b;

    new-instance v5, Li2/d;

    const/4 v6, 0x4

    new-array v7, v6, [D

    fill-array-data v7, :array_1

    const-string v8, "Size"

    invoke-direct {v5, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Ld2/p;->p:Li2/d;

    new-instance v6, Li2/d;

    const/4 v8, 0x4

    new-array v7, v8, [D

    fill-array-data v7, :array_2

    const-string v8, "Opacity"

    invoke-direct {v6, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v6, p0, Ld2/p;->q:Li2/d;

    new-instance v7, Li2/e;

    const-string v8, "Edit mode"

    invoke-direct {v7, v8, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v7, p0, Ld2/p;->r:Li2/e;

    const/4 v8, 0x4

    new-array v8, v8, [Li2/c;

    aput-object v4, v8, v2

    aput-object v5, v8, v1

    const/4 v10, 0x2

    aput-object v6, v8, v10

    const/4 v10, 0x3

    aput-object v7, v8, v10

    invoke-virtual {p0, v8}, Lc2/b;->A([Li2/c;)V

    invoke-virtual {p0}, Ld2/p;->loadPositions()V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        -0x3
        -0x2
    .end array-data

    :array_1
    .array-data 8
        0x4054000000000000L    # 80.0
        0x402e000000000000L    # 15.0
        0x4069000000000000L    # 200.0
        0x4014000000000000L    # 5.0
    .end array-data

    :array_2
    .array-data 8
        0x4054000000000000L    # 80.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x4014000000000000L    # 5.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 4

    iget-object v0, p0, Ld2/p;->w:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ld2/p$c;

    invoke-direct {v0, p0}, Ld2/p$c;-><init>(Ld2/p;)V

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final G()V
    .locals 4

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_0

    new-instance v1, Ld2/p$b;

    invoke-direct {v1, p0}, Ld2/p$b;-><init>(Ld2/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 10

    iget-object v0, p0, Ld2/p;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->o:Li2/b;

    iget-object v1, v1, Li2/b;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x6

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v9, v1, v2

    if-eqz v9, :cond_0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    const-string v0, "Forward"

    iget-object v1, p0, Ld2/p;->o:Li2/b;

    iput-object v0, v1, Li2/b;->f:Ljava/lang/String;

    :cond_2
    iget v9, p0, Ld2/p;->B:I

    if-eq v2, v9, :cond_3

    iput v2, p0, Ld2/p;->B:I

    iget-object v6, p0, Ld2/p;->y:[D

    aget-wide v4, v6, v2

    iget-object v9, p0, Ld2/p;->p:Li2/d;

    iget-object v7, v9, Li2/d;->e:[D

    const/4 v8, 0x0

    aput-wide v4, v7, v8

    goto :goto_1

    :cond_3
    iget-object v9, p0, Ld2/p;->p:Li2/d;

    invoke-virtual {v9}, Li2/d;->getCurrentValue()D

    move-result-wide v4

    iget-object v6, p0, Ld2/p;->y:[D

    aget-wide v7, v6, v2

    cmpl-double v9, v4, v7

    if-eqz v9, :cond_4

    aput-wide v4, v6, v2

    invoke-virtual {p0}, Ld2/p;->updateButtons()V

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Ld2/p;->q:Li2/d;

    invoke-virtual {v0}, Li2/d;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Ld2/p;->z:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_5

    iput-wide v0, p0, Ld2/p;->z:D

    invoke-virtual {p0}, Ld2/p;->updateButtons()V

    :cond_5
    return-void
.end method

.method public final K(Lorg/json/JSONObject;)V
    .locals 6

    invoke-super {p0, p1}, Lc2/b;->K(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "btn_positions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "btn_positions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->v:[[I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    aget-object v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v3, 0x0

    aput v5, v4, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "btn_sizes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "btn_sizes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->y:[D

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final M()V
    .locals 7

    invoke-super {p0}, Lc2/b;->M()V

    :try_start_0
    iget-object v0, p0, Ld2/p;->v:[[I

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v2, "btn_positions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Ld2/p;->y:[D

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x6

    if-ge v4, v5, :cond_1

    aget-wide v5, v3, v4

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "btn_sizes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Ld2/p;->savePositions()V

    return-void
.end method

.method createButtons()V
    .locals 15

    iget-object v0, p0, Ld2/p;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Ld2/p;->q:Li2/d;

    const-string v4, "current"

    invoke-virtual {v3, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Ld2/p;->z:D

    double-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/4 v6, 0x6

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "\u25b2"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "\u25bc"

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "\u25c0"

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-string v8, "\u25b6"

    const/4 v10, 0x3

    aput-object v8, v7, v10

    const-string v8, "J"

    const/4 v10, 0x4

    aput-object v8, v7, v10

    const-string v8, "S"

    const/4 v10, 0x5

    aput-object v8, v7, v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_0

    iget-object v8, p0, Ld2/p;->y:[D

    aget-wide v3, v8, v9

    double-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v11, v7, v9

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v11, 0x2

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v12, 0x66000000

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :try_start_0
    sget-object v12, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const v12, -0xff0100

    :goto_1
    const/4 v13, 0x3

    invoke-virtual {v11, v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setAlpha(F)V

    new-instance v11, Landroid/widget/PopupWindow;

    invoke-direct {v11, v3, v3}, Landroid/widget/PopupWindow;-><init>(II)V

    invoke-virtual {v11, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v12, p0, Ld2/p;->w:[I

    aget v12, v12, v9

    new-instance v13, Ld2/p$a;

    invoke-direct {v13, p0, v9, v12}, Ld2/p$a;-><init>(Ld2/p;II)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v12, p0, Ld2/p;->u:[Landroid/widget/PopupWindow;

    aput-object v11, v12, v9

    :try_start_1
    iget-object v12, p0, Ld2/p;->v:[[I

    aget-object v12, v12, v9

    const/4 v13, 0x0

    aget v14, v12, v13

    const/4 v13, 0x1

    aget v13, v12, v13

    iget-object v12, p0, Ld2/p;->t:Landroid/view/View;

    const/16 v10, 0x33

    invoke-virtual {v11, v12, v10, v14, v13}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method dismissButtons()V
    .locals 4

    iget-object v0, p0, Ld2/p;->u:[Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x6

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method loadPositions()V
    .locals 7

    iget-object v0, p0, Ld2/p;->s:Landroid/content/Context;

    const-string v1, "horrible_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Ld2/p;->v:[[I

    aget-object v6, v1, v2

    div-int/lit8 v5, v3, 0x6

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    const/4 p0, 0x1

    aput v5, v6, p0

    aget-object v6, v1, p0

    div-int/lit8 v5, v3, 0x6

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x5

    div-int/lit8 v5, v5, 0x6

    aput v5, v6, p0

    const/4 v5, 0x2

    aget-object v6, v1, v5

    div-int/lit8 v5, v3, 0xa

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x4

    aput v5, v6, p0

    const/4 v5, 0x3

    aget-object v6, v1, v5

    div-int/lit8 v5, v3, 0x4

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x4

    aput v5, v6, p0

    const/4 v5, 0x4

    aget-object v6, v1, v5

    mul-int/lit8 v5, v3, 0x4

    div-int/lit8 v5, v5, 0x5

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    aput v5, v6, p0

    const/4 v5, 0x5

    aget-object v6, v1, v5

    mul-int/lit8 v5, v3, 0x4

    div-int/lit8 v5, v5, 0x5

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x5

    div-int/lit8 v5, v5, 0x6

    aput v5, v6, p0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p0, "btn_x_"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 p0, -0x1

    invoke-interface {v0, v6, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, p0, :cond_0

    aget-object p0, v1, v5

    aput v6, p0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p0, "btn_y_"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 p0, 0x0

    invoke-interface {v0, v6, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aget-object p0, v1, v5

    const/4 v3, 0x1

    aput v6, p0, v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method savePositions()V
    .locals 7

    iget-object v0, p0, Ld2/p;->s:Landroid/content/Context;

    const-string v1, "horrible_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->v:[[I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btn_x_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v3, v5

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btn_y_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget v6, v3, v5

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateButtons()V
    .locals 1

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ld2/p$b;

    invoke-direct {v0, p0}, Ld2/p$b;-><init>(Ld2/p;)V

    sget-object p0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
