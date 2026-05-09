.class public final Ls/f$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final p:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Matrix;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PathMeasure;

.field public final g:Ls/f$c;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;

.field public final o:Lc0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Ls/f$f;->p:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls/f$f;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Ls/f$f;->h:F

    iput v0, p0, Ls/f$f;->i:F

    iput v0, p0, Ls/f$f;->j:F

    iput v0, p0, Ls/f$f;->k:F

    const/16 v0, 0xff

    iput v0, p0, Ls/f$f;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Ls/f$f;->m:Ljava/lang/String;

    iput-object v0, p0, Ls/f$f;->n:Ljava/lang/Boolean;

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    iput-object v0, p0, Ls/f$f;->o:Lc0/a;

    new-instance v0, Ls/f$c;

    invoke-direct {v0}, Ls/f$c;-><init>()V

    iput-object v0, p0, Ls/f$f;->g:Ls/f$c;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ls/f$f;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ls/f$f;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Ls/f$f;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls/f$f;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Ls/f$f;->h:F

    iput v0, p0, Ls/f$f;->i:F

    iput v0, p0, Ls/f$f;->j:F

    iput v0, p0, Ls/f$f;->k:F

    const/16 v0, 0xff

    iput v0, p0, Ls/f$f;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Ls/f$f;->m:Ljava/lang/String;

    iput-object v0, p0, Ls/f$f;->n:Ljava/lang/Boolean;

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    iput-object v0, p0, Ls/f$f;->o:Lc0/a;

    new-instance v1, Ls/f$c;

    iget-object v2, p1, Ls/f$f;->g:Ls/f$c;

    invoke-direct {v1, v2, v0}, Ls/f$c;-><init>(Ls/f$c;Lc0/a;)V

    iput-object v1, p0, Ls/f$f;->g:Ls/f$c;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Ls/f$f;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Ls/f$f;->a:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Ls/f$f;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Ls/f$f;->b:Landroid/graphics/Path;

    iget v1, p1, Ls/f$f;->h:F

    iput v1, p0, Ls/f$f;->h:F

    iget v1, p1, Ls/f$f;->i:F

    iput v1, p0, Ls/f$f;->i:F

    iget v1, p1, Ls/f$f;->j:F

    iput v1, p0, Ls/f$f;->j:F

    iget v1, p1, Ls/f$f;->k:F

    iput v1, p0, Ls/f$f;->k:F

    iget v1, p1, Ls/f$f;->l:I

    iput v1, p0, Ls/f$f;->l:I

    iget-object v1, p1, Ls/f$f;->m:Ljava/lang/String;

    iput-object v1, p0, Ls/f$f;->m:Ljava/lang/String;

    iget-object v1, p1, Ls/f$f;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p0}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, Ls/f$f;->n:Ljava/lang/Boolean;

    iput-object p1, p0, Ls/f$f;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Ls/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v7, Ls/f$c;->a:Landroid/graphics/Matrix;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, v7, Ls/f$c;->a:Landroid/graphics/Matrix;

    iget-object v1, v7, Ls/f$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    const/4 v9, 0x0

    move-object v11, v6

    const/4 v10, 0x0

    :goto_0
    iget-object v0, v7, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_17

    iget-object v0, v7, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/f$d;

    instance-of v1, v0, Ls/f$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ls/f$c;

    iget-object v2, v7, Ls/f$c;->a:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Ls/f$f;->a(Ls/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    goto/16 :goto_b

    :cond_0
    instance-of v1, v0, Ls/f$e;

    if-eqz v1, :cond_16

    check-cast v0, Ls/f$e;

    move/from16 v1, p4

    int-to-float v2, v1

    .line 1
    iget v3, v11, Ls/f$f;->j:F

    div-float/2addr v2, v3

    move/from16 v3, p5

    int-to-float v4, v3

    iget v5, v11, Ls/f$f;->k:F

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v12, v7, Ls/f$c;->a:Landroid/graphics/Matrix;

    iget-object v13, v11, Ls/f$f;->c:Landroid/graphics/Matrix;

    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v11, v11, Ls/f$f;->c:Landroid/graphics/Matrix;

    invoke-virtual {v11, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x4

    new-array v2, v2, [F

    .line 2
    fill-array-data v2, :array_0

    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v4, v2, v9

    float-to-double v11, v4

    const/4 v4, 0x1

    aget v13, v2, v4

    float-to-double v13, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v11, v11

    const/4 v12, 0x2

    aget v13, v2, v12

    float-to-double v13, v13

    const/4 v15, 0x3

    aget v12, v2, v15

    move/from16 v16, v5

    float-to-double v4, v12

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aget v5, v2, v9

    const/4 v12, 0x1

    aget v13, v2, v12

    const/4 v12, 0x2

    aget v12, v2, v12

    aget v2, v2, v15

    mul-float v5, v5, v2

    mul-float v13, v13, v12

    sub-float/2addr v5, v13

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v11, v2, v4

    if-lez v11, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    cmpl-float v2, v5, v4

    if-nez v2, :cond_2

    goto/16 :goto_a

    .line 3
    :cond_2
    iget-object v2, v6, Ls/f$f;->a:Landroid/graphics/Path;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v11, v0, Ls/f$e;->a:[Lw/b$a;

    if-eqz v11, :cond_3

    invoke-static {v11, v2}, Lw/b$a;->b([Lw/b$a;Landroid/graphics/Path;)V

    .line 5
    :cond_3
    iget-object v2, v6, Ls/f$f;->a:Landroid/graphics/Path;

    iget-object v11, v6, Ls/f$f;->b:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 6
    instance-of v11, v0, Ls/f$a;

    if-eqz v11, :cond_4

    .line 7
    iget-object v0, v6, Ls/f$f;->b:Landroid/graphics/Path;

    iget-object v4, v6, Ls/f$f;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v0, v6, Ls/f$f;->b:Landroid/graphics/Path;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_a

    :cond_4
    check-cast v0, Ls/f$b;

    iget v11, v0, Ls/f$b;->j:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v13, v11, v4

    if-nez v13, :cond_5

    iget v13, v0, Ls/f$b;->k:F

    cmpl-float v13, v13, v12

    if-eqz v13, :cond_8

    :cond_5
    iget v13, v0, Ls/f$b;->l:F

    add-float/2addr v11, v13

    rem-float/2addr v11, v12

    iget v14, v0, Ls/f$b;->k:F

    add-float/2addr v14, v13

    rem-float/2addr v14, v12

    iget-object v12, v6, Ls/f$f;->f:Landroid/graphics/PathMeasure;

    if-nez v12, :cond_6

    new-instance v12, Landroid/graphics/PathMeasure;

    invoke-direct {v12}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v12, v6, Ls/f$f;->f:Landroid/graphics/PathMeasure;

    :cond_6
    iget-object v12, v6, Ls/f$f;->f:Landroid/graphics/PathMeasure;

    iget-object v13, v6, Ls/f$f;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v13, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v12, v6, Ls/f$f;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    mul-float v11, v11, v12

    mul-float v14, v14, v12

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    cmpl-float v13, v11, v14

    if-lez v13, :cond_7

    iget-object v13, v6, Ls/f$f;->f:Landroid/graphics/PathMeasure;

    const/4 v15, 0x1

    invoke-virtual {v13, v11, v12, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v11, v6, Ls/f$f;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v11, v4, v14, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_2

    :cond_7
    const/4 v15, 0x1

    iget-object v12, v6, Ls/f$f;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v12, v11, v14, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_2
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_8
    iget-object v4, v6, Ls/f$f;->b:Landroid/graphics/Path;

    iget-object v11, v6, Ls/f$f;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v11}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v2, v0, Ls/f$b;->f:Lv/b;

    .line 8
    invoke-virtual {v2}, Lv/b;->b()Z

    move-result v4

    if-nez v4, :cond_a

    iget v2, v2, Lv/b;->c:I

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v2, 0x1

    :goto_4
    const/high16 v4, 0x437f0000    # 255.0f

    const v11, 0xffffff

    const/4 v12, 0x0

    if-eqz v2, :cond_e

    .line 9
    iget-object v2, v0, Ls/f$b;->f:Lv/b;

    iget-object v13, v6, Ls/f$f;->e:Landroid/graphics/Paint;

    if-nez v13, :cond_b

    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v6, Ls/f$f;->e:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_b
    iget-object v13, v6, Ls/f$f;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lv/b;->b()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 10
    iget-object v2, v2, Lv/b;->a:Landroid/graphics/Shader;

    .line 11
    iget-object v14, v6, Ls/f$f;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v14}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, v0, Ls/f$b;->i:F

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5

    .line 12
    :cond_c
    iget v2, v2, Lv/b;->c:I

    .line 13
    iget v14, v0, Ls/f$b;->i:F

    sget-object v15, Ls/f;->k:Landroid/graphics/PorterDuff$Mode;

    .line 14
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    and-int/2addr v2, v11

    int-to-float v15, v15

    mul-float v15, v15, v14

    float-to-int v14, v15

    shl-int/lit8 v14, v14, 0x18

    or-int/2addr v2, v14

    .line 15
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v2, v6, Ls/f$f;->b:Landroid/graphics/Path;

    iget v14, v0, Ls/f$b;->h:I

    if-nez v14, :cond_d

    sget-object v14, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_6

    :cond_d
    sget-object v14, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_6
    invoke-virtual {v2, v14}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v2, v6, Ls/f$f;->b:Landroid/graphics/Path;

    invoke-virtual {v8, v2, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    iget-object v2, v0, Ls/f$b;->d:Lv/b;

    .line 16
    invoke-virtual {v2}, Lv/b;->b()Z

    move-result v13

    if-nez v13, :cond_10

    iget v2, v2, Lv/b;->c:I

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v2, 0x1

    :goto_8
    if-eqz v2, :cond_15

    .line 17
    iget-object v2, v0, Ls/f$b;->d:Lv/b;

    iget-object v13, v6, Ls/f$f;->d:Landroid/graphics/Paint;

    if-nez v13, :cond_11

    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v6, Ls/f$f;->d:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_11
    iget-object v13, v6, Ls/f$f;->d:Landroid/graphics/Paint;

    iget-object v14, v0, Ls/f$b;->n:Landroid/graphics/Paint$Join;

    if-eqz v14, :cond_12

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_12
    iget-object v14, v0, Ls/f$b;->m:Landroid/graphics/Paint$Cap;

    if-eqz v14, :cond_13

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_13
    iget v14, v0, Ls/f$b;->o:F

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {v2}, Lv/b;->b()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 18
    iget-object v2, v2, Lv/b;->a:Landroid/graphics/Shader;

    .line 19
    iget-object v11, v6, Ls/f$f;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, v0, Ls/f$b;->g:F

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9

    .line 20
    :cond_14
    iget v2, v2, Lv/b;->c:I

    .line 21
    iget v4, v0, Ls/f$b;->g:F

    sget-object v14, Ls/f;->k:Landroid/graphics/PorterDuff$Mode;

    .line 22
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    and-int/2addr v2, v11

    int-to-float v11, v14

    mul-float v11, v11, v4

    float-to-int v4, v11

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    .line 23
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v5, v5, v16

    iget v0, v0, Ls/f$b;->e:F

    mul-float v0, v0, v5

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v6, Ls/f$f;->b:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_15
    :goto_a
    move-object v11, v6

    goto :goto_c

    :cond_16
    :goto_b
    move/from16 v1, p4

    move/from16 v3, p5

    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 24
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAlpha()F
    .locals 2

    invoke-virtual {p0}, Ls/f$f;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    iget v0, p0, Ls/f$f;->l:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ls/f$f;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    iput p1, p0, Ls/f$f;->l:I

    return-void
.end method
