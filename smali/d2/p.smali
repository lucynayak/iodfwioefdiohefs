.class public final Ld2/p;
.super Lc2/b;
.source "SourceFile"


# instance fields
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

.field public C:[D

.field public z:D

.field public A:Ljava/lang/String;

.field public B:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 15

    const-string v0, "ButtonEditor"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Ld2/p;->s:Landroid/content/Context;

    iput-object p2, p0, Ld2/p;->t:Landroid/view/View;

    # Create PopupWindow array (6 buttons)
    const/4 v0, 0x6

    new-array v4, v0, [Landroid/widget/PopupWindow;

    iput-object v4, p0, Ld2/p;->u:[Landroid/widget/PopupWindow;

    # Create positions array (6x2)
    new-array v4, v0, [[I

    const/4 v5, 0x0

    :goto_pos
    if-ge v5, v0, :done_pos

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_pos

    :done_pos
    iput-object v4, p0, Ld2/p;->v:[[I

    # Button IDs array: Forward=1, Back=2, Left=3, Right=4, Jump=-3, Sneak=-2
    new-array v4, v0, [I

    fill-array-data v4, :btn_ids

    iput-object v4, p0, Ld2/p;->w:[I

    # Create per-button size cache (6 doubles, all 80.0)
    new-array v5, v0, [D

    const-wide v6, 0x4054000000000000L    # 80.0

    const/4 v8, 0x0

    :size_init_loop
    if-ge v8, v0, :size_init_done

    aput-wide v6, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :size_init_loop

    :size_init_done
    iput-object v5, p0, Ld2/p;->y:[D

    # Create per-button opacity cache (6 doubles, all 80.0)
    new-array v5, v0, [D

    const/4 v8, 0x0

    :opa_init_loop
    if-ge v8, v0, :opa_init_done

    aput-wide v6, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :opa_init_loop

    :opa_init_done
    iput-object v5, p0, Ld2/p;->C:[D

    # Initialize last selected button index to -1
    const/4 v8, -0x1
    iput v8, p0, Ld2/p;->B:I

    # ModeSetting "Button" with 6 options
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

    # SliderSetting "Size" (40-200, default 80, step 5)
    new-instance v5, Li2/d;

    const/4 v6, 0x4

    new-array v7, v6, [D

    fill-array-data v7, :size_arr

    const-string v8, "Size"

    invoke-direct {v5, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Ld2/p;->p:Li2/d;

    # SliderSetting "Opacity" (10-100, default 80, step 5)
    new-instance v6, Li2/d;

    const/4 v8, 0x4

    new-array v7, v8, [D

    fill-array-data v7, :opacity_arr

    const-string v8, "Opacity"

    invoke-direct {v6, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v6, p0, Ld2/p;->q:Li2/d;

    # StateSetting "Edit mode" (default false)
    new-instance v7, Li2/e;

    const-string v8, "Edit mode"

    invoke-direct {v7, v8, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v7, p0, Ld2/p;->r:Li2/e;

    # Add all 4 settings
    const/4 v8, 0x4

    new-array v8, v8, [Li2/c;

    aput-object v4, v8, v2

    aput-object v5, v8, v1

    const/4 v10, 0x2

    aput-object v6, v8, v10

    const/4 v10, 0x3

    aput-object v7, v8, v10

    invoke-virtual {p0, v8}, Lc2/b;->A([Li2/c;)V

    # Load saved positions from SharedPreferences
    invoke-virtual {p0}, Ld2/p;->loadPositions()V

    return-void

    :btn_ids
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        -0x3
        -0x2
    .end array-data

    :size_arr
    .array-data 8
        0x4054000000000000L    # 80.0 (current)
        0x4044000000000000L    # 40.0 (min)
        0x4069000000000000L    # 200.0 (max)
        0x4014000000000000L    # 5.0 (delta)
    .end array-data

    :opacity_arr
    .array-data 8
        0x4054000000000000L    # 80.0 (current)
        0x4024000000000000L    # 10.0 (min)
        0x4059000000000000L    # 100.0 (max)
        0x4014000000000000L    # 5.0 (delta)
    .end array-data
.end method

.method loadPositions()V
    .registers 8

    iget-object v0, p0, Ld2/p;->s:Landroid/content/Context;

    const-string v1, "horrible_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    # Load display metrics for default positions
    iget-object v1, p0, Ld2/p;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    # Default positions (bottom-left area for D-pad, right for jump/sneak)
    iget-object v1, p0, Ld2/p;->v:[[I

    # Forward: center-left, upper
    aget-object v6, v1, v2

    div-int/lit8 v5, v3, 0x6

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    const/4 v7, 0x1

    aput v5, v6, v7

    # Back: center-left, lower
    aget-object v6, v1, v7

    div-int/lit8 v5, v3, 0x6

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x5

    div-int/lit8 v5, v5, 0x6

    aput v5, v6, v7

    # Left: left side
    const/4 v5, 0x2

    aget-object v6, v1, v5

    div-int/lit8 v5, v3, 0xa

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x4

    aput v5, v6, v7

    # Right: right of d-pad
    const/4 v5, 0x3

    aget-object v6, v1, v5

    div-int/lit8 v5, v3, 0x4

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x4

    aput v5, v6, v7

    # Jump: right side
    const/4 v5, 0x4

    aget-object v6, v1, v5

    mul-int/lit8 v5, v3, 0x4

    div-int/lit8 v5, v5, 0x5

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    aput v5, v6, v7

    # Sneak: right side lower
    const/4 v5, 0x5

    aget-object v6, v1, v5

    mul-int/lit8 v5, v3, 0x4

    div-int/lit8 v5, v5, 0x5

    aput v5, v6, v2

    mul-int/lit8 v5, v4, 0x5

    div-int/lit8 v5, v5, 0x6

    aput v5, v6, v7

    # Now override with saved positions if they exist
    const/4 v5, 0x0

    :load_loop
    const/4 v6, 0x6

    if-ge v5, v6, :load_done

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btn_x_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v7, :skip_load

    aget-object v7, v1, v5

    aput v6, v7, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btn_y_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aget-object v7, v1, v5

    const/4 v3, 0x1

    aput v6, v7, v3

    :skip_load
    add-int/lit8 v5, v5, 0x1

    goto :load_loop

    :load_done
    return-void
.end method

.method savePositions()V
    .registers 8

    iget-object v0, p0, Ld2/p;->s:Landroid/content/Context;

    const-string v1, "horrible_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->v:[[I

    const/4 v2, 0x0

    :save_loop
    const/4 v3, 0x6

    if-ge v2, v3, :save_done

    aget-object v3, v1, v2

    # Save X
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

    # Save Y
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

    goto :save_loop

    :save_done
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method createButtons()V
    .registers 16

    iget-object v0, p0, Ld2/p;->s:Landroid/content/Context;

    # Get display density
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    # Button labels: up/down/left/right arrows, jump up, sneak down
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

    # Loop: create 6 buttons
    const/4 v9, 0x0

    :create_loop
    if-ge v9, v6, :create_done

    # Compute per-button size in pixels
    iget-object v8, p0, Ld2/p;->y:[D

    aget-wide v3, v8, v9

    double-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    # Create TextView
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v11, v7, v9

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v11, 0x2

    int-to-float v12, v3

    div-float/2addr v12, v2

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    # Background: semi-transparent rounded rect with accent stroke
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v12, 0x66000000

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :try_start_color
    sget-object v12, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12
    :try_end_color
    .catch Ljava/lang/Exception; {:try_start_color .. :try_end_color} :catch_color

    goto :set_stroke

    :catch_color
    const v12, -0xff0100

    :set_stroke
    const/4 v13, 0x3

    invoke-virtual {v11, v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    # Set alpha per-button from C[v9]
    iget-object v11, p0, Ld2/p;->C:[D

    aget-wide v4, v11, v9

    double-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {v10, v4}, Landroid/view/View;->setAlpha(F)V

    # Create PopupWindow
    new-instance v11, Landroid/widget/PopupWindow;

    invoke-direct {v11, v3, v3}, Landroid/widget/PopupWindow;-><init>(II)V

    invoke-virtual {v11, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    # Make touchable
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    # Touch listener
    iget-object v12, p0, Ld2/p;->w:[I

    aget v12, v12, v9

    new-instance v13, Ld2/p$a;

    invoke-direct {v13, p0, v9, v12}, Ld2/p$a;-><init>(Ld2/p;II)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    # Store in array
    iget-object v12, p0, Ld2/p;->u:[Landroid/widget/PopupWindow;

    aput-object v11, v12, v9

    # Show at saved position
    :try_start_show
    iget-object v12, p0, Ld2/p;->v:[[I

    aget-object v12, v12, v9

    const/4 v13, 0x0

    aget v14, v12, v13

    const/4 v13, 0x1

    aget v13, v12, v13

    iget-object v12, p0, Ld2/p;->t:Landroid/view/View;

    const/16 v10, 0x33

    invoke-virtual {v11, v12, v10, v14, v13}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_show
    .catch Ljava/lang/Exception; {:try_start_show .. :try_end_show} :catch_show

    :catch_show
    add-int/lit8 v9, v9, 0x1

    goto :create_loop

    :create_done
    return-void
.end method

.method applyButton(I)V
    .registers 11

    # Apply per-button size + opacity changes in-place, no recreate
    iget-object v0, p0, Ld2/p;->u:[Landroid/widget/PopupWindow;

    if-eqz v0, :apply_done

    const/4 v1, 0x0

    if-lt p1, v1, :apply_done

    const/4 v1, 0x6

    if-ge p1, v1, :apply_done

    aget-object v1, v0, p1

    if-eqz v1, :apply_done

    :try_start_a
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :apply_done

    # Density
    iget-object v2, p0, Ld2/p;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    # Size in px
    iget-object v3, p0, Ld2/p;->y:[D

    aget-wide v3, v3, p1

    double-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    # Content view -> TextView
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :skip_text

    check-cast v4, Landroid/widget/TextView;

    # Text size scaled from px size / density * 0.3
    int-to-float v5, v3

    div-float/2addr v5, v2

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    # Alpha from C[p1]
    iget-object v5, p0, Ld2/p;->C:[D

    aget-wide v5, v5, p1

    double-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :skip_text

    # popup.update(x, y, size, size)
    iget-object v5, p0, Ld2/p;->v:[[I

    aget-object v5, v5, p1

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v6, 0x1

    aget v8, v5, v6

    invoke-virtual {v1, v7, v8, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :apply_done
    return-void
.end method

.method dismissButtons()V
    .registers 8

    iget-object v0, p0, Ld2/p;->u:[Landroid/widget/PopupWindow;

    if-eqz v0, :dismiss_done

    iget-object v4, p0, Ld2/p;->w:[I

    const/4 v1, 0x0

    const/4 v2, 0x6

    :dismiss_loop
    if-ge v1, v2, :dismiss_done

    if-eqz v4, :skip_release_d

    aget v5, v4, v1

    const/4 v6, 0x0

    :try_start_rel_d
    invoke-static {v5, v6}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V
    :try_end_rel_d
    .catch Ljava/lang/Exception; {:try_start_rel_d .. :try_end_rel_d} :catch_rel_d

    :catch_rel_d
    :skip_release_d
    aget-object v3, v0, v1

    if-eqz v3, :skip_dismiss

    :try_start_d
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :skip_dismiss

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :skip_dismiss
    const/4 v3, 0x0

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :dismiss_loop

    :dismiss_done
    return-void
.end method


# virtual methods
.method public final G()V
    .registers 5

    # onEnable - create and show overlay buttons on UI thread
    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :skip

    new-instance v1, Ld2/p$b;

    invoke-direct {v1, p0}, Ld2/p$b;-><init>(Ld2/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :skip
    return-void
.end method

.method public final E()V
    .registers 5

    # onDisable - release all held buttons, then dismiss UI
    iget-object v0, p0, Ld2/p;->w:[I

    if-eqz v0, :skip_release

    const/4 v1, 0x0

    :rel_loop
    const/4 v2, 0x6

    if-ge v1, v2, :skip_release

    aget v2, v0, v1

    const/4 v3, 0x0

    :try_start_r
    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setMoveButtonStatus(IZ)V
    :try_end_r
    .catch Ljava/lang/Exception; {:try_start_r .. :try_end_r} :catch_r

    :catch_r
    add-int/lit8 v1, v1, 0x1

    goto :rel_loop

    :skip_release
    new-instance v0, Ld2/p$c;

    invoke-direct {v0, p0}, Ld2/p$c;-><init>(Ld2/p;)V

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v1, :skip

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :skip
    return-void
.end method

.method public final K(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Lc2/b;->K(Lorg/json/JSONObject;)V

    # Load config from JSON
    :try_start_0
    const-string v0, "btn_positions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :skip_cfg

    const-string v0, "btn_positions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->v:[[I

    const/4 v2, 0x0

    :cfg_loop
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :skip_cfg

    const/4 v3, 0x6

    if-ge v2, v3, :skip_cfg

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

    goto :cfg_loop

    :skip_cfg

    # Load per-button sizes
    const-string v0, "btn_sizes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :skip_sizes

    const-string v0, "btn_sizes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->y:[D

    const/4 v2, 0x0

    :size_load_loop
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :skip_sizes

    const/4 v3, 0x6

    if-ge v2, v3, :skip_sizes

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :size_load_loop

    :skip_sizes

    # Load per-button opacities
    const-string v0, "btn_opacities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :skip_opa

    const-string v0, "btn_opacities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->C:[D

    const/4 v2, 0x0

    :opa_load_loop
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :skip_opa

    const/4 v3, 0x6

    if-ge v2, v3, :skip_opa

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :opa_load_loop

    :skip_opa
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final M()V
    .registers 8

    invoke-super {p0}, Lc2/b;->M()V

    # Save config to JSON
    :try_start_0
    iget-object v0, p0, Ld2/p;->v:[[I

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :save_cfg_loop
    const/4 v3, 0x6

    if-ge v2, v3, :save_cfg_done

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

    goto :save_cfg_loop

    :save_cfg_done

    # Put positions into config
    iget-object v0, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v2, "btn_positions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    # Save per-button sizes
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Ld2/p;->y:[D

    const/4 v4, 0x0

    :save_size_loop
    const/4 v5, 0x6

    if-ge v4, v5, :save_size_done

    aget-wide v5, v3, v4

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :save_size_loop

    :save_size_done

    # Put sizes into config
    const-string v2, "btn_sizes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    # Save per-button opacities
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Ld2/p;->C:[D

    const/4 v4, 0x0

    :save_opa_loop
    const/4 v5, 0x6

    if-ge v4, v5, :save_opa_done

    aget-wide v5, v3, v4

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :save_opa_loop

    :save_opa_done

    const-string v2, "btn_opacities"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0

    invoke-virtual {p0}, Ld2/p;->savePositions()V

    return-void
.end method

.method public updateButtons()V
    .registers 2

    # Refresh buttons - post everything to UI thread to avoid race
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :skip

    new-instance v0, Ld2/p$b;

    invoke-direct {v0, p0}, Ld2/p$b;-><init>(Ld2/p;)V

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v1, :skip

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :skip
    return-void
.end method

.method public J()V
    .registers 11

    # Find selected button index from mode setting
    iget-object v0, p0, Ld2/p;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld2/p;->o:Li2/b;

    iget-object v1, v1, Li2/b;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x6

    :idx_loop
    if-ge v2, v3, :idx_done

    aget-object v9, v1, v2

    if-eqz v9, :skip_null

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :idx_done

    :skip_null
    add-int/lit8 v2, v2, 0x1

    goto :idx_loop

    :idx_done
    # v2 = selected button index (0-5, or 6 if not found)
    if-lt v2, v3, :check_size_prep

    # Fallback if mode not found
    const/4 v2, 0x0
    const-string v0, "Forward"
    iget-object v1, p0, Ld2/p;->o:Li2/b;
    iput-object v0, v1, Li2/b;->f:Ljava/lang/String;

    :check_size_prep
    # Check if button selection changed
    iget v9, p0, Ld2/p;->B:I

    if-eq v2, v9, :check_size

    # Button changed - sync both sliders to new button's cached size + opacity
    iput v2, p0, Ld2/p;->B:I

    # Sync Size slider from y[v2]
    iget-object v6, p0, Ld2/p;->y:[D

    aget-wide v4, v6, v2

    iget-object v9, p0, Ld2/p;->p:Li2/d;

    iget-object v7, v9, Li2/d;->e:[D

    const/4 v8, 0x0

    aput-wide v4, v7, v8

    # Sync Opacity slider from C[v2]
    iget-object v6, p0, Ld2/p;->C:[D

    aget-wide v4, v6, v2

    iput-wide v4, p0, Ld2/p;->z:D

    iget-object v9, p0, Ld2/p;->q:Li2/d;

    iget-object v7, v9, Li2/d;->e:[D

    aput-wide v4, v7, v8

    goto :done

    :check_size
    # Check if size slider changed for selected button
    iget-object v9, p0, Ld2/p;->p:Li2/d;

    invoke-virtual {v9}, Li2/d;->getCurrentValue()D

    move-result-wide v4

    iget-object v6, p0, Ld2/p;->y:[D

    aget-wide v7, v6, v2

    cmpl-double v9, v4, v7

    if-eqz v9, :check_opacity

    # Size changed for current button - update only it
    aput-wide v4, v6, v2

    invoke-virtual {p0, v2}, Ld2/p;->applyButtonAsync(I)V

    :check_opacity
    # Check if opacity slider changed for current button
    iget-object v9, p0, Ld2/p;->q:Li2/d;

    invoke-virtual {v9}, Li2/d;->getCurrentValue()D

    move-result-wide v4

    iget-object v6, p0, Ld2/p;->C:[D

    aget-wide v7, v6, v2

    cmpl-double v9, v4, v7

    if-eqz v9, :done

    aput-wide v4, v6, v2

    iput-wide v4, p0, Ld2/p;->z:D

    invoke-virtual {p0, v2}, Ld2/p;->applyButtonAsync(I)V

    :done
    return-void
.end method

.method public applyButtonAsync(I)V
    .registers 5

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :skip

    new-instance v1, Ld2/p$d;

    invoke-direct {v1, p0, p1}, Ld2/p$d;-><init>(Ld2/p;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :skip
    return-void
.end method

.method public ensureButtonsVisible()V
    .registers 8

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :done

    iget-object v1, p0, Ld2/p;->u:[Landroid/widget/PopupWindow;

    if-eqz v1, :refresh

    const/4 v2, 0x0

    const/4 v3, 0x6

    :loop
    if-ge v2, v3, :done

    aget-object v4, v1, v2

    if-eqz v4, :refresh

    :try_start_0
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :refresh
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :refresh

    add-int/lit8 v2, v2, 0x1

    goto :loop

    :refresh
    invoke-virtual {p0}, Ld2/p;->updateButtons()V

    :done
    return-void
.end method
