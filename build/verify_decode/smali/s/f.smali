.class public final Ls/f;
.super Ls/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/f$b;,
        Ls/f$a;,
        Ls/f$e;,
        Ls/f$c;,
        Ls/f$d;,
        Ls/f$f;,
        Ls/f$g;,
        Ls/f$h;
    }
.end annotation


# static fields
.field public static final k:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public c:Ls/f$g;

.field public d:Landroid/graphics/PorterDuffColorFilter;

.field public e:Landroid/graphics/ColorFilter;

.field public f:Z

.field public g:Z

.field public final h:[F

.field public final i:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Ls/f;->k:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ls/e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/f;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ls/f;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls/f;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ls/f;->j:Landroid/graphics/Rect;

    new-instance v0, Ls/f$g;

    invoke-direct {v0}, Ls/f$g;-><init>()V

    iput-object v0, p0, Ls/f;->c:Ls/f$g;

    return-void
.end method

.method public constructor <init>(Ls/f$g;)V
    .locals 1

    invoke-direct {p0}, Ls/e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/f;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ls/f;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls/f;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ls/f;->j:Landroid/graphics/Rect;

    iput-object p1, p0, Ls/f;->c:Ls/f$g;

    iget-object v0, p1, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Ls/f;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ls/f;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ls/f;
    .locals 1

    new-instance v0, Ls/f;

    invoke-direct {v0}, Ls/f;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Ls/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls/e;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Ls/f;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Ls/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Ls/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Ls/f;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Ls/f;->d:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v1, p0, Ls/f;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Ls/f;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Ls/f;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Ls/f;->h:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Ls/f;->h:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Ls/f;->h:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Ls/f;->h:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    cmpl-float v4, v6, v8

    if-eqz v4, :cond_4

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_4
    iget-object v4, p0, Ls/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    iget-object v4, p0, Ls/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_11

    if-gtz v3, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v6, p0, Ls/f;->j:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1
    invoke-virtual {p0}, Ls/f;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Lx/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    if-ne v6, v5, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_7

    .line 2
    iget-object v6, p0, Ls/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_7
    iget-object v6, p0, Ls/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v6, p0, Ls/f;->c:Ls/f$g;

    .line 3
    iget-object v7, v6, Ls/f$g;->f:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_9

    .line 4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v1, v7, :cond_8

    iget-object v7, v6, Ls/f$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_a

    .line 5
    :cond_9
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Ls/f$g;->f:Landroid/graphics/Bitmap;

    iput-boolean v5, v6, Ls/f$g;->k:Z

    .line 6
    :cond_a
    iget-boolean v6, p0, Ls/f;->g:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Ls/f;->c:Ls/f$g;

    invoke-virtual {v6, v1, v3}, Ls/f$g;->b(II)V

    goto :goto_3

    :cond_b
    iget-object v6, p0, Ls/f;->c:Ls/f$g;

    .line 7
    iget-boolean v7, v6, Ls/f$g;->k:Z

    if-nez v7, :cond_c

    iget-object v7, v6, Ls/f$g;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v6, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    if-ne v7, v8, :cond_c

    iget-object v7, v6, Ls/f$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v6, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v7, v8, :cond_c

    iget-boolean v7, v6, Ls/f$g;->j:Z

    iget-boolean v8, v6, Ls/f$g;->e:Z

    if-ne v7, v8, :cond_c

    iget v7, v6, Ls/f$g;->i:I

    iget-object v6, v6, Ls/f$g;->b:Ls/f$f;

    invoke-virtual {v6}, Ls/f$f;->getRootAlpha()I

    move-result v6

    if-ne v7, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_d

    .line 8
    iget-object v6, p0, Ls/f;->c:Ls/f$g;

    invoke-virtual {v6, v1, v3}, Ls/f$g;->b(II)V

    iget-object v1, p0, Ls/f;->c:Ls/f$g;

    .line 9
    iget-object v3, v1, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    iput-object v3, v1, Ls/f$g;->g:Landroid/content/res/ColorStateList;

    iget-object v3, v1, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v1, Ls/f$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, v1, Ls/f$g;->b:Ls/f$f;

    invoke-virtual {v3}, Ls/f$f;->getRootAlpha()I

    move-result v3

    iput v3, v1, Ls/f$g;->i:I

    iget-boolean v3, v1, Ls/f$g;->e:Z

    iput-boolean v3, v1, Ls/f$g;->j:Z

    iput-boolean v2, v1, Ls/f$g;->k:Z

    .line 10
    :cond_d
    :goto_3
    iget-object v1, p0, Ls/f;->c:Ls/f$g;

    iget-object v3, p0, Ls/f;->j:Landroid/graphics/Rect;

    .line 11
    iget-object v6, v1, Ls/f$g;->b:Ls/f$f;

    invoke-virtual {v6}, Ls/f$f;->getRootAlpha()I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_e

    const/4 v2, 0x1

    :cond_e
    const/4 v6, 0x0

    if-nez v2, :cond_f

    if-nez v0, :cond_f

    move-object v0, v6

    goto :goto_4

    .line 12
    :cond_f
    iget-object v2, v1, Ls/f$g;->l:Landroid/graphics/Paint;

    if-nez v2, :cond_10

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Ls/f$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_10
    iget-object v2, v1, Ls/f$g;->l:Landroid/graphics/Paint;

    iget-object v5, v1, Ls/f$g;->b:Ls/f$f;

    invoke-virtual {v5}, Ls/f$f;->getRootAlpha()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v1, Ls/f$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v1, Ls/f$g;->l:Landroid/graphics/Paint;

    .line 13
    :goto_4
    iget-object v1, v1, Ls/f$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v6, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-object v0, v0, Ls/f$g;->b:Ls/f$f;

    invoke-virtual {v0}, Ls/f$f;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Ls/f;->c:Ls/f$g;

    invoke-virtual {v1}, Ls/f$g;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Ls/f$h;

    iget-object v1, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Ls/f$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    invoke-virtual {p0}, Ls/f;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Ls/f$g;->a:I

    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-object v0, v0, Ls/f$g;->b:Ls/f$f;

    iget v0, v0, Ls/f$f;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-object v0, v0, Ls/f$g;->b:Ls/f$f;

    iget v0, v0, Ls/f$f;->h:F

    float-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ls/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 1
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 2
    :cond_0
    iget-object v5, v0, Ls/f;->c:Ls/f$g;

    new-instance v6, Ls/f$f;

    invoke-direct {v6}, Ls/f$f;-><init>()V

    iput-object v6, v5, Ls/f$g;->b:Ls/f$f;

    sget-object v6, Ls/a;->a:[I

    invoke-static {v1, v4, v3, v6}, Lv/f;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3
    iget-object v7, v0, Ls/f;->c:Ls/f$g;

    iget-object v8, v7, Ls/f$g;->b:Ls/f$f;

    const-string v9, "tintMode"

    const/4 v10, 0x6

    const/4 v11, -0x1

    invoke-static {v6, v2, v9, v10, v11}, Lv/f;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v13, 0x9

    const/4 v14, 0x5

    const/4 v15, 0x3

    if-eq v9, v15, :cond_2

    if-eq v9, v14, :cond_3

    if-eq v9, v13, :cond_1

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 5
    :cond_3
    :goto_0
    iput-object v12, v7, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-eqz v12, :cond_4

    iput-object v12, v7, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    :cond_4
    iget-boolean v12, v7, Ls/f$g;->e:Z

    const-string v10, "autoMirrored"

    .line 6
    invoke-static {v2, v10}, Lv/f;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v14, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 7
    :goto_1
    iput-boolean v12, v7, Ls/f$g;->e:Z

    iget v7, v8, Ls/f$f;->j:F

    const-string v10, "viewportWidth"

    const/4 v12, 0x7

    invoke-static {v6, v2, v10, v12, v7}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Ls/f$f;->j:F

    iget v7, v8, Ls/f$f;->k:F

    const-string v10, "viewportHeight"

    const/16 v14, 0x8

    invoke-static {v6, v2, v10, v14, v7}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Ls/f$f;->k:F

    iget v10, v8, Ls/f$f;->j:F

    const/16 v16, 0x0

    cmpg-float v10, v10, v16

    if-lez v10, :cond_22

    cmpg-float v7, v7, v16

    if-lez v7, :cond_21

    iget v7, v8, Ls/f$f;->h:F

    invoke-virtual {v6, v15, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Ls/f$f;->h:F

    iget v7, v8, Ls/f$f;->i:F

    const/4 v10, 0x2

    invoke-virtual {v6, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Ls/f$f;->i:F

    iget v12, v8, Ls/f$f;->h:F

    cmpg-float v12, v12, v16

    if-lez v12, :cond_20

    cmpg-float v7, v7, v16

    if-lez v7, :cond_1f

    invoke-virtual {v8}, Ls/f$f;->getAlpha()F

    move-result v7

    const-string v12, "alpha"

    const/4 v13, 0x4

    invoke-static {v6, v2, v12, v13, v7}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    invoke-virtual {v8, v7}, Ls/f$f;->setAlpha(F)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    iput-object v12, v8, Ls/f$f;->m:Ljava/lang/String;

    iget-object v13, v8, Ls/f$f;->o:Lc0/a;

    invoke-virtual {v13, v12, v8}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Ls/f;->getChangingConfigurations()I

    move-result v6

    iput v6, v5, Ls/f$g;->a:I

    iput-boolean v9, v5, Ls/f$g;->k:Z

    .line 9
    iget-object v6, v0, Ls/f;->c:Ls/f$g;

    iget-object v8, v6, Ls/f$g;->b:Ls/f$f;

    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v13, v8, Ls/f$f;->g:Ls/f$c;

    invoke-virtual {v12, v13}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v11, v17, 0x1

    const/16 v17, 0x1

    :goto_2
    if-eq v13, v9, :cond_1d

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v11, :cond_7

    if-eq v13, v15, :cond_1d

    :cond_7
    const-string v14, "group"

    if-ne v13, v10, :cond_1b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Ls/f$c;

    const-string v9, "path"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "pathData"

    if-eqz v9, :cond_12

    new-instance v9, Ls/f$b;

    invoke-direct {v9}, Ls/f$b;-><init>()V

    .line 10
    sget-object v13, Ls/a;->c:[I

    invoke-static {v1, v4, v3, v13}, Lv/f;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 11
    invoke-static {v2, v10}, Lv/f;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    iput-object v10, v9, Ls/f$e;->b:Ljava/lang/String;

    :cond_9
    const/4 v10, 0x2

    invoke-virtual {v13, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-static {v14}, Lw/b;->c(Ljava/lang/String;)[Lw/b$a;

    move-result-object v10

    iput-object v10, v9, Ls/f$e;->a:[Lw/b$a;

    :cond_a
    const-string v10, "fillColor"

    const/4 v14, 0x1

    invoke-static {v13, v2, v4, v10, v14}, Lv/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lv/b;

    move-result-object v10

    iput-object v10, v9, Ls/f$b;->f:Lv/b;

    const/16 v10, 0xc

    iget v7, v9, Ls/f$b;->i:F

    const-string v14, "fillAlpha"

    invoke-static {v13, v2, v14, v10, v7}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Ls/f$b;->i:F

    const-string v7, "strokeLineCap"

    const/16 v10, 0x8

    const/4 v14, -0x1

    invoke-static {v13, v2, v7, v10, v14}, Lv/f;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    iget-object v14, v9, Ls/f$b;->m:Landroid/graphics/Paint$Cap;

    if-eqz v7, :cond_d

    const/4 v10, 0x1

    if-eq v7, v10, :cond_c

    const/4 v10, 0x2

    if-eq v7, v10, :cond_b

    goto :goto_3

    .line 12
    :cond_b
    sget-object v14, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_3

    :cond_c
    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_3

    :cond_d
    sget-object v14, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 13
    :goto_3
    iput-object v14, v9, Ls/f$b;->m:Landroid/graphics/Paint$Cap;

    const-string v7, "strokeLineJoin"

    const/16 v10, 0x9

    const/4 v14, -0x1

    invoke-static {v13, v2, v7, v10, v14}, Lv/f;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    iget-object v10, v9, Ls/f$b;->n:Landroid/graphics/Paint$Join;

    if-eqz v7, :cond_10

    const/4 v14, 0x1

    if-eq v7, v14, :cond_f

    const/4 v14, 0x2

    if-eq v7, v14, :cond_e

    goto :goto_4

    .line 14
    :cond_e
    sget-object v10, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_4

    :cond_f
    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_4

    :cond_10
    sget-object v10, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 15
    :goto_4
    iput-object v10, v9, Ls/f$b;->n:Landroid/graphics/Paint$Join;

    const/16 v7, 0xa

    iget v10, v9, Ls/f$b;->o:F

    const-string v14, "strokeMiterLimit"

    invoke-static {v13, v2, v14, v7, v10}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Ls/f$b;->o:F

    const-string v7, "strokeColor"

    const/4 v10, 0x3

    invoke-static {v13, v2, v4, v7, v10}, Lv/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lv/b;

    move-result-object v7

    iput-object v7, v9, Ls/f$b;->d:Lv/b;

    const/16 v7, 0xb

    iget v10, v9, Ls/f$b;->g:F

    const-string v14, "strokeAlpha"

    invoke-static {v13, v2, v14, v7, v10}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Ls/f$b;->g:F

    iget v7, v9, Ls/f$b;->e:F

    const-string v10, "strokeWidth"

    const/4 v14, 0x4

    invoke-static {v13, v2, v10, v14, v7}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Ls/f$b;->e:F

    iget v7, v9, Ls/f$b;->k:F

    const-string v10, "trimPathEnd"

    const/4 v14, 0x6

    invoke-static {v13, v2, v10, v14, v7}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Ls/f$b;->k:F

    iget v7, v9, Ls/f$b;->l:F

    const-string v10, "trimPathOffset"

    const/4 v14, 0x7

    invoke-static {v13, v2, v10, v14, v7}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Ls/f$b;->l:F

    iget v7, v9, Ls/f$b;->j:F

    const-string v10, "trimPathStart"

    const/4 v14, 0x5

    invoke-static {v13, v2, v10, v14, v7}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Ls/f$b;->j:F

    const/16 v7, 0xd

    iget v10, v9, Ls/f$b;->h:I

    const-string v14, "fillType"

    invoke-static {v13, v2, v14, v7, v10}, Lv/f;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    iput v7, v9, Ls/f$b;->h:I

    .line 16
    :goto_5
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    iget-object v7, v15, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ls/f$e;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, v8, Ls/f$f;->o:Lc0/a;

    invoke-virtual {v9}, Ls/f$e;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget v7, v6, Ls/f$g;->a:I

    iget v9, v9, Ls/f$e;->c:I

    or-int/2addr v7, v9

    iput v7, v6, Ls/f$g;->a:I

    const/4 v1, 0x7

    const/4 v9, 0x0

    const/4 v14, 0x4

    const/16 v16, -0x1

    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_12
    const/16 v9, 0x9

    const/16 v16, -0x1

    const-string v7, "clip-path"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    new-instance v7, Ls/f$a;

    invoke-direct {v7}, Ls/f$a;-><init>()V

    .line 18
    invoke-static {v2, v10}, Lv/f;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_6

    :cond_13
    sget-object v10, Ls/a;->d:[I

    invoke-static {v1, v4, v3, v10}, Lv/f;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v13, 0x0

    .line 19
    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_14

    iput-object v14, v7, Ls/f$e;->b:Ljava/lang/String;

    :cond_14
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_15

    invoke-static {v14}, Lw/b;->c(Ljava/lang/String;)[Lw/b$a;

    move-result-object v13

    iput-object v13, v7, Ls/f$e;->a:[Lw/b$a;

    .line 20
    :cond_15
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    :goto_6
    iget-object v10, v15, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ls/f$e;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    iget-object v10, v8, Ls/f$f;->o:Lc0/a;

    invoke-virtual {v7}, Ls/f$e;->getPathName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13, v7}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v10, v6, Ls/f$g;->a:I

    iget v7, v7, Ls/f$e;->c:I

    or-int/2addr v7, v10

    iput v7, v6, Ls/f$g;->a:I

    goto/16 :goto_7

    :cond_17
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Ls/f$c;

    invoke-direct {v7}, Ls/f$c;-><init>()V

    .line 22
    sget-object v10, Ls/a;->b:[I

    invoke-static {v1, v4, v3, v10}, Lv/f;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 23
    iget v13, v7, Ls/f$c;->c:F

    const-string v14, "rotation"

    const/4 v9, 0x5

    invoke-static {v10, v2, v14, v9, v13}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    iput v13, v7, Ls/f$c;->c:F

    iget v13, v7, Ls/f$c;->d:F

    const/4 v14, 0x1

    invoke-virtual {v10, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v7, Ls/f$c;->d:F

    iget v13, v7, Ls/f$c;->e:F

    const/4 v9, 0x2

    invoke-virtual {v10, v9, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v7, Ls/f$c;->e:F

    iget v13, v7, Ls/f$c;->f:F

    const-string v9, "scaleX"

    const/4 v14, 0x3

    invoke-static {v10, v2, v9, v14, v13}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Ls/f$c;->f:F

    iget v9, v7, Ls/f$c;->g:F

    const-string v13, "scaleY"

    const/4 v14, 0x4

    invoke-static {v10, v2, v13, v14, v9}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Ls/f$c;->g:F

    iget v9, v7, Ls/f$c;->h:F

    const-string v13, "translateX"

    const/4 v1, 0x6

    invoke-static {v10, v2, v13, v1, v9}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Ls/f$c;->h:F

    iget v9, v7, Ls/f$c;->i:F

    const-string v13, "translateY"

    const/4 v1, 0x7

    invoke-static {v10, v2, v13, v1, v9}, Lv/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Ls/f$c;->i:F

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    iput-object v13, v7, Ls/f$c;->l:Ljava/lang/String;

    :cond_18
    invoke-virtual {v7}, Ls/f$c;->c()V

    .line 24
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    iget-object v10, v15, Ls/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ls/f$c;->getGroupName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_19

    iget-object v10, v8, Ls/f$f;->o:Lc0/a;

    invoke-virtual {v7}, Ls/f$c;->getGroupName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13, v7}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget v10, v6, Ls/f$g;->a:I

    iget v7, v7, Ls/f$c;->k:I

    or-int/2addr v7, v10

    iput v7, v6, Ls/f$g;->a:I

    goto :goto_8

    :cond_1a
    :goto_7
    const/4 v1, 0x7

    const/4 v9, 0x0

    const/4 v14, 0x4

    :goto_8
    const/4 v7, 0x4

    const/4 v10, 0x3

    const/4 v15, 0x1

    goto :goto_9

    :cond_1b
    const/4 v1, 0x7

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v15, 0x1

    const/16 v16, -0x1

    if-ne v13, v10, :cond_1c

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_1c
    :goto_9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move-object/from16 v1, p1

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v14, 0x8

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_1d
    if-nez v17, :cond_1e

    .line 26
    iget-object v1, v5, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v5, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Ls/f;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, v0, Ls/f;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 27
    :cond_1e
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_1f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-boolean v0, v0, Ls/f$g;->e:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ls/f$g;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-object v0, v0, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Ls/f;->f:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Ls/f$g;

    iget-object v1, p0, Ls/f;->c:Ls/f$g;

    invoke-direct {v0, v1}, Ls/f$g;-><init>(Ls/f$g;)V

    iput-object v0, p0, Ls/f;->c:Ls/f$g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/f;->f:Z

    :cond_1
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Ls/f;->c:Ls/f$g;

    iget-object v2, v1, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v1, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2, v4}, Ls/f;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Ls/f;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Ls/f;->invalidateSelf()V

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1}, Ls/f$g;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1
    iget-object v2, v1, Ls/f$g;->b:Ls/f$f;

    .line 2
    iget-object v2, v2, Ls/f$f;->g:Ls/f$c;

    invoke-virtual {v2, p1}, Ls/f$c;->b([I)Z

    move-result p1

    .line 3
    iget-boolean v2, v1, Ls/f$g;->k:Z

    or-int/2addr v2, p1

    iput-boolean v2, v1, Ls/f$g;->k:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Ls/f;->invalidateSelf()V

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    return v3
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-object v0, v0, Ls/f$g;->b:Ls/f$f;

    invoke-virtual {v0}, Ls/f$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-object v0, v0, Ls/f$g;->b:Ls/f$f;

    invoke-virtual {v0, p1}, Ls/f$f;->setRootAlpha(I)V

    invoke-virtual {p0}, Ls/f;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iput-boolean p1, v0, Ls/f$g;->e:Z

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, Ls/f;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Ls/f;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls/f;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-object v1, v0, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Ls/f;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ls/f;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Ls/f;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls/f;->c:Ls/f$g;

    iget-object v1, v0, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Ls/f;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ls/f;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Ls/f;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ls/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
