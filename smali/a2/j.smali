.class public final La2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V
    .registers 34

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v15, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    const v0, 0x7f0b003d

    const/4 v14, 0x0

    invoke-virtual {v6, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    const v0, 0x7f0800e2

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageButton;

    const v0, 0x7f0800e3

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    const v0, 0x7f0800e1

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual/range {p4 .. p4}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p4 .. p4}, Lc2/b;->isActive()Z

    move-result v1

    const/16 v17, -0x1

    if-eqz v1, :cond_0

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f08017e

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v3, p4

    invoke-virtual {v3}, Lc2/b;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v15

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    new-instance v1, Lx1/k;

    const/4 v10, 0x1

    invoke-direct {v1, v7, v0, v15, v10}, Lx1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    iput-object v0, v7, Lc2/b;->j:Landroid/widget/TextView;

    .line 2
    invoke-virtual/range {p4 .. p4}, Lc2/b;->isBindable()Z

    move-result v0

    const-string v9, "</font>"

    const-string v5, "\'>"

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v7, Lc2/b;->k:La2/b;

    if-eqz v0, :cond_3

    move-object/from16 v1, p4

    invoke-virtual {v1}, Lc2/b;->isBindActive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, v7, Lc2/b;->k:La2/b;

    if-eqz v0, :cond_4

    iget v1, v0, La2/b;->h:I

    iget v2, v0, La2/b;->i:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz1/p;->getBindPosX(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    invoke-static {v3}, Lz1/p;->getBindPosY(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    :goto_2
    move/from16 v16, v1

    move/from16 v17, v2

    .line 3
    new-instance v0, La2/b;

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v2, v6, v7}, La2/b;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;)V

    move/from16 v1, v16

    move/from16 v2, v17

    iput v1, v0, La2/b;->h:I

    iput v2, v0, La2/b;->i:I

    iput-object v0, v7, Lc2/b;->k:La2/b;

    move-object/from16 v10, p4

    invoke-virtual {v10}, Lc2/b;->isBindActive()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v7}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lz1/p;->isBindGroupVisible(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    :try_start_0
    invoke-virtual {v0}, La2/b;->a()V

    iget-object v1, v0, La2/b;->b:Landroid/view/View;

    iget v2, v0, La2/b;->h:I

    iget v3, v0, La2/b;->i:I

    const/16 v10, 0x11

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    :cond_7
    :goto_3
    const/4 v14, 0x0

    const v0, 0x7f0b0035

    .line 4
    invoke-virtual {v6, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bind: <font color=\'"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lc2/b;->isBindActive()Z

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, La2/e;

    invoke-direct {v10, v7, v1, v15, v4}, La2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz1/p;->getBindGroup(Ljava/lang/String;)I

    move-result v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Group: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41480000    # 12.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, La2/k;

    invoke-direct {v1, v7, v0}, La2/k;-><init>(Lc2/b;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz1/p;->getBindLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    const-string v1, "Label: Default"

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, La2/l;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v7, v0}, La2/l;-><init>(Landroid/content/Context;Lc2/b;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz1/p;->isBindPinned(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, La2/p;

    invoke-direct {v1, v7, v0}, La2/p;-><init>(Lc2/b;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    # Bind opacity setting
    new-instance v0, Landroid/widget/TextView;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v1, v7, Lc2/b;->bindOpacity:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, La2/q;

    invoke-direct {v1, v0, v7}, La2/q;-><init>(Landroid/widget/TextView;Lc2/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    # Bind size setting
    new-instance v0, Landroid/widget/TextView;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v1, v7, Lc2/b;->bindSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, La2/r;

    invoke-direct {v1, v0, v7}, La2/r;-><init>(Landroid/widget/TextView;Lc2/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_9
    move-object/from16 v3, p1

    move-object/from16 v2, p2

    :goto_5
    invoke-virtual/range {p4 .. p4}, Lc2/b;->hasSettings()Z

    move-result v0

    const/4 v14, 0x2

    if-eqz v0, :cond_1a

    .line 5
    iget-object v0, v7, Lc2/b;->l:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "button"

    if-eqz v0, :cond_18

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Li2/c;

    invoke-virtual {v10}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    const-string v1, "text-field"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x4

    goto :goto_8

    :sswitch_1
    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    const/4 v0, 0x3

    goto :goto_8

    :sswitch_2
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v0, 0x2

    goto :goto_8

    :sswitch_3
    const-string v1, "slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    const/4 v0, 0x1

    goto :goto_8

    :sswitch_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    :goto_7
    const/4 v0, -0x1

    :goto_8
    const-string v1, ": <font color=\'"

    if-eqz v0, :cond_17

    const/4 v4, 0x1

    if-eq v0, v4, :cond_15

    if-eq v0, v14, :cond_14

    const/4 v4, 0x3

    if-eq v0, v4, :cond_11

    const/4 v4, 0x4

    if-eq v0, v4, :cond_f

    move-object v7, v5

    move-object/from16 v23, v9

    move-object v5, v11

    move-object v8, v12

    move-object/from16 v25, v13

    move-object v11, v15

    goto/16 :goto_d

    :cond_f
    move-object v4, v10

    check-cast v4, Li2/f;

    const v0, 0x7f0b0045

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    invoke-virtual {v10}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": <font color=\'#9B9B9B\'>"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "empty"

    goto :goto_9

    :cond_10
    invoke-virtual {v4}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0046

    const/4 v14, 0x0

    invoke-virtual {v6, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/LinearLayout;

    const v1, 0x7f0800ec

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 7
    iget-object v2, v4, Li2/f;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v2, La2/j$b;

    invoke-direct {v2, v4, v0, v10}, La2/j$b;-><init>(Li2/f;Landroid/widget/TextView;Li2/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Lb2/d;

    invoke-virtual {v10}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v12

    move-object v12, v0

    move-object v0, v2

    move-object v8, v1

    move-object/from16 v25, v13

    move-object/from16 v13, v22

    move-object/from16 v1, p1

    move-object v7, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v22, v9

    move-object v9, v4

    move-object/from16 v4, v23

    move-object/from16 v26, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lb2/d;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/view/View;)V

    new-instance v0, La2/e;

    const/4 v14, 0x1

    invoke-direct {v0, v8, v9, v7, v14}, La2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iput-object v13, v10, Li2/c;->d:Landroid/widget/LinearLayout;

    move-object/from16 v8, v22

    move-object/from16 v7, v26

    goto :goto_c

    :cond_11
    move-object/from16 v26, v5

    move-object/from16 v22, v9

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    const/4 v14, 0x1

    .line 10
    move-object v0, v10

    check-cast v0, Li2/e;

    const v2, 0x7f0b0044

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v7, v26

    move-object/from16 v8, v22

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_12

    const-string v5, "\u25cf "

    goto :goto_a

    :cond_12
    const-string v5, "\u25cb "

    :goto_a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_b

    :cond_13
    const v1, -0x1

    :goto_b
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, La2/i;

    invoke-direct {v1, v0, v3, v10, v15}, La2/i;-><init>(Li2/e;Landroid/widget/TextView;Li2/c;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iput-object v2, v10, Li2/c;->d:Landroid/widget/LinearLayout;

    :goto_c
    move-object/from16 v23, v8

    move-object v5, v11

    move-object v11, v15

    move-object/from16 v8, v24

    :goto_d
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_14
    move-object v7, v5

    move-object v8, v9

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    const/4 v14, 0x1

    .line 12
    move-object v12, v10

    check-cast v12, Li2/b;

    const v0, 0x7f0b0041

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    const v0, 0x7f0800e6

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0042

    const/4 v5, 0x0

    invoke-virtual {v6, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    const v0, 0x7f0800e7

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/LinearLayout;

    new-instance v18, Lb2/d;

    invoke-virtual {v10}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v22, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lb2/d;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/view/View;)V

    new-instance v0, La2/g;

    move-object v2, v8

    move-object v1, v9

    move-object v9, v0

    move-object v3, v10

    const/4 v4, 0x1

    move-object/from16 v10, v16

    move-object v5, v11

    move-object v11, v12

    move-object/from16 v8, v24

    move-object/from16 v12, p1

    move-object v4, v13

    move-object/from16 v14, v25

    move-object v13, v15

    move-object/from16 v23, v2

    move-object/from16 v2, v21

    move-object v14, v1

    move-object/from16 v27, v15

    move-object v15, v3

    move-object/from16 v16, v18

    invoke-direct/range {v9 .. v16}, La2/g;-><init>(Landroid/widget/LinearLayout;Li2/b;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Li2/c;Lb2/d;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    iput-object v4, v3, Li2/c;->d:Landroid/widget/LinearLayout;

    move-object/from16 v11, v27

    goto/16 :goto_f

    :cond_15
    move-object v7, v5

    move-object/from16 v23, v9

    move-object v3, v10

    move-object v5, v11

    move-object v8, v12

    move-object/from16 v25, v13

    move-object/from16 v27, v15

    const/4 v2, 0x0

    .line 14
    move-object v10, v3

    check-cast v10, Li2/d;

    const v0, 0x7f0b0043

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v4, 0x7f0800e8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v27

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "current"

    invoke-virtual {v10, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0800e9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v12, v13, :cond_16

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/SeekBar;->setMin(I)V

    :cond_16
    const-string v12, "max"

    invoke-virtual {v10, v12}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v12

    const-string v14, "min"

    invoke-virtual {v10, v14}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v14

    sub-double/2addr v12, v14

    const-string v14, "delta"

    invoke-virtual {v10, v14}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v15

    div-double/2addr v12, v15

    double-to-int v12, v12

    invoke-virtual {v9, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v10, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v12

    const-string v14, "min"

    invoke-virtual {v10, v14}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v14

    sub-double/2addr v12, v14

    const-string v14, "delta"

    invoke-virtual {v10, v14}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-int v1, v12

    invoke-virtual {v9, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    new-instance v1, La2/j$a;

    invoke-direct {v1, v10, v4, v3, v11}, La2/j$a;-><init>(Li2/d;Landroid/widget/TextView;Li2/c;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_e

    :cond_17
    move-object v7, v5

    move-object/from16 v23, v9

    move-object v3, v10

    move-object v5, v11

    move-object v8, v12

    move-object/from16 v25, v13

    move-object v11, v15

    const/4 v2, 0x0

    move-object v10, v3

    check-cast v10, Li2/a;

    const v0, 0x7f0b0040

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v3}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v4, v10, Li2/a;->e:Landroid/view/View$OnClickListener;

    .line 16
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_e
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    iput-object v0, v3, Li2/c;->d:Landroid/widget/LinearLayout;

    :goto_f
    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object v12, v8

    move-object v15, v11

    move-object/from16 v9, v23

    move-object/from16 v13, v25

    const/4 v4, 0x0

    const/4 v14, 0x2

    move-object/from16 v8, p5

    move-object v11, v5

    move-object v5, v7

    move-object/from16 v7, p4

    goto/16 :goto_6

    :cond_18
    move-object v0, v7

    move-object v5, v11

    move-object v8, v12

    move-object/from16 v25, v13

    .line 18
    iget-object v2, v0, Lc2/b;->l:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li2/c;

    invoke-virtual {v2}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_19
    new-instance v1, La2/f;

    move-object/from16 v2, p5

    invoke-direct {v1, v5, v0, v2}, La2/f;-><init>(Landroid/widget/LinearLayout;Lc2/b;Landroid/widget/LinearLayout;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    :cond_1a
    move-object v0, v7

    move-object v2, v8

    move-object v5, v11

    move-object v8, v12

    move-object/from16 v25, v13

    :goto_10
    invoke-virtual/range {p4 .. p4}, Lc2/b;->hasSettings()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual/range {p4 .. p4}, Lc2/b;->isBindable()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_12

    :cond_1c
    :goto_11
    new-instance v1, Lx1/k;

    const/4 v3, 0x2

    invoke-direct {v1, v5, v0, v2, v3}, Lx1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_12
    move-object/from16 v3, p4

    iget-boolean v3, v3, Lc2/b;->e:Z

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1d
    move-object/from16 v1, v25

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p4 .. p4}, Lc2/b;->I()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x521dd8ce -> :sswitch_4
        -0x359f871f -> :sswitch_3
        0x3339a3 -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x2cbfa45a -> :sswitch_0
    .end sparse-switch
.end method
