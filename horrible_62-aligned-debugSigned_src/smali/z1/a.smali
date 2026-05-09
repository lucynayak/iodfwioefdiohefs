.class public final Lz1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;

.field public c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz1/a;->a:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Ly1/b;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz1/a;->c:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-object p1, p0, Lz1/a;->b:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lz1/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz1/a;->b:Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lz1/a;->c:Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1}, Lc2/b;->B()V

    invoke-virtual {v1}, Lc2/b;->M()V

    .line 3
    iget-object v2, v1, Lc2/b;->b:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    if-nez p2, :cond_1

    .line 5
    iget-object v2, v1, Lc2/b;->b:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz1/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    :cond_1
    iget-object v1, v1, Lc2/b;->b:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lz1/a;->c:Lorg/json/JSONObject;

    const-string v0, "modules"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "color_r"

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->e:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "color_g"

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->f:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "color_b"

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->g:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "bind_text_size"

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->i:F

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "bind_size"

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->j:F

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "menu_position"

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "bind_shape"

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->bindShape:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p0, Lz1/a;->c:Lorg/json/JSONObject;

    const-string v0, "settings"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Ljava/io/FileWriter;

    iget-object p2, p0, Lz1/a;->b:Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iget-object p2, p0, Lz1/a;->c:Lorg/json/JSONObject;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    .line 9
    sget-object p1, Lz1/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lz1/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lz1/a;->a:Ljava/lang/String;

    sget-object v1, Lz1/b;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lz1/b;->a(Ljava/lang/String;)Lz1/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .registers 30

    move-object/from16 v1, p0

    const-string v2, "current"

    const-string v3, "y"

    const-string v4, "x"

    const-string v5, "settings"

    const-string v6, "max"

    const-string v7, "modules"

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/b;

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, v1, Lz1/a;->c:Lorg/json/JSONObject;

    if-eqz v10, :cond_19

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-nez v10, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v10, v1, Lz1/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_b

    if-lez v10, :cond_18

    const/4 v11, 0x0

    :goto_1
    :try_start_1
    iget-object v12, v1, Lz1/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    const-string v13, "name"

    if-ge v11, v12, :cond_2

    :try_start_2
    iget-object v12, v1, Lz1/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v9, v1, Lz1/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_16

    :try_start_3
    invoke-virtual {v0, v9}, Lc2/b;->K(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lc2/b;->isToggleable()Z

    move-result v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8

    const-string v12, "active"

    if-eqz v11, :cond_4

    :try_start_4
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v11

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eq v11, v15, :cond_4

    invoke-virtual {v0}, Lc2/b;->R()V

    .line 3
    iget-object v11, v0, Lc2/b;->j:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 4
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v15

    if-eqz v15, :cond_3

    sget-object v15, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    goto :goto_2

    :cond_3
    const/4 v15, -0x1

    :goto_2
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_b

    :cond_4
    :try_start_5
    invoke-virtual {v0}, Lc2/b;->hasSettings()Z

    move-result v11
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_8

    const-string v15, "</font>"

    const-string v14, "\'>"

    if-eqz v11, :cond_13

    :try_start_6
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    .line 5
    :try_start_7
    iget-object v10, v0, Lc2/b;->l:Ljava/util/ArrayList;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    .line 6
    :try_start_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    move-object/from16 v17, v5

    :try_start_9
    move-object/from16 v5, v16

    check-cast v5, Li2/c;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v16, v7

    :try_start_a
    invoke-virtual {v5}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v7
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v18, v8

    :try_start_b
    const-string v8, "button"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_12

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    move-object/from16 v19, v10

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v20, v11

    invoke-virtual {v5}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    move-object/from16 v21, v13

    sparse-switch v11, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    :try_start_c
    const-string v11, "text-field"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x3

    goto :goto_6

    :sswitch_1
    const-string v11, "state"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_6

    :sswitch_2
    const-string v11, "mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    goto :goto_6

    :sswitch_3
    const-string v11, "slider"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :cond_5
    :goto_5
    const/4 v10, -0x1

    :goto_6
    const-string v11, ": <font color=\'"

    const-string v13, "value"

    if-eqz v10, :cond_e

    const/4 v1, 0x1

    if-eq v10, v1, :cond_d

    const/4 v1, 0x2

    if-eq v10, v1, :cond_a

    const/4 v1, 0x3

    if-eq v10, v1, :cond_7

    :cond_6
    :goto_7
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v12

    goto/16 :goto_a

    :cond_7
    :try_start_d
    move-object v1, v5

    check-cast v1, Li2/f;

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    iput-object v8, v1, Li2/f;->f:Ljava/lang/String;

    iget-object v10, v1, Li2/f;->g:Li2/f$a;

    if-eqz v10, :cond_8

    invoke-interface {v10, v8}, Li2/f$a;->a(Ljava/lang/String;)V

    .line 8
    :cond_8
    iget-object v8, v5, Li2/c;->d:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    const/4 v10, 0x0

    .line 9
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": <font color=\'#9B9B9B\'>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v1, "empty"

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    move-object v1, v5

    check-cast v1, Li2/d;

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v22

    invoke-virtual {v1, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v24
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2

    const-string v10, "min"

    cmpl-double v26, v22, v24

    if-lez v26, :cond_b

    :try_start_e
    invoke-virtual {v1, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v22

    move-object/from16 v24, v4

    move-wide/from16 v27, v22

    move-object/from16 v23, v3

    move-object/from16 v22, v12

    move-wide/from16 v3, v27

    goto :goto_9

    :cond_b
    move-object/from16 v22, v12

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    :try_start_f
    invoke-virtual {v1, v10}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 10
    :goto_9
    iget-object v8, v1, Li2/d;->e:[D

    const/4 v12, 0x0

    aput-wide v3, v8, v12

    iget-object v8, v1, Li2/d;->f:Li2/d$a;

    if-eqz v8, :cond_c

    invoke-interface {v8, v3, v4}, Li2/d$a;->a(D)V

    .line 11
    :cond_c
    iget-object v3, v5, Li2/c;->d:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_11

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "</font> <font color=\'#282828\'>["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "]</font>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v3, v5, Li2/c;->d:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    .line 14
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v10

    const-string v4, "delta"

    invoke-virtual {v1, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v1, v10

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_a

    :cond_d
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v12

    move-object v1, v5

    check-cast v1, Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v1, v3, :cond_11

    .line 15
    iget-object v1, v5, Li2/c;->d:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_11

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto/16 :goto_a

    :cond_e
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v12

    move-object v1, v5

    check-cast v1, Li2/b;

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    iput-object v3, v1, Li2/b;->f:Ljava/lang/String;

    iget-object v4, v1, Li2/b;->g:Li2/b$a;

    if-eqz v4, :cond_f

    invoke-interface {v4, v3}, Li2/b$a;->a(Ljava/lang/String;)V

    .line 18
    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    iget-object v3, v5, Li2/c;->d:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_11

    const/4 v4, 0x0

    .line 20
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_10
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    :cond_11
    :goto_a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    goto/16 :goto_4

    :cond_12
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move-object/from16 v1, p0

    move-object/from16 v7, v16

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_f

    :catch_3
    move-exception v0

    goto/16 :goto_e

    :catch_4
    move-exception v0

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    :goto_b
    move-object/from16 v3, p0

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    goto/16 :goto_13

    :cond_13
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move-object/from16 v22, v12

    :try_start_10
    invoke-virtual {v0}, Lc2/b;->isBindable()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v4, v0, Lc2/b;->k:La2/b;

    if-eqz v4, :cond_15

    const-string v1, "bind"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "position"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 21
    iget-object v4, v0, Lc2/b;->k:La2/b;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_7

    move-object/from16 v5, v24

    .line 22
    :try_start_11
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 23
    iput v7, v4, La2/b;->h:I

    .line 24
    iget-object v4, v0, Lc2/b;->k:La2/b;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_6

    move-object/from16 v7, v23

    .line 25
    :try_start_12
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 26
    iput v8, v4, La2/b;->i:I

    .line 27
    invoke-virtual {v0}, Lc2/b;->isBindActive()Z

    move-result v4

    move-object/from16 v8, v22

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v4, v1, :cond_14

    .line 28
    iget-object v1, v0, Lc2/b;->k:La2/b;

    .line 29
    invoke-virtual {v1}, La2/b;->a()V

    invoke-virtual {v0}, Lc2/b;->S()V

    .line 30
    iget-object v1, v0, Lc2/b;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_15

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind: <font color=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc2/b;->isBindActive()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_14
    invoke-virtual {v0}, Lc2/b;->isBindActive()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 32
    iget-object v1, v0, Lc2/b;->k:La2/b;

    .line 33
    invoke-virtual {v1}, La2/b;->a()V

    .line 34
    iget-object v0, v0, Lc2/b;->k:La2/b;

    .line 35
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v7, v23

    goto :goto_10

    :cond_15
    move-object/from16 v7, v23

    move-object/from16 v5, v24

    goto :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    goto :goto_10

    :cond_16
    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move-object v7, v3

    move-object v5, v4

    :cond_17
    :goto_c
    move-object/from16 v3, p0

    goto/16 :goto_14

    :catch_8
    move-exception v0

    move-object/from16 v17, v5

    :goto_d
    move-object/from16 v16, v7

    :goto_e
    move-object/from16 v18, v8

    :goto_f
    move-object v7, v3

    move-object v5, v4

    goto :goto_10

    :cond_18
    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move-object v7, v3

    move-object v5, v4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification: Config: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_9

    move-object/from16 v3, p0

    .line 36
    :try_start_13
    iget-object v4, v3, Lz1/a;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": module array is empty!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catch_9
    move-exception v0

    :goto_10
    move-object/from16 v3, p0

    goto :goto_13

    :cond_19
    :goto_11
    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move-object v7, v3

    move-object v5, v4

    move-object v3, v1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification: Config: Config file "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v4, v3, Lz1/a;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is empty!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_a

    return-void

    :catch_a
    move-exception v0

    goto :goto_13

    :catch_b
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    :goto_12
    move-object v7, v3

    move-object v5, v4

    move-object v3, v1

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    move-object v1, v3

    move-object v4, v5

    move-object v3, v7

    move-object/from16 v7, v16

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    goto/16 :goto_0

    :cond_1a
    move-object v3, v1

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x359f871f -> :sswitch_3
        0x3339a3 -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x2cbfa45a -> :sswitch_0
    .end sparse-switch
.end method

.method public final e()V
    .registers 10

    const-string v0, "modules"

    const-string v1, "name"

    const-string v2, "active"

    sget-object v3, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/b;

    :try_start_0
    iget-object v5, p0, Lz1/a;->c:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/4 v7, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v4, v7}, Lc2/b;->K(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lc2/b;->isToggleable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lc2/b;->isActive()Z

    move-result v6

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eq v6, v8, :cond_3

    invoke-virtual {v4}, Lc2/b;->R()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lz1/a;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "color_r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "color_r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->e:I

    :cond_5
    const-string v1, "color_g"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "color_g"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->f:I

    :cond_6
    const-string v1, "color_b"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "color_b"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->g:I

    :cond_7
    const-string v1, "#%02x%02x%02x"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Ldev/virus/variable/app/MinecraftActivity;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Ldev/virus/variable/app/MinecraftActivity;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget v4, Ldev/virus/variable/app/MinecraftActivity;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    const-string v1, "bind_text_size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "bind_text_size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->i:F

    :cond_8
    const-string v1, "bind_size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "bind_size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->j:F

    :cond_9
    const-string v1, "menu_position"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "menu_position"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    :cond_a
    const-string v1, "bind_shape"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "bind_shape"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Ldev/virus/variable/app/MinecraftActivity;->bindShape:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    return-void
.end method
