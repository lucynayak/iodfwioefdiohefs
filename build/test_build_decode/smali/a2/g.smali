.class public final synthetic La2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Li2/b;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Li2/c;

.field public final synthetic h:Lb2/d;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Li2/b;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Li2/c;Lb2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/g;->b:Landroid/widget/LinearLayout;

    iput-object p2, p0, La2/g;->c:Li2/b;

    iput-object p3, p0, La2/g;->d:Landroid/content/Context;

    iput-object p4, p0, La2/g;->e:Ljava/lang/String;

    iput-object p5, p0, La2/g;->f:Landroid/widget/TextView;

    iput-object p6, p0, La2/g;->g:Li2/c;

    iput-object p7, p0, La2/g;->h:Lb2/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, La2/g;->b:Landroid/widget/LinearLayout;

    iget-object v10, v0, La2/g;->c:Li2/b;

    iget-object v11, v0, La2/g;->d:Landroid/content/Context;

    iget-object v12, v0, La2/g;->e:Ljava/lang/String;

    iget-object v13, v0, La2/g;->f:Landroid/widget/TextView;

    iget-object v14, v0, La2/g;->g:Li2/c;

    iget-object v15, v0, La2/g;->h:Lb2/d;

    .line 1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v9, v10, Li2/b;->e:[Ljava/lang/String;

    .line 3
    array-length v8, v9

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v4, v9, v7

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    const/high16 v5, 0x41480000    # 12.5f

    invoke-virtual {v6, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide/high16 v16, 0x4004000000000000L    # 2.5

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v7

    move/from16 p1, v8

    float-to-double v7, v3

    mul-double v7, v7, v16

    double-to-int v3, v7

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, La2/h;

    move-object v2, v8

    move-object v3, v10

    move-object v5, v13

    move-object v7, v6

    move-object v6, v14

    move-object/from16 v17, v7

    move/from16 v16, v18

    move-object v7, v12

    move/from16 v18, p1

    move-object v0, v8

    move-object/from16 v8, v17

    move-object/from16 v19, v9

    move-object v9, v15

    invoke-direct/range {v2 .. v9}, La2/h;-><init>(Li2/b;Ljava/lang/String;Landroid/widget/TextView;Li2/c;Ljava/lang/String;Landroid/widget/TextView;Lb2/d;)V

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v8, v18

    move-object/from16 v9, v19

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v15}, Lb2/d;->a()V

    return-void
.end method
