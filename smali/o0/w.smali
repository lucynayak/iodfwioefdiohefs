.class public final Lo0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lo0/q0;

.field public c:Lo0/q0;

.field public d:Lo0/q0;

.field public e:Lo0/q0;

.field public f:Lo0/q0;

.field public g:Lo0/q0;

.field public final h:Lo0/y;

.field public i:I

.field public j:Landroid/graphics/Typeface;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo0/w;->i:I

    iput-object p1, p0, Lo0/w;->a:Landroid/widget/TextView;

    new-instance v0, Lo0/y;

    invoke-direct {v0, p1}, Lo0/y;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lo0/w;->h:Lo0/y;

    return-void
.end method

.method public static d(Landroid/content/Context;Lo0/i;I)Lo0/q0;
    .registers 3

    invoke-virtual {p1, p0, p2}, Lo0/i;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lo0/q0;

    invoke-direct {p1}, Lo0/q0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lo0/q0;->d:Z

    iput-object p0, p1, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lo0/q0;)V
    .registers 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lo0/i;->p(Landroid/graphics/drawable/Drawable;Lo0/q0;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .registers 6

    iget-object v0, p0, Lo0/w;->b:Lo0/q0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo0/w;->c:Lo0/q0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo0/w;->d:Lo0/q0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo0/w;->e:Lo0/q0;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, Lo0/w;->b:Lo0/q0;

    invoke-virtual {p0, v3, v4}, Lo0/w;->a(Landroid/graphics/drawable/Drawable;Lo0/q0;)V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Lo0/w;->c:Lo0/q0;

    invoke-virtual {p0, v3, v4}, Lo0/w;->a(Landroid/graphics/drawable/Drawable;Lo0/q0;)V

    aget-object v3, v0, v1

    iget-object v4, p0, Lo0/w;->d:Lo0/q0;

    invoke-virtual {p0, v3, v4}, Lo0/w;->a(Landroid/graphics/drawable/Drawable;Lo0/q0;)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iget-object v3, p0, Lo0/w;->e:Lo0/q0;

    invoke-virtual {p0, v0, v3}, Lo0/w;->a(Landroid/graphics/drawable/Drawable;Lo0/q0;)V

    :cond_1
    iget-object v0, p0, Lo0/w;->f:Lo0/q0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo0/w;->g:Lo0/q0;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Lo0/w;->f:Lo0/q0;

    invoke-virtual {p0, v2, v3}, Lo0/w;->a(Landroid/graphics/drawable/Drawable;Lo0/q0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Lo0/w;->g:Lo0/q0;

    invoke-virtual {p0, v0, v1}, Lo0/w;->a(Landroid/graphics/drawable/Drawable;Lo0/q0;)V

    :cond_3
    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lo0/w;->h:Lo0/y;

    invoke-virtual {v0}, Lo0/y;->a()V

    return-void
.end method

.method public final e()Z
    .registers 3

    iget-object v0, p0, Lo0/w;->h:Lo0/y;

    invoke-virtual {v0}, Lo0/y;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lo0/y;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .registers 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lo0/i;->g()Lo0/i;

    move-result-object v4

    sget-object v5, La3/r0;->n:[I

    invoke-static {v3, v1, v5, v2}, Lo0/s0;->n(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lo0/s0;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lo0/s0;->k(II)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Lo0/s0;->m(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5, v9, v6}, Lo0/s0;->k(II)I

    move-result v10

    invoke-static {v3, v4, v10}, Lo0/w;->d(Landroid/content/Context;Lo0/i;I)Lo0/q0;

    move-result-object v10

    iput-object v10, v0, Lo0/w;->b:Lo0/q0;

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lo0/s0;->m(I)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v5, v10, v6}, Lo0/s0;->k(II)I

    move-result v11

    invoke-static {v3, v4, v11}, Lo0/w;->d(Landroid/content/Context;Lo0/i;I)Lo0/q0;

    move-result-object v11

    iput-object v11, v0, Lo0/w;->c:Lo0/q0;

    :cond_1
    const/4 v11, 0x4

    invoke-virtual {v5, v11}, Lo0/s0;->m(I)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v5, v11, v6}, Lo0/s0;->k(II)I

    move-result v12

    invoke-static {v3, v4, v12}, Lo0/w;->d(Landroid/content/Context;Lo0/i;I)Lo0/q0;

    move-result-object v12

    iput-object v12, v0, Lo0/w;->d:Lo0/q0;

    :cond_2
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Lo0/s0;->m(I)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v5, v12, v6}, Lo0/s0;->k(II)I

    move-result v13

    invoke-static {v3, v4, v13}, Lo0/w;->d(Landroid/content/Context;Lo0/i;I)Lo0/q0;

    move-result-object v13

    iput-object v13, v0, Lo0/w;->e:Lo0/q0;

    :cond_3
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v14, 0x5

    invoke-virtual {v5, v14}, Lo0/s0;->m(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v5, v14, v6}, Lo0/s0;->k(II)I

    move-result v15

    invoke-static {v3, v4, v15}, Lo0/w;->d(Landroid/content/Context;Lo0/i;I)Lo0/q0;

    move-result-object v15

    iput-object v15, v0, Lo0/w;->f:Lo0/q0;

    :cond_4
    const/4 v15, 0x6

    invoke-virtual {v5, v15}, Lo0/s0;->m(I)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v5, v15, v6}, Lo0/s0;->k(II)I

    move-result v10

    invoke-static {v3, v4, v10}, Lo0/w;->d(Landroid/content/Context;Lo0/i;I)Lo0/q0;

    move-result-object v4

    iput-object v4, v0, Lo0/w;->g:Lo0/q0;

    :cond_5
    invoke-virtual {v5}, Lo0/s0;->o()V

    iget-object v4, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v5, 0x17

    const/16 v10, 0xc

    const/16 v17, 0x0

    if-eq v8, v7, :cond_b

    sget-object v15, La3/r0;->C:[I

    .line 1
    new-instance v12, Lo0/s0;

    invoke-virtual {v3, v8, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-direct {v12, v3, v8}, Lo0/s0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v4, :cond_6

    .line 2
    invoke-virtual {v12, v10}, Lo0/s0;->m(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v12, v10, v6}, Lo0/s0;->a(IZ)Z

    move-result v8

    const/4 v15, 0x1

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v0, v3, v12}, Lo0/w;->l(Landroid/content/Context;Lo0/s0;)V

    if-ge v13, v5, :cond_9

    invoke-virtual {v12, v9}, Lo0/s0;->m(I)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v12, v9}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    goto :goto_1

    :cond_7
    move-object/from16 v18, v17

    :goto_1
    invoke-virtual {v12, v11}, Lo0/s0;->m(I)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-virtual {v12, v11}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    goto :goto_2

    :cond_8
    move-object/from16 v19, v17

    :goto_2
    invoke-virtual {v12, v14}, Lo0/s0;->m(I)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-virtual {v12, v14}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    goto :goto_3

    :cond_9
    move-object/from16 v18, v17

    move-object/from16 v19, v18

    :cond_a
    :goto_3
    invoke-virtual {v12}, Lo0/s0;->o()V

    move-object/from16 v12, v17

    move-object/from16 v17, v18

    goto :goto_4

    :cond_b
    move-object/from16 v12, v17

    move-object/from16 v19, v12

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_4
    sget-object v7, La3/r0;->C:[I

    .line 3
    new-instance v14, Lo0/s0;

    invoke-virtual {v3, v1, v7, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-direct {v14, v3, v7}, Lo0/s0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v4, :cond_c

    .line 4
    invoke-virtual {v14, v10}, Lo0/s0;->m(I)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v14, v10, v6}, Lo0/s0;->a(IZ)Z

    move-result v8

    const/4 v15, 0x1

    :cond_c
    if-ge v13, v5, :cond_f

    invoke-virtual {v14, v9}, Lo0/s0;->m(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v14, v9}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    :cond_d
    invoke-virtual {v14, v11}, Lo0/s0;->m(I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v14, v11}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    :cond_e
    const/4 v5, 0x5

    invoke-virtual {v14, v5}, Lo0/s0;->m(I)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v14, v5}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    :cond_f
    move-object/from16 v5, v17

    move-object/from16 v7, v19

    const/16 v10, 0x1c

    if-lt v13, v10, :cond_10

    invoke-virtual {v14, v6}, Lo0/s0;->m(I)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, -0x1

    invoke-virtual {v14, v6, v10}, Lo0/s0;->e(II)I

    move-result v13

    if-nez v13, :cond_10

    iget-object v10, v0, Lo0/w;->a:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v10, v6, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_10
    invoke-virtual {v0, v3, v14}, Lo0/w;->l(Landroid/content/Context;Lo0/s0;)V

    invoke-virtual {v14}, Lo0/s0;->o()V

    if-eqz v5, :cond_11

    iget-object v10, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    if-eqz v7, :cond_12

    iget-object v5, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    if-eqz v12, :cond_13

    iget-object v5, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    if-nez v4, :cond_14

    if-eqz v15, :cond_14

    invoke-virtual {v0, v8}, Lo0/w;->h(Z)V

    :cond_14
    iget-object v4, v0, Lo0/w;->j:Landroid/graphics/Typeface;

    if-eqz v4, :cond_15

    iget-object v5, v0, Lo0/w;->a:Landroid/widget/TextView;

    iget v7, v0, Lo0/w;->i:I

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_15
    iget-object v4, v0, Lo0/w;->h:Lo0/y;

    .line 5
    iget-object v5, v4, Lo0/y;->j:Landroid/content/Context;

    sget-object v7, La3/r0;->o:[I

    invoke-virtual {v5, v1, v7, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Lo0/y;->a:I

    :cond_16
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v5, :cond_17

    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    goto :goto_5

    :cond_17
    const/high16 v5, -0x40800000    # -1.0f

    :goto_5
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/4 v8, 0x1

    goto :goto_6

    :cond_18
    const/4 v8, 0x1

    const/high16 v10, -0x40800000    # -1.0f

    :goto_6
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    goto :goto_7

    :cond_19
    const/high16 v11, -0x40800000    # -1.0f

    :goto_7
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v2, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-lez v8, :cond_1c

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v9

    new-array v12, v9, [I

    if-lez v9, :cond_1b

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v9, :cond_1a

    const/4 v14, -0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    aput v15, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_1a
    invoke-virtual {v4, v12}, Lo0/y;->b([I)[I

    move-result-object v9

    iput-object v9, v4, Lo0/y;->f:[I

    invoke-virtual {v4}, Lo0/y;->h()Z

    .line 7
    :cond_1b
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Lo0/y;->i()Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, v4, Lo0/y;->a:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_22

    iget-boolean v2, v4, Lo0/y;->g:Z

    if-nez v2, :cond_20

    iget-object v2, v4, Lo0/y;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    cmpl-float v8, v10, v7

    if-nez v8, :cond_1d

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v9, 0x2

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    goto :goto_9

    :cond_1d
    const/4 v9, 0x2

    :goto_9
    cmpl-float v8, v11, v7

    if-nez v8, :cond_1e

    const/high16 v8, 0x42e00000    # 112.0f

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    :cond_1e
    cmpl-float v2, v5, v7

    if-nez v2, :cond_1f

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_1f
    invoke-virtual {v4, v10, v11, v5}, Lo0/y;->j(FFF)V

    :cond_20
    invoke-virtual {v4}, Lo0/y;->g()Z

    goto :goto_a

    :cond_21
    iput v6, v4, Lo0/y;->a:I

    .line 8
    :cond_22
    :goto_a
    sget-boolean v2, Lg0/b;->a:Z

    if-eqz v2, :cond_24

    iget-object v2, v0, Lo0/w;->h:Lo0/y;

    .line 9
    iget v4, v2, Lo0/y;->a:I

    if-eqz v4, :cond_24

    .line 10
    iget-object v2, v2, Lo0/y;->f:[I

    .line 11
    array-length v4, v2

    if-lez v4, :cond_24

    iget-object v4, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_23

    iget-object v2, v0, Lo0/w;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lo0/w;->h:Lo0/y;

    .line 12
    iget v4, v4, Lo0/y;->d:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 13
    iget-object v5, v0, Lo0/w;->h:Lo0/y;

    .line 14
    iget v5, v5, Lo0/y;->e:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 15
    iget-object v7, v0, Lo0/w;->h:Lo0/y;

    .line 16
    iget v7, v7, Lo0/y;->c:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 17
    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_b

    :cond_23
    iget-object v4, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_24
    :goto_b
    sget-object v2, La3/r0;->o:[I

    .line 18
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v2, v3, :cond_25

    .line 21
    iget-object v1, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lg0/o;->b(Landroid/widget/TextView;I)V

    :cond_25
    if-eq v4, v3, :cond_26

    iget-object v1, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lg0/o;->c(Landroid/widget/TextView;I)V

    :cond_26
    if-eq v5, v3, :cond_27

    iget-object v1, v0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lg0/o;->d(Landroid/widget/TextView;I)V

    :cond_27
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .registers 6

    sget-object v0, La3/r0;->C:[I

    .line 1
    new-instance v1, Lo0/s0;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lo0/s0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 p2, 0xc

    .line 2
    invoke-virtual {v1, p2}, Lo0/s0;->m(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2, v2}, Lo0/s0;->a(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lo0/w;->h(Z)V

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_1

    const/4 p2, 0x3

    invoke-virtual {v1, p2}, Lo0/s0;->m(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p2}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {v1, v2}, Lo0/s0;->m(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    invoke-virtual {v1, v2, p2}, Lo0/s0;->e(II)I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lo0/w;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    invoke-virtual {p0, p1, v1}, Lo0/w;->l(Landroid/content/Context;Lo0/s0;)V

    invoke-virtual {v1}, Lo0/s0;->o()V

    iget-object p1, p0, Lo0/w;->j:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lo0/w;->a:Landroid/widget/TextView;

    iget v0, p0, Lo0/w;->i:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final h(Z)V
    .registers 3

    iget-object v0, p0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method public final i(IIII)V
    .registers 7

    iget-object v0, p0, Lo0/w;->h:Lo0/y;

    invoke-virtual {v0}, Lo0/y;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo0/y;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lo0/y;->j(FFF)V

    invoke-virtual {v0}, Lo0/y;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lo0/y;->a()V

    :cond_0
    return-void
.end method

.method public final j([II)V
    .registers 9

    iget-object v0, p0, Lo0/w;->h:Lo0/y;

    .line 1
    invoke-virtual {v0}, Lo0/y;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    new-array v3, v1, [I

    if-nez p2, :cond_0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lo0/y;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Lo0/y;->b([I)[I

    move-result-object p2

    iput-object p2, v0, Lo0/y;->f:[I

    invoke-virtual {v0}, Lo0/y;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "None of the preset sizes is valid: "

    .line 2
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    iput-boolean v2, v0, Lo0/y;->g:Z

    :goto_2
    invoke-virtual {v0}, Lo0/y;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lo0/y;->a()V

    :cond_4
    return-void
.end method

.method public final k(I)V
    .registers 6

    iget-object v0, p0, Lo0/w;->h:Lo0/y;

    .line 1
    invoke-virtual {v0}, Lo0/y;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lo0/y;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, v2}, Lo0/y;->j(FFF)V

    invoke-virtual {v0}, Lo0/y;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lo0/y;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    .line 2
    invoke-static {v1, p1}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput p1, v0, Lo0/y;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lo0/y;->d:F

    iput v1, v0, Lo0/y;->e:F

    iput v1, v0, Lo0/y;->c:F

    new-array v1, p1, [I

    iput-object v1, v0, Lo0/y;->f:[I

    iput-boolean p1, v0, Lo0/y;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Landroid/content/Context;Lo0/s0;)V
    .registers 9

    iget v0, p0, Lo0/w;->i:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lo0/s0;->i(II)I

    move-result v0

    iput v0, p0, Lo0/w;->i:I

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lo0/s0;->m(I)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-nez v2, :cond_5

    invoke-virtual {p2, v4}, Lo0/s0;->m(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2, v3}, Lo0/s0;->m(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v5, p0, Lo0/w;->k:Z

    invoke-virtual {p2, v3, v3}, Lo0/s0;->i(II)I

    move-result p1

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Lo0/w;->j:Landroid/graphics/Typeface;

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lo0/w;->j:Landroid/graphics/Typeface;

    invoke-virtual {p2, v4}, Lo0/s0;->m(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0xb

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lo0/w;->a:Landroid/widget/TextView;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lo0/w$a;

    invoke-direct {v1, p0, p1}, Lo0/w$a;-><init>(Lo0/w;Ljava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Lo0/w;->i:I

    invoke-virtual {p2, v0, p1, v1}, Lo0/s0;->h(IILv/e;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lo0/w;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lo0/w;->k:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    :cond_8
    :goto_4
    iget-object p1, p0, Lo0/w;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_9

    .line 1
    iget-object p1, p2, Lo0/s0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2
    iget p2, p0, Lo0/w;->i:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lo0/w;->j:Landroid/graphics/Typeface;

    :cond_9
    return-void
.end method
