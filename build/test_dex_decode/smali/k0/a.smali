.class public final Lk0/a;
.super Lk0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/a$e;,
        Lk0/a$b;,
        Lk0/a$c;,
        Lk0/a$d;,
        Lk0/a$a;,
        Lk0/a$f;
    }
.end annotation


# instance fields
.field public q:Lk0/a$b;

.field public r:Lk0/a$f;

.field public s:I

.field public t:I

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lk0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lk0/a;-><init>(Lk0/a$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lk0/a$b;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lk0/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lk0/a;->s:I

    iput v0, p0, Lk0/a;->t:I

    new-instance v0, Lk0/a$b;

    invoke-direct {v0, p1, p0, p2}, Lk0/a$b;-><init>(Lk0/a$b;Lk0/a;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Lk0/a;->e(Lk0/b$c;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lk0/a;->onStateChange([I)Z

    invoke-virtual {p0}, Lk0/a;->jumpToCurrentState()V

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lk0/a;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "animated-selector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    new-instance v4, Lk0/a;

    const/4 v5, 0x0

    .line 1
    invoke-direct {v4, v5, v5}, Lk0/a;-><init>(Lk0/a$b;Landroid/content/res/Resources;)V

    .line 2
    sget-object v6, La3/r0;->i:[I

    invoke-static {v1, v3, v2, v6}, Lv/f;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v4, v8, v7}, Lk0/a;->setVisible(ZZ)Z

    .line 3
    iget-object v8, v4, Lk0/a;->q:Lk0/a$b;

    iget v9, v8, Lk0/b$c;->d:I

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v8, Lk0/b$c;->d:I

    iget-boolean v9, v8, Lk0/b$c;->i:Z

    const/4 v10, 0x2

    invoke-virtual {v6, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 4
    iput-boolean v9, v8, Lk0/b$c;->i:Z

    .line 5
    iget-boolean v9, v8, Lk0/b$c;->l:Z

    const/4 v11, 0x3

    invoke-virtual {v6, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 6
    iput-boolean v9, v8, Lk0/b$c;->l:Z

    .line 7
    iget v9, v8, Lk0/b$c;->y:I

    const/4 v12, 0x4

    invoke-virtual {v6, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 8
    iput v9, v8, Lk0/b$c;->y:I

    const/4 v9, 0x5

    .line 9
    iget v13, v8, Lk0/b$c;->z:I

    invoke-virtual {v6, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 10
    iput v9, v8, Lk0/b$c;->z:I

    .line 11
    iget-boolean v8, v8, Lk0/b$c;->w:Z

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v4, v8}, Lk0/b;->setDither(Z)V

    .line 12
    iget-object v8, v4, Lk0/b;->b:Lk0/b$c;

    invoke-virtual {v8, v1}, Lk0/b$c;->h(Landroid/content/res/Resources;)V

    .line 13
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/2addr v6, v7

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v7, :cond_17

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-ge v13, v6, :cond_0

    if-eq v8, v11, :cond_17

    :cond_0
    if-eq v8, v10, :cond_1

    goto :goto_0

    :cond_1
    if-le v13, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v13, "item"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v13, -0x1

    if-eqz v8, :cond_c

    .line 15
    sget-object v8, La3/r0;->j:[I

    invoke-static {v1, v3, v2, v8}, Lv/f;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-virtual {v8, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    invoke-virtual {v8, v7, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-lez v13, :cond_3

    invoke-static {v0, v13}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_1

    :cond_3
    move-object v13, v5

    :goto_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    new-array v15, v8, [I

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v5, v8, :cond_6

    invoke-interface {v2, v5}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v7

    if-eqz v7, :cond_5

    const v10, 0x10100d0

    if-eq v7, v10, :cond_5

    const v10, 0x1010199

    if-eq v7, v10, :cond_5

    add-int/lit8 v10, v11, 0x1

    invoke-interface {v2, v5, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_3

    :cond_4
    neg-int v7, v7

    :goto_3
    aput v7, v15, v11

    move v11, v10

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x2

    goto :goto_2

    :cond_6
    invoke-static {v15, v11}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v5

    const-string v7, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v13, :cond_a

    .line 17
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-ne v8, v12, :cond_7

    goto :goto_4

    :cond_7
    const/4 v10, 0x2

    if-ne v8, v10, :cond_9

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "vector"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static/range {p1 .. p4}, Ls/f;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ls/f;

    move-result-object v13

    goto :goto_5

    :cond_8
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_5

    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    if-eqz v13, :cond_b

    iget-object v7, v4, Lk0/a;->q:Lk0/a$b;

    .line 18
    invoke-virtual {v7, v13}, Lk0/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v8

    iget-object v10, v7, Lk0/d$a;->H:[[I

    aput-object v5, v10, v8

    .line 19
    iget-object v5, v7, Lk0/a$b;->J:Lc0/k;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lc0/k;->f(ILjava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    goto/16 :goto_0

    .line 20
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_c
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "transition"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 22
    sget-object v5, La3/r0;->k:[I

    invoke-static {v1, v3, v2, v5}, Lv/f;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v5, v9, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    if-lez v11, :cond_d

    invoke-static {v0, v11}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_6

    :cond_d
    const/4 v11, 0x0

    :goto_6
    const/4 v14, 0x3

    invoke-virtual {v5, v14, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const-string v5, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v11, :cond_11

    :goto_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v12, :cond_e

    goto :goto_7

    :cond_e
    const/4 v7, 0x2

    if-ne v11, v7, :cond_10

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v7, "animated-vector"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 23
    new-instance v11, Ls/b;

    .line 24
    invoke-direct {v11, v0}, Ls/b;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p2

    .line 25
    invoke-virtual {v11, v1, v7, v2, v3}, Ls/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_8

    :cond_f
    move-object/from16 v7, p2

    .line 26
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_8

    :cond_10
    move-object/from16 v7, p2

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v7, p2

    :goto_8
    if-eqz v11, :cond_14

    if-eq v8, v13, :cond_13

    if-eq v10, v13, :cond_13

    iget-object v5, v4, Lk0/a;->q:Lk0/a$b;

    .line 27
    invoke-virtual {v5, v11}, Lk0/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v11

    invoke-static {v8, v10}, Lk0/a$b;->j(II)J

    move-result-wide v12

    if-eqz v15, :cond_12

    const-wide v16, 0x200000000L

    goto :goto_9

    :cond_12
    const-wide/16 v16, 0x0

    :goto_9
    iget-object v9, v5, Lk0/a$b;->I:Lc0/e;

    move/from16 v18, v15

    int-to-long v14, v11

    or-long v19, v14, v16

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v12, v13, v11}, Lc0/e;->a(JLjava/lang/Object;)V

    if-eqz v18, :cond_16

    invoke-static {v10, v8}, Lk0/a$b;->j(II)J

    move-result-wide v8

    iget-object v5, v5, Lk0/a$b;->I:Lc0/e;

    const-wide v10, 0x100000000L

    or-long/2addr v10, v14

    or-long v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lc0/e;->a(JLjava/lang/Object;)V

    goto :goto_a

    .line 28
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object/from16 v7, p2

    :cond_16
    :goto_a
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x4

    goto/16 :goto_0

    .line 29
    :cond_17
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v4, v0}, Lk0/a;->onStateChange([I)Z

    return-object v4

    :cond_18
    move-object/from16 v7, p2

    .line 30
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid animated-selector tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b()Lk0/b$c;
    .locals 3

    new-instance v0, Lk0/a$b;

    iget-object v1, p0, Lk0/a;->q:Lk0/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lk0/a$b;-><init>(Lk0/a$b;Lk0/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final e(Lk0/b$c;)V
    .locals 1

    invoke-super {p0, p1}, Lk0/d;->e(Lk0/b$c;)V

    instance-of v0, p1, Lk0/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Lk0/a$b;

    iput-object p1, p0, Lk0/a;->q:Lk0/a$b;

    :cond_0
    return-void
.end method

.method public final f()Lk0/d$a;
    .locals 3

    new-instance v0, Lk0/a$b;

    iget-object v1, p0, Lk0/a;->q:Lk0/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lk0/a$b;-><init>(Lk0/a$b;Lk0/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Lk0/b;->jumpToCurrentState()V

    iget-object v0, p0, Lk0/a;->r:Lk0/a$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk0/a$f;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk0/a;->r:Lk0/a$f;

    iget v0, p0, Lk0/a;->s:I

    invoke-virtual {p0, v0}, Lk0/b;->d(I)Z

    const/4 v0, -0x1

    iput v0, p0, Lk0/a;->s:I

    iput v0, p0, Lk0/a;->t:I

    :cond_0
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lk0/a;->u:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lk0/d;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lk0/a;->q:Lk0/a$b;

    invoke-virtual {v0}, Lk0/a$b;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/a;->u:Z

    :cond_0
    return-object p0
.end method

.method public final onStateChange([I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lk0/a;->q:Lk0/a$b;

    .line 1
    invoke-virtual {v2, v1}, Lk0/d$a;->i([I)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Lk0/d$a;->i([I)I

    move-result v3

    .line 2
    :goto_0
    iget v2, v0, Lk0/b;->h:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v2, :cond_c

    .line 3
    iget-object v6, v0, Lk0/a;->r:Lk0/a$f;

    if-eqz v6, :cond_3

    iget v2, v0, Lk0/a;->s:I

    if-ne v3, v2, :cond_1

    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_1
    iget v2, v0, Lk0/a;->t:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v6}, Lk0/a$f;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lk0/a$f;->b()V

    iget v2, v0, Lk0/a;->t:I

    iput v2, v0, Lk0/a;->s:I

    iput v3, v0, Lk0/a;->t:I

    goto :goto_1

    :cond_2
    iget v2, v0, Lk0/a;->s:I

    invoke-virtual {v6}, Lk0/a$f;->d()V

    :cond_3
    const/4 v6, 0x0

    iput-object v6, v0, Lk0/a;->r:Lk0/a$f;

    const/4 v6, -0x1

    iput v6, v0, Lk0/a;->t:I

    iput v6, v0, Lk0/a;->s:I

    iget-object v6, v0, Lk0/a;->q:Lk0/a$b;

    invoke-virtual {v6, v2}, Lk0/a$b;->k(I)I

    move-result v7

    invoke-virtual {v6, v3}, Lk0/a$b;->k(I)I

    move-result v8

    if-eqz v8, :cond_a

    if-nez v7, :cond_4

    goto/16 :goto_5

    .line 4
    :cond_4
    invoke-static {v7, v8}, Lk0/a$b;->j(II)J

    move-result-wide v9

    iget-object v11, v6, Lk0/a$b;->I:Lc0/e;

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v9, v10, v14}, Lc0/e;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-int v10, v9

    if-gez v10, :cond_5

    goto/16 :goto_5

    .line 5
    :cond_5
    invoke-static {v7, v8}, Lk0/a$b;->j(II)J

    move-result-wide v14

    iget-object v9, v6, Lk0/a$b;->I:Lc0/e;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v14, v15, v11}, Lc0/e;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide v16, 0x200000000L

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    .line 6
    :goto_2
    invoke-virtual {v0, v10}, Lk0/b;->d(I)Z

    .line 7
    iget-object v10, v0, Lk0/b;->d:Landroid/graphics/drawable/Drawable;

    .line 8
    instance-of v11, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v11, :cond_8

    .line 9
    invoke-static {v7, v8}, Lk0/a$b;->j(II)J

    move-result-wide v7

    iget-object v6, v6, Lk0/a$b;->I:Lc0/e;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v7, v8, v11}, Lc0/e;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v11, 0x100000000L

    and-long/2addr v6, v11

    cmp-long v8, v6, v16

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 10
    :goto_3
    new-instance v7, Lk0/a$d;

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v7, v10, v6, v9}, Lk0/a$d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_4

    :cond_8
    instance-of v6, v10, Ls/b;

    if-eqz v6, :cond_9

    new-instance v7, Lk0/a$c;

    check-cast v10, Ls/b;

    invoke-direct {v7, v10}, Lk0/a$c;-><init>(Ls/b;)V

    goto :goto_4

    :cond_9
    instance-of v6, v10, Landroid/graphics/drawable/Animatable;

    if-eqz v6, :cond_a

    new-instance v7, Lk0/a$a;

    check-cast v10, Landroid/graphics/drawable/Animatable;

    invoke-direct {v7, v10}, Lk0/a$a;-><init>(Landroid/graphics/drawable/Animatable;)V

    :goto_4
    invoke-virtual {v7}, Lk0/a$f;->c()V

    iput-object v7, v0, Lk0/a;->r:Lk0/a$f;

    iput v2, v0, Lk0/a;->t:I

    iput v3, v0, Lk0/a;->s:I

    goto/16 :goto_1

    :cond_a
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_b

    .line 11
    invoke-virtual {v0, v3}, Lk0/b;->d(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/4 v4, 0x1

    .line 12
    :cond_c
    iget-object v2, v0, Lk0/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    .line 13
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v4, v1

    :cond_d
    return v4
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lk0/b;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Lk0/a;->r:Lk0/a$f;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lk0/a$f;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lk0/a;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
