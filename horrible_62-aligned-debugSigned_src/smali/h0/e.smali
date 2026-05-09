.class public final Lh0/e;
.super Lh0/o;
.source "SourceFile"


# instance fields
.field public final d:Landroid/support/v7/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p1, p2}, Lh0/e;->d(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lh0/o;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroid/support/v7/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroid/support/v7/app/AlertController;-><init>(Landroid/content/Context;Lh0/o;Landroid/view/Window;)V

    iput-object p1, p0, Lh0/e;->d:Landroid/support/v7/app/AlertController;

    return-void
.end method

.method public static d(Landroid/content/Context;I)I
    .registers 4

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f030025

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 18

    invoke-super/range {p0 .. p1}, Lh0/o;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lh0/e;->d:Landroid/support/v7/app/AlertController;

    .line 1
    iget v2, v1, Landroid/support/v7/app/AlertController;->D:I

    iget v2, v1, Landroid/support/v7/app/AlertController;->C:I

    .line 2
    iget-object v3, v1, Landroid/support/v7/app/AlertController;->b:Lh0/o;

    invoke-virtual {v3, v2}, Lh0/o;->setContentView(I)V

    .line 3
    iget-object v2, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v3, 0x7f0800fe

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080168

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080082

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f08006e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f080086

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 4
    iget-object v9, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const/high16 v10, 0x20000

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setFlags(II)V

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, v5, v6}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v1, v7, v8}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 6
    iget-object v6, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v7, 0x7f08011f

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/NestedScrollView;

    iput-object v6, v1, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v6, 0x102000b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Landroid/support/v7/app/AlertController;->y:Landroid/widget/TextView;

    const/4 v8, -0x1

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    iget-object v10, v1, Landroid/support/v7/app/AlertController;->y:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v10, v1, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v11, v1, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v11, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v6, 0x1020019

    .line 7
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v1, Landroid/support/v7/app/AlertController;->h:Landroid/widget/Button;

    iget-object v10, v1, Landroid/support/v7/app/AlertController;->J:Landroid/support/v7/app/AlertController$a;

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->i:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->k:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->h:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    iget-object v6, v1, Landroid/support/v7/app/AlertController;->h:Landroid/widget/Button;

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->i:Ljava/lang/CharSequence;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    iget v12, v1, Landroid/support/v7/app/AlertController;->d:I

    invoke-virtual {v6, v7, v7, v12, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->h:Landroid/widget/Button;

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v12, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v6, v1, Landroid/support/v7/app/AlertController;->h:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x1

    :goto_1
    const v12, 0x102001a

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v1, Landroid/support/v7/app/AlertController;->l:Landroid/widget/Button;

    iget-object v13, v1, Landroid/support/v7/app/AlertController;->J:Landroid/support/v7/app/AlertController$a;

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->m:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->o:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_4

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->l:Landroid/widget/Button;

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v12, v1, Landroid/support/v7/app/AlertController;->l:Landroid/widget/Button;

    iget-object v13, v1, Landroid/support/v7/app/AlertController;->m:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_5

    iget v13, v1, Landroid/support/v7/app/AlertController;->d:I

    invoke-virtual {v12, v7, v7, v13, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->l:Landroid/widget/Button;

    iget-object v13, v1, Landroid/support/v7/app/AlertController;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v13, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v12, v1, Landroid/support/v7/app/AlertController;->l:Landroid/widget/Button;

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v6, v6, 0x2

    :goto_2
    const v12, 0x102001b

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v1, Landroid/support/v7/app/AlertController;->p:Landroid/widget/Button;

    iget-object v13, v1, Landroid/support/v7/app/AlertController;->J:Landroid/support/v7/app/AlertController$a;

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->q:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->s:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_6

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->p:Landroid/widget/Button;

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v12, v1, Landroid/support/v7/app/AlertController;->p:Landroid/widget/Button;

    iget-object v13, v1, Landroid/support/v7/app/AlertController;->q:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_7

    iget v13, v1, Landroid/support/v7/app/AlertController;->d:I

    invoke-virtual {v12, v7, v7, v13, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->h:Landroid/widget/Button;

    iget-object v13, v1, Landroid/support/v7/app/AlertController;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v13, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v12, v1, Landroid/support/v7/app/AlertController;->p:Landroid/widget/Button;

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v6, v6, 0x4

    :goto_3
    iget-object v12, v1, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    .line 8
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v14, 0x7f030023

    invoke-virtual {v12, v14, v13, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v12, v13, Landroid/util/TypedValue;->data:I

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x2

    if-eqz v12, :cond_b

    if-ne v6, v11, :cond_9

    .line 9
    iget-object v12, v1, Landroid/support/v7/app/AlertController;->h:Landroid/widget/Button;

    goto :goto_5

    :cond_9
    if-ne v6, v13, :cond_a

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->l:Landroid/widget/Button;

    goto :goto_5

    :cond_a
    const/4 v12, 0x4

    if-ne v6, v12, :cond_b

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->p:Landroid/widget/Button;

    :goto_5
    invoke-virtual {v1, v12}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    :cond_b
    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_d

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_d
    iget-object v6, v1, Landroid/support/v7/app/AlertController;->z:Landroid/view/View;

    const v12, 0x7f080165

    if-eqz v6, :cond_e

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v6, v8, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v14, v1, Landroid/support/v7/app/AlertController;->z:Landroid/view/View;

    invoke-virtual {v3, v14, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v6, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_7

    :cond_e
    iget-object v6, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v14, 0x1020006

    invoke-virtual {v6, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v11

    if-eqz v6, :cond_11

    iget-boolean v6, v1, Landroid/support/v7/app/AlertController;->H:Z

    if-eqz v6, :cond_11

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v12, 0x7f08005b

    invoke-virtual {v6, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Landroid/support/v7/app/AlertController;->x:Landroid/widget/TextView;

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, v1, Landroid/support/v7/app/AlertController;->u:I

    if-eqz v6, :cond_f

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_f
    iget-object v6, v1, Landroid/support/v7/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_10

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_10
    iget-object v6, v1, Landroid/support/v7/app/AlertController;->x:Landroid/widget/TextView;

    iget-object v12, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    iget-object v14, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    iget-object v15, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    iget-object v10, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v6, v12, v14, v15, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_11
    iget-object v6, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v6, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v6, v3

    :goto_7
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_12

    const/4 v2, 0x1

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :goto_9
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_13

    const/4 v6, 0x1

    goto :goto_a

    :cond_13
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_14

    const/4 v5, 0x1

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_15

    const v9, 0x7f08015b

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    if-eqz v6, :cond_18

    iget-object v9, v1, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v9, :cond_16

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_16
    iget-object v9, v1, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v9, :cond_17

    const v9, 0x7f080164

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_c

    :cond_17
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_19

    goto :goto_d

    :cond_18
    const v3, 0x7f08015c

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_19

    :goto_d
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v3, v1, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    instance-of v9, v3, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v9, :cond_1d

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_1a

    if-nez v6, :cond_1d

    .line 12
    :cond_1a
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    if-eqz v6, :cond_1b

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    goto :goto_e

    :cond_1b
    iget v10, v3, Landroid/support/v7/app/AlertController$RecycleListView;->b:I

    :goto_e
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    if-eqz v5, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    goto :goto_f

    :cond_1c
    iget v14, v3, Landroid/support/v7/app/AlertController$RecycleListView;->c:I

    :goto_f
    invoke-virtual {v3, v9, v10, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    :cond_1d
    if-nez v2, :cond_27

    .line 13
    iget-object v2, v1, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v2, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v2, v1, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    :goto_10
    if-eqz v2, :cond_27

    if-eqz v5, :cond_1f

    const/4 v7, 0x2

    :cond_1f
    or-int v3, v6, v7

    .line 14
    iget-object v5, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x7f08011e

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v1, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v7, 0x7f08011d

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v7, v9, :cond_21

    invoke-static {v2, v3}, Ld0/l;->l(Landroid/view/View;I)V

    if-eqz v5, :cond_20

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_20
    if-eqz v6, :cond_27

    goto :goto_12

    :cond_21
    if-eqz v5, :cond_22

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_22

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v5, 0x0

    :cond_22
    if-eqz v6, :cond_23

    and-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_23

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v10, 0x0

    goto :goto_11

    :cond_23
    move-object v10, v6

    :goto_11
    if-nez v5, :cond_24

    if-eqz v10, :cond_27

    :cond_24
    iget-object v2, v1, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v2, :cond_25

    new-instance v3, Lh0/c;

    invoke-direct {v3, v5, v10}, Lh0/c;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v2, v1, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    new-instance v3, Lh0/d;

    invoke-direct {v3, v1, v5, v10}, Lh0/d;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_25
    if-eqz v5, :cond_26

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_26
    if-eqz v10, :cond_27

    move-object v6, v10

    :goto_12
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    :cond_27
    :goto_13
    iget-object v2, v1, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v2, :cond_28

    iget-object v3, v1, Landroid/support/v7/app/AlertController;->A:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_28

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v1, Landroid/support/v7/app/AlertController;->B:I

    if-le v1, v8, :cond_28

    invoke-virtual {v2, v1, v11}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_28
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lh0/e;->d:Landroid/support/v7/app/AlertController;

    .line 1
    iget-object v0, v0, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->o(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lh0/e;->d:Landroid/support/v7/app/AlertController;

    .line 1
    iget-object v0, v0, Landroid/support/v7/app/AlertController;->t:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->o(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1}, Lh0/o;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh0/e;->d:Landroid/support/v7/app/AlertController;

    iput-object p1, v0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
