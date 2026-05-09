.class public Landroid/support/v7/widget/m;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Ld0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/m$e;,
        Landroid/support/v7/widget/m$g;,
        Landroid/support/v7/widget/m$h;,
        Landroid/support/v7/widget/m$l;,
        Landroid/support/v7/widget/m$s;,
        Landroid/support/v7/widget/m$r;,
        Landroid/support/v7/widget/m$k;,
        Landroid/support/v7/widget/m$v;,
        Landroid/support/v7/widget/m$q;,
        Landroid/support/v7/widget/m$n;,
        Landroid/support/v7/widget/m$m;,
        Landroid/support/v7/widget/m$i;,
        Landroid/support/v7/widget/m$j;,
        Landroid/support/v7/widget/m$d;,
        Landroid/support/v7/widget/m$t;,
        Landroid/support/v7/widget/m$p;,
        Landroid/support/v7/widget/m$o;,
        Landroid/support/v7/widget/m$f;,
        Landroid/support/v7/widget/m$u;
    }
.end annotation


# static fields
.field public static final r0:[I

.field public static final s0:[I

.field public static final t0:Z

.field public static final u0:Z

.field public static final v0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final w0:Landroid/support/v7/widget/m$b;


# instance fields
.field public A:I

.field public B:I

.field public C:Landroid/support/v7/widget/m$f;

.field public D:Landroid/widget/EdgeEffect;

.field public E:Landroid/widget/EdgeEffect;

.field public F:Landroid/widget/EdgeEffect;

.field public G:Landroid/widget/EdgeEffect;

.field public H:Landroid/support/v7/widget/m$g;

.field public I:I

.field public J:I

.field public K:Landroid/view/VelocityTracker;

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public final Q:I

.field public final R:I

.field public S:F

.field public T:F

.field public U:Z

.field public final V:Landroid/support/v7/widget/m$u;

.field public W:Landroid/support/v7/widget/f;

.field public a0:Landroid/support/v7/widget/f$b;

.field public final b:Landroid/support/v7/widget/m$p;

.field public final b0:Landroid/support/v7/widget/m$s;

.field public c:Landroid/support/v7/widget/m$r;

.field public c0:Landroid/support/v7/widget/m$n;

.field public d:Landroid/support/v7/widget/b;

.field public d0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/m$n;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/support/v7/widget/c;

.field public e0:Z

.field public final f:Landroid/support/v7/widget/v;

.field public f0:Z

.field public g:Z

.field public g0:Landroid/support/v7/widget/m$h;

.field public final h:Landroid/graphics/Rect;

.field public h0:Z

.field public final i:Landroid/graphics/Rect;

.field public i0:Landroid/support/v7/widget/p;

.field public final j:Landroid/graphics/RectF;

.field public j0:Landroid/support/v7/widget/m$e;

.field public k:Landroid/support/v7/widget/m$j;

.field public k0:Ld0/h;

.field public l:Landroid/support/v7/widget/m$q;

.field public final l0:[I

.field public final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/m$i;",
            ">;"
        }
    .end annotation
.end field

.field public final m0:[I

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/m$m;",
            ">;"
        }
    .end annotation
.end field

.field public final n0:[I

.field public o:Landroid/support/v7/widget/m$m;

.field public final o0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/m$v;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public p0:Landroid/support/v7/widget/m$a;

.field public q:Z

.field public final q0:Landroid/support/v7/widget/m$c;

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public final x:Landroid/view/accessibility/AccessibilityManager;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/widget/m;->r0:[I

    new-array v1, v0, [I

    const v3, 0x10100eb

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/widget/m;->s0:[I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/support/v7/widget/m;->t0:Z

    sput-boolean v0, Landroid/support/v7/widget/m;->u0:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Landroid/support/v7/widget/m;->v0:[Ljava/lang/Class;

    new-instance v0, Landroid/support/v7/widget/m$b;

    invoke-direct {v0}, Landroid/support/v7/widget/m$b;-><init>()V

    sput-object v0, Landroid/support/v7/widget/m;->w0:Landroid/support/v7/widget/m$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const/4 v13, 0x0

    .line 1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-direct {v10, v11, v12, v13}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/support/v7/widget/m$p;

    invoke-direct {v1, v10}, Landroid/support/v7/widget/m$p;-><init>(Landroid/support/v7/widget/m;)V

    iput-object v1, v10, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    new-instance v1, Landroid/support/v7/widget/v;

    invoke-direct {v1}, Landroid/support/v7/widget/v;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/m;->f:Landroid/support/v7/widget/v;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/m;->i:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/m;->j:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    iput v13, v10, Landroid/support/v7/widget/m;->s:I

    iput-boolean v13, v10, Landroid/support/v7/widget/m;->y:Z

    iput-boolean v13, v10, Landroid/support/v7/widget/m;->z:Z

    iput v13, v10, Landroid/support/v7/widget/m;->A:I

    iput v13, v10, Landroid/support/v7/widget/m;->B:I

    new-instance v1, Landroid/support/v7/widget/m$f;

    invoke-direct {v1}, Landroid/support/v7/widget/m$f;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/m;->C:Landroid/support/v7/widget/m$f;

    new-instance v1, Landroid/support/v7/widget/d;

    invoke-direct {v1}, Landroid/support/v7/widget/d;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    iput v13, v10, Landroid/support/v7/widget/m;->I:I

    const/4 v1, -0x1

    iput v1, v10, Landroid/support/v7/widget/m;->J:I

    const/4 v2, 0x1

    iput v2, v10, Landroid/support/v7/widget/m;->S:F

    iput v2, v10, Landroid/support/v7/widget/m;->T:F

    const/4 v14, 0x1

    iput-boolean v14, v10, Landroid/support/v7/widget/m;->U:Z

    new-instance v2, Landroid/support/v7/widget/m$u;

    invoke-direct {v2, v10}, Landroid/support/v7/widget/m$u;-><init>(Landroid/support/v7/widget/m;)V

    iput-object v2, v10, Landroid/support/v7/widget/m;->V:Landroid/support/v7/widget/m$u;

    sget-boolean v2, Landroid/support/v7/widget/m;->u0:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v7/widget/f$b;

    invoke-direct {v2}, Landroid/support/v7/widget/f$b;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v10, Landroid/support/v7/widget/m;->a0:Landroid/support/v7/widget/f$b;

    new-instance v2, Landroid/support/v7/widget/m$s;

    invoke-direct {v2}, Landroid/support/v7/widget/m$s;-><init>()V

    iput-object v2, v10, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    iput-boolean v13, v10, Landroid/support/v7/widget/m;->e0:Z

    iput-boolean v13, v10, Landroid/support/v7/widget/m;->f0:Z

    new-instance v2, Landroid/support/v7/widget/m$h;

    invoke-direct {v2, v10}, Landroid/support/v7/widget/m$h;-><init>(Landroid/support/v7/widget/m;)V

    iput-object v2, v10, Landroid/support/v7/widget/m;->g0:Landroid/support/v7/widget/m$h;

    iput-boolean v13, v10, Landroid/support/v7/widget/m;->h0:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, v10, Landroid/support/v7/widget/m;->l0:[I

    new-array v3, v2, [I

    iput-object v3, v10, Landroid/support/v7/widget/m;->m0:[I

    new-array v3, v2, [I

    iput-object v3, v10, Landroid/support/v7/widget/m;->n0:[I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Landroid/support/v7/widget/m;->o0:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v7/widget/m$a;

    invoke-direct {v3, v10}, Landroid/support/v7/widget/m$a;-><init>(Landroid/support/v7/widget/m;)V

    iput-object v3, v10, Landroid/support/v7/widget/m;->p0:Landroid/support/v7/widget/m$a;

    new-instance v3, Landroid/support/v7/widget/m$c;

    invoke-direct {v3, v10}, Landroid/support/v7/widget/m$c;-><init>(Landroid/support/v7/widget/m;)V

    iput-object v3, v10, Landroid/support/v7/widget/m;->q0:Landroid/support/v7/widget/m$c;

    if-eqz v12, :cond_1

    sget-object v3, Landroid/support/v7/widget/m;->s0:[I

    invoke-virtual {v11, v12, v3, v13, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v10, Landroid/support/v7/widget/m;->g:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_1
    iput-boolean v14, v10, Landroid/support/v7/widget/m;->g:Z

    :goto_1
    invoke-virtual {v10, v14}, Landroid/view/View;->setScrollContainer(Z)V

    invoke-virtual {v10, v14}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, v10, Landroid/support/v7/widget/m;->P:I

    invoke-static {v3, v11}, Ld0/m;->b(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v4

    iput v4, v10, Landroid/support/v7/widget/m;->S:F

    invoke-static {v3, v11}, Ld0/m;->d(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v4

    iput v4, v10, Landroid/support/v7/widget/m;->T:F

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, v10, Landroid/support/v7/widget/m;->Q:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, v10, Landroid/support/v7/widget/m;->R:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v10, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v3, v10, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    iget-object v4, v10, Landroid/support/v7/widget/m;->g0:Landroid/support/v7/widget/m$h;

    .line 3
    iput-object v4, v3, Landroid/support/v7/widget/m$g;->a:Landroid/support/v7/widget/m$g$b;

    .line 4
    new-instance v3, Landroid/support/v7/widget/b;

    new-instance v4, Landroid/support/v7/widget/o;

    invoke-direct {v4, v10}, Landroid/support/v7/widget/o;-><init>(Landroid/support/v7/widget/m;)V

    invoke-direct {v3, v4}, Landroid/support/v7/widget/b;-><init>(Landroid/support/v7/widget/b$a;)V

    iput-object v3, v10, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    .line 5
    new-instance v3, Landroid/support/v7/widget/c;

    new-instance v4, Landroid/support/v7/widget/n;

    invoke-direct {v4, v10}, Landroid/support/v7/widget/n;-><init>(Landroid/support/v7/widget/m;)V

    invoke-direct {v3, v4}, Landroid/support/v7/widget/c;-><init>(Landroid/support/v7/widget/c$b;)V

    iput-object v3, v10, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    .line 6
    invoke-static/range {p0 .. p0}, Ld0/l;->f(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static/range {p0 .. p0}, Ld0/l;->j(Landroid/view/View;)V

    .line 7
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 8
    invoke-virtual {v10, v14}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 9
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, v10, Landroid/support/v7/widget/m;->x:Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, Landroid/support/v7/widget/p;

    invoke-direct {v3, v10}, Landroid/support/v7/widget/p;-><init>(Landroid/support/v7/widget/m;)V

    invoke-virtual {v10, v3}, Landroid/support/v7/widget/m;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/p;)V

    const/high16 v3, 0x40000

    if-eqz v12, :cond_c

    sget-object v4, La3/r0;->H:[I

    invoke-virtual {v11, v12, v4, v13, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    const/4 v4, 0x7

    invoke-virtual {v15, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v15, v14, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v1, :cond_5

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_5
    invoke-virtual {v15, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x6

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/e;

    const v3, 0x7f060083

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v3, 0x7f060085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v3, 0x7f060084

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x2

    move-object v1, v2

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Landroid/support/v7/widget/e;-><init>(Landroid/support/v7/widget/m;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set fast scroller without both required drawables."

    .line 11
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v19, 0x4

    const/16 v20, 0x2

    const/16 v18, 0x3

    :goto_3
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, ": Could not instantiate the LayoutManager: "

    if-eqz v16, :cond_b

    .line 14
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 15
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Landroid/support/v7/widget/m;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16
    :goto_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    goto :goto_6

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/support/v7/widget/m$j;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v5, Landroid/support/v7/widget/m;->v0:[Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v11, v1, v13

    aput-object v12, v1, v14

    aput-object v0, v1, v20

    aput-object v0, v1, v18
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    new-array v0, v13, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v1, 0x0

    :goto_7
    :try_start_3
    invoke-virtual {v5, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$j;

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/m;->setLayoutManager(Landroid/support/v7/widget/m$j;)V

    goto/16 :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Error creating LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 17
    :cond_b
    :goto_8
    sget-object v0, Landroid/support/v7/widget/m;->r0:[I

    invoke-virtual {v11, v12, v0, v13, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9

    :cond_c
    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_9
    invoke-virtual {v10, v14}, Landroid/support/v7/widget/m;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/m;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method private getScrollingChildHelper()Ld0/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k0:Ld0/h;

    if-nez v0, :cond_0

    new-instance v0, Ld0/h;

    invoke-direct {v0, p0}, Ld0/h;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/m;->k0:Ld0/h;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->k0:Ld0/h;

    return-object v0
.end method

.method public static s(Landroid/view/View;)Landroid/support/v7/widget/m$v;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/m$k;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final A(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/m;->J:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/m;->N:I

    iput v1, p0, Landroid/support/v7/widget/m;->L:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/m;->O:I

    iput p1, p0, Landroid/support/v7/widget/m;->M:I

    :cond_1
    return-void
.end method

.method public final B()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/m$g;->d()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/m$j;->H(Landroid/support/v7/widget/m$p;)V

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/m$j;->I(Landroid/support/v7/widget/m$p;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$p;->b()V

    return-void
.end method

.method public final C(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/m$k;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v7/widget/m$k;

    iget-boolean v1, v0, Landroid/support/v7/widget/m$k;->b:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v8, p0, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->r:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/m$j;->J(Landroid/support/v7/widget/m;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m;->f(I)V

    .line 1
    iget-object v1, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method public final E(IILandroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->g()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/m;->l0:[I

    const/4 v7, 0x0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Ld0/h;->d(IIII[II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget p1, p0, Landroid/support/v7/widget/m;->N:I

    iget-object p2, p0, Landroid/support/v7/widget/m;->l0:[I

    aget v0, p2, v2

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/m;->N:I

    iget p1, p0, Landroid/support/v7/widget/m;->O:I

    aget v0, p2, v1

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/m;->O:I

    if-eqz p3, :cond_1

    aget p1, p2, v2

    int-to-float p1, p1

    aget p2, p2, v1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/m;->n0:[I

    aget p2, p1, v2

    iget-object p3, p0, Landroid/support/v7/widget/m;->l0:[I

    aget v0, p3, v2

    add-int/2addr p2, v0

    aput p2, p1, v2

    aget p2, p1, v1

    aget p3, p3, v1

    add-int/2addr p2, p3

    aput p2, p1, v1

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    if-eqz p3, :cond_9

    const/16 v0, 0x2002

    .line 3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    .line 4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-gez v6, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->m()V

    iget-object v2, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    neg-float v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr p3, v8

    sub-float p3, v4, p3

    goto :goto_1

    :cond_4
    cmpl-float v7, v3, v5

    if-lez v7, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->n()V

    iget-object v2, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v3, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr p3, v8

    .line 6
    :goto_1
    invoke-virtual {v2, v7, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v2, 0x1

    :cond_5
    if-gez v6, :cond_6

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->o()V

    iget-object p3, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    neg-float v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 8
    invoke-virtual {p3, v2, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_2

    :cond_6
    cmpl-float p3, v3, v5

    if-lez p3, :cond_7

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->l()V

    iget-object p3, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    sub-float/2addr v4, v0

    .line 10
    invoke-virtual {p3, v2, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    if-nez v1, :cond_8

    cmpl-float p3, v3, v5

    if-nez p3, :cond_8

    if-eqz p3, :cond_9

    .line 11
    :cond_8
    sget-object p3, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 13
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/m;->e(II)V

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method public final F(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/m;->u:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move v5, p1

    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->c()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, p2

    :goto_1
    if-nez v5, :cond_4

    if-eqz v6, :cond_b

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/m;->V:Landroid/support/v7/widget/m$u;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int v4, v5, v5

    mul-int v7, v6, v6

    add-int/2addr v7, v4

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v4, v7

    iget-object v7, p1, Landroid/support/v7/widget/m$u;->h:Landroid/support/v7/widget/m;

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    :goto_3
    div-int/lit8 v8, v7, 0x2

    int-to-float v4, v4

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v4, v4, v9

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v8, v8

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v4, v10

    const v10, 0x3ef1463b

    mul-float v4, v4, v10

    float-to-double v10, v4

    .line 3
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float v4, v4, v8

    add-float/2addr v4, v8

    if-lez v3, :cond_7

    const/high16 p2, 0x447a0000    # 1000.0f

    int-to-float v0, v3

    div-float/2addr v4, v0

    .line 4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move p2, v0

    :goto_4
    int-to-float p2, p2

    div-float/2addr p2, v7

    add-float/2addr p2, v9

    const/high16 v0, 0x43960000    # 300.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    :goto_5
    const/16 v0, 0x7d0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 5
    sget-object p2, Landroid/support/v7/widget/m;->w0:Landroid/support/v7/widget/m$b;

    .line 6
    iget-object v0, p1, Landroid/support/v7/widget/m$u;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p2, :cond_9

    iput-object p2, p1, Landroid/support/v7/widget/m$u;->e:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p1, Landroid/support/v7/widget/m$u;->h:Landroid/support/v7/widget/m;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p1, Landroid/support/v7/widget/m$u;->d:Landroid/widget/OverScroller;

    :cond_9
    iget-object p2, p1, Landroid/support/v7/widget/m$u;->h:Landroid/support/v7/widget/m;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/m;->setScrollState(I)V

    iput v1, p1, Landroid/support/v7/widget/m$u;->c:I

    iput v1, p1, Landroid/support/v7/widget/m$u;->b:I

    iget-object v2, p1, Landroid/support/v7/widget/m$u;->d:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_a

    iget-object p2, p1, Landroid/support/v7/widget/m$u;->d:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    :cond_a
    invoke-virtual {p1}, Landroid/support/v7/widget/m$u;->a()V

    :cond_b
    :goto_6
    return-void
.end method

.method public final G()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/m;->s:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/m;->s:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/m;->t:Z

    :cond_0
    return-void
.end method

.method public final H(II)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld0/h;->h(II)Z

    move-result p1

    return p1
.end method

.method public final I(Z)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/m;->s:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Landroid/support/v7/widget/m;->s:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/widget/m;->u:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Landroid/support/v7/widget/m;->t:Z

    :cond_1
    iget v2, p0, Landroid/support/v7/widget/m;->s:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/m;->t:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/m;->u:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    :cond_2
    iget-boolean p1, p0, Landroid/support/v7/widget/m;->u:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Landroid/support/v7/widget/m;->t:Z

    :cond_3
    sub-int/2addr v2, v1

    iput v2, p0, Landroid/support/v7/widget/m;->s:I

    return-void
.end method

.method public final J()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m;->setScrollState(I)V

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/m;->V:Landroid/support/v7/widget/m$u;

    .line 2
    iget-object v1, v0, Landroid/support/v7/widget/m$u;->h:Landroid/support/v7/widget/m;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroid/support/v7/widget/m$u;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/m;->B:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, ""

    .line 3
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->D()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m;->setScrollState(I)V

    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/m$k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    check-cast p1, Landroid/support/v7/widget/m$k;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/m$j;->d(Landroid/support/v7/widget/m$k;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v1, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/m$j;->f(Landroid/support/v7/widget/m$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v1, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/m$j;->g(Landroid/support/v7/widget/m$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v1, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/m$j;->h(Landroid/support/v7/widget/m$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v1, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/m$j;->i(Landroid/support/v7/widget/m$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v1, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/m$j;->j(Landroid/support/v7/widget/m$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v1, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/m$j;->k(Landroid/support/v7/widget/m$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ld0/h;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld0/h;->b(FF)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ld0/h;->c(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 7

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ld0/h;->d(IIII[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/m$i;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/m$i;->d(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v3, p0, Landroid/support/v7/widget/m;->g:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v4, p0, Landroid/support/v7/widget/m;->g:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-boolean v5, p0, Landroid/support/v7/widget/m;->g:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    or-int/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Landroid/support/v7/widget/m;->g:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v5, v6

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    :goto_7
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v1, 0x1

    :cond_b
    or-int/2addr v3, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v3, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    invoke-virtual {p1}, Landroid/support/v7/widget/m$g;->e()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    move v2, v3

    :goto_8
    if-eqz v2, :cond_e

    sget-object p1, Ld0/l;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_e
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public final e(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    sget-object p1, Ld0/l;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method public final f(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld0/h;->i(I)V

    return-void
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/m;->C(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    if-ne v0, p0, :cond_2

    goto/16 :goto_4

    .line 1
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m;->q(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto/16 :goto_4

    :cond_3
    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/m;->q(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/m;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/m;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v3}, Landroid/support/v7/widget/m$j;->s()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v2, :cond_6

    const/4 v3, -0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/m;->h:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/support/v7/widget/m;->i:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-lt v6, v8, :cond_7

    iget v9, v5, Landroid/graphics/Rect;->right:I

    if-gt v9, v8, :cond_8

    :cond_7
    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_8

    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    if-gt v9, v10, :cond_9

    if-lt v6, v10, :cond_a

    :cond_9
    if-le v6, v8, :cond_a

    const/4 v6, -0x1

    goto :goto_1

    :cond_a
    const/4 v6, 0x0

    :goto_1
    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-lt v8, v9, :cond_b

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v9, :cond_c

    :cond_b
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_c

    const/4 v4, 0x1

    goto :goto_2

    :cond_c
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v7, :cond_d

    if-lt v8, v7, :cond_e

    :cond_d
    if-le v8, v9, :cond_e

    goto :goto_2

    :cond_e
    const/4 v4, 0x0

    :goto_2
    if-eq p2, v2, :cond_15

    const/4 v5, 0x2

    if-eq p2, v5, :cond_14

    const/16 v3, 0x11

    if-eq p2, v3, :cond_13

    const/16 v3, 0x21

    if-eq p2, v3, :cond_12

    const/16 v3, 0x42

    if-eq p2, v3, :cond_11

    const/16 v3, 0x82

    if-ne p2, v3, :cond_10

    if-lez v4, :cond_16

    :cond_f
    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    if-lez v6, :cond_16

    goto :goto_3

    :cond_12
    if-gez v4, :cond_16

    goto :goto_3

    :cond_13
    if-gez v6, :cond_16

    goto :goto_3

    :cond_14
    if-gtz v4, :cond_f

    if-nez v4, :cond_16

    mul-int v6, v6, v3

    if-ltz v6, :cond_16

    goto :goto_3

    :cond_15
    if-ltz v4, :cond_f

    if-nez v4, :cond_16

    mul-int v6, v6, v3

    if-gtz v6, :cond_16

    goto :goto_3

    :cond_16
    :goto_4
    if-eqz v1, :cond_17

    goto :goto_5

    .line 2
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->r:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->i()V

    .line 5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    return-void

    .line 6
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->i()V

    .line 8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->l()Landroid/support/v7/widget/m$k;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/m$j;->m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/m$k;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/m$j;->n(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/m$k;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    .line 6
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroid/support/v7/widget/m$d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->j0:Landroid/support/v7/widget/m$e;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0}, Landroid/support/v7/widget/m$e;->a()I

    move-result p1

    return p1
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->g:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/p;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->i0:Landroid/support/v7/widget/p;

    return-object v0
.end method

.method public getEdgeEffectFactory()Landroid/support/v7/widget/m$f;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->C:Landroid/support/v7/widget/m$f;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/m$g;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/m$j;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/m;->R:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/m;->Q:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    sget-boolean v0, Landroid/support/v7/widget/m;->u0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/m$l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->U:Z

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/m$o;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$p;->d()Landroid/support/v7/widget/m$o;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/m;->I:I

    return v0
.end method

.method public final h(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    .line 2
    invoke-static {p1, v1, v0}, Landroid/support/v7/widget/m$j;->e(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 4
    invoke-static {p2, v1, v0}, Landroid/support/v7/widget/m$j;->e(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/h;->f(I)Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 2

    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->p:Z

    return v0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    iget-boolean v0, v0, Ld0/h;->d:Z

    return v0
.end method

.method public final j(II[I[II)Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ld0/h;->c(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final k(IIII[II)Z
    .locals 7

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Ld0/h;->d(IIII[II)Z

    move-result p1

    return p1
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->C:Landroid/support/v7/widget/m$f;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/m$f;->a(Landroid/support/v7/widget/m;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/m;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->C:Landroid/support/v7/widget/m$f;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/m$f;->a(Landroid/support/v7/widget/m;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/m;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->C:Landroid/support/v7/widget/m$f;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/m$f;->a(Landroid/support/v7/widget/m;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/m;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->C:Landroid/support/v7/widget/m$f;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/m$f;->a(Landroid/support/v7/widget/m;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/m;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/m;->A:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/m;->p:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/m;->r:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/m;->r:Z

    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v2, :cond_1

    .line 1
    iput-boolean v1, v2, Landroid/support/v7/widget/m$j;->h:Z

    .line 2
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/m;->h0:Z

    sget-boolean v0, Landroid/support/v7/widget/m;->u0:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/support/v7/widget/f;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/f;

    iput-object v1, p0, Landroid/support/v7/widget/m;->W:Landroid/support/v7/widget/f;

    if-nez v1, :cond_3

    new-instance v1, Landroid/support/v7/widget/f;

    invoke-direct {v1}, Landroid/support/v7/widget/f;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/m;->W:Landroid/support/v7/widget/f;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    move v2, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/m;->W:Landroid/support/v7/widget/f;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v2

    float-to-long v2, v3

    iput-wide v2, v1, Landroid/support/v7/widget/f;->d:J

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/m;->W:Landroid/support/v7/widget/f;

    .line 5
    iget-object v0, v0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/m$g;->d()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->J()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/m;->p:Z

    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v1, :cond_1

    .line 1
    iput-boolean v0, v1, Landroid/support/v7/widget/m$j;->h:Z

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/m$j;->B(Landroid/support/v7/widget/m;)V

    .line 2
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/m;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->p0:Landroid/support/v7/widget/m$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/m;->f:Landroid/support/v7/widget/v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :goto_0
    sget-object v0, Landroid/support/v7/widget/v$a;->d:Lc0/h;

    invoke-virtual {v0}, Lc0/h;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    sget-boolean v0, Landroid/support/v7/widget/m;->u0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/m;->W:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, v0, Landroid/support/v7/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/support/v7/widget/m;->W:Landroid/support/v7/widget/f;

    :cond_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/m$i;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/m;->u:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v3}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v0, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    const/4 v3, 0x0

    :goto_2
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Landroid/support/v7/widget/m;->S:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroid/support/v7/widget/m;->T:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/support/v7/widget/m;->E(IILandroid/view/MotionEvent;)V

    :cond_8
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/widget/m;->o:Landroid/support/v7/widget/m$m;

    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/m$m;

    invoke-interface {v6, p1}, Landroid/support/v7/widget/m$m;->a(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v0, v2, :cond_3

    iput-object v6, p0, Landroid/support/v7/widget/m;->o:Landroid/support/v7/widget/m$m;

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->c()V

    return v5

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v3}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    if-nez v4, :cond_7

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    if-eqz v4, :cond_10

    if-eq v4, v5, :cond_f

    if-eq v4, v8, :cond_b

    if-eq v4, v2, :cond_a

    const/4 v0, 0x5

    if-eq v4, v0, :cond_9

    const/4 v0, 0x6

    if-eq v4, v0, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/m;->A(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/m;->N:I

    iput v0, p0, Landroid/support/v7/widget/m;->L:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/m;->O:I

    iput p1, p0, Landroid/support/v7/widget/m;->M:I

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->c()V

    goto/16 :goto_3

    :cond_b
    iget v2, p0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_c

    const-string p1, "Error processing scroll; pointer index for id "

    .line 3
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    iget v0, p0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iget v2, p0, Landroid/support/v7/widget/m;->I:I

    if-eq v2, v5, :cond_14

    iget v2, p0, Landroid/support/v7/widget/m;->L:I

    sub-int v2, v4, v2

    iget v6, p0, Landroid/support/v7/widget/m;->M:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_d

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/m;->P:I

    if-le v0, v2, :cond_d

    iput v4, p0, Landroid/support/v7/widget/m;->N:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    :goto_2
    if-eqz v3, :cond_e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/m;->P:I

    if-le v2, v3, :cond_e

    iput p1, p0, Landroid/support/v7/widget/m;->O:I

    const/4 v0, 0x1

    :cond_e
    if-eqz v0, :cond_14

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/m;->setScrollState(I)V

    goto :goto_3

    :cond_f
    iget-object p1, p0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/m;->f(I)V

    goto :goto_3

    :cond_10
    iget-boolean v2, p0, Landroid/support/v7/widget/m;->v:Z

    if-eqz v2, :cond_11

    iput-boolean v1, p0, Landroid/support/v7/widget/m;->v:Z

    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/m;->N:I

    iput v2, p0, Landroid/support/v7/widget/m;->L:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/m;->O:I

    iput p1, p0, Landroid/support/v7/widget/m;->M:I

    iget p1, p0, Landroid/support/v7/widget/m;->I:I

    if-ne p1, v8, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/m;->setScrollState(I)V

    :cond_12
    iget-object p1, p0, Landroid/support/v7/widget/m;->n0:[I

    aput v1, p1, v5

    aput v1, p1, v1

    if-eqz v3, :cond_13

    or-int/lit8 v0, v0, 0x2

    :cond_13
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/m;->H(II)Z

    :cond_14
    :goto_3
    iget p1, p0, Landroid/support/v7/widget/m;->I:I

    if-ne p1, v5, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    const-string p1, "RV OnLayout"

    .line 1
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->i()V

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/support/v7/widget/m;->r:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/m;->h(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/m$j;->D(II)V

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/m;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/m$j;->D(II)V

    return-void

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    iget-boolean v2, v1, Landroid/support/v7/widget/m$s;->h:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->G()V

    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/m$j;->D(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m;->I(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    iput-boolean v0, p1, Landroid/support/v7/widget/m$s;->e:Z

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/m$r;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroid/support/v7/widget/m$r;

    iput-object p1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/m$r;

    .line 1
    iget-object p1, p1, Ld0/a;->b:Landroid/os/Parcelable;

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/m$r;

    iget-object v0, v0, Landroid/support/v7/widget/m$r;->d:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/m$j;->E(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/m$r;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/m$r;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/m$r;

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v1, Landroid/support/v7/widget/m$r;->d:Landroid/os/Parcelable;

    iput-object v1, v0, Landroid/support/v7/widget/m$r;->d:Landroid/os/Parcelable;

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/m$j;->F()Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/support/v7/widget/m$r;->d:Landroid/os/Parcelable;

    :goto_1
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->v()V

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/support/v7/widget/m;->u:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2e

    iget-boolean v2, v0, Landroid/support/v7/widget/m;->v:Z

    if-eqz v2, :cond_0

    goto/16 :goto_10

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v4, v0, Landroid/support/v7/widget/m;->o:Landroid/support/v7/widget/m$m;

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    const/4 v7, 0x0

    if-nez v2, :cond_1

    iput-object v7, v0, Landroid/support/v7/widget/m;->o:Landroid/support/v7/widget/m$m;

    goto :goto_0

    :cond_1
    invoke-interface {v4, v1}, Landroid/support/v7/widget/m$m;->c(Landroid/view/MotionEvent;)V

    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_4

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    iget-object v7, v0, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/m$m;

    invoke-interface {v7, v1}, Landroid/support/v7/widget/m$m;->a(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    :goto_2
    iput-object v7, v0, Landroid/support/v7/widget/m;->o:Landroid/support/v7/widget/m$m;

    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/m;->c()V

    return v6

    :cond_7
    iget-object v2, v0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-nez v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {v2}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v2

    iget-object v4, v0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v4}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v4

    iget-object v7, v0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    if-nez v7, :cond_9

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    if-nez v8, :cond_a

    iget-object v10, v0, Landroid/support/v7/widget/m;->n0:[I

    aput v3, v10, v6

    aput v3, v10, v3

    :cond_a
    iget-object v10, v0, Landroid/support/v7/widget/m;->n0:[I

    aget v11, v10, v3

    int-to-float v11, v11

    aget v10, v10, v6

    int-to-float v10, v10

    invoke-virtual {v7, v11, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v8, :cond_2a

    const-string v11, "RecyclerView"

    const/4 v12, 0x2

    if-eq v8, v6, :cond_19

    if-eq v8, v12, :cond_e

    if-eq v8, v5, :cond_d

    const/4 v2, 0x5

    if-eq v8, v2, :cond_c

    const/4 v2, 0x6

    if-eq v8, v2, :cond_b

    goto/16 :goto_f

    :cond_b
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/m;->A(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    :cond_c
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, v0, Landroid/support/v7/widget/m;->N:I

    iput v2, v0, Landroid/support/v7/widget/m;->L:I

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v7/widget/m;->O:I

    iput v1, v0, Landroid/support/v7/widget/m;->M:I

    goto/16 :goto_f

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/m;->c()V

    goto/16 :goto_f

    :cond_e
    iget v5, v0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_f

    const-string v1, "Error processing scroll; pointer index for id "

    .line 3
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget v2, v0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    iget v5, v0, Landroid/support/v7/widget/m;->N:I

    sub-int/2addr v5, v8

    iget v9, v0, Landroid/support/v7/widget/m;->O:I

    sub-int v15, v9, v1

    iget-object v12, v0, Landroid/support/v7/widget/m;->m0:[I

    iget-object v13, v0, Landroid/support/v7/widget/m;->l0:[I

    const/4 v14, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v9

    move v10, v5

    move v11, v15

    invoke-virtual/range {v9 .. v14}, Ld0/h;->c(II[I[II)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 6
    iget-object v9, v0, Landroid/support/v7/widget/m;->m0:[I

    aget v10, v9, v3

    sub-int/2addr v5, v10

    aget v9, v9, v6

    sub-int/2addr v15, v9

    iget-object v9, v0, Landroid/support/v7/widget/m;->l0:[I

    aget v10, v9, v3

    int-to-float v10, v10

    aget v9, v9, v6

    int-to-float v9, v9

    invoke-virtual {v7, v10, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v9, v0, Landroid/support/v7/widget/m;->n0:[I

    aget v10, v9, v3

    iget-object v11, v0, Landroid/support/v7/widget/m;->l0:[I

    aget v12, v11, v3

    add-int/2addr v10, v12

    aput v10, v9, v3

    aget v10, v9, v6

    aget v11, v11, v6

    add-int/2addr v10, v11

    aput v10, v9, v6

    :cond_10
    iget v9, v0, Landroid/support/v7/widget/m;->I:I

    if-eq v9, v6, :cond_15

    if-eqz v2, :cond_12

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v0, Landroid/support/v7/widget/m;->P:I

    if-le v9, v10, :cond_12

    if-lez v5, :cond_11

    sub-int/2addr v5, v10

    goto :goto_4

    :cond_11
    add-int/2addr v5, v10

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_12
    const/4 v9, 0x0

    :goto_5
    if-eqz v4, :cond_14

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v0, Landroid/support/v7/widget/m;->P:I

    if-le v10, v11, :cond_14

    if-lez v15, :cond_13

    sub-int/2addr v15, v11

    goto :goto_6

    :cond_13
    add-int/2addr v15, v11

    :goto_6
    const/4 v9, 0x1

    :cond_14
    if-eqz v9, :cond_15

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/m;->setScrollState(I)V

    :cond_15
    iget v9, v0, Landroid/support/v7/widget/m;->I:I

    if-ne v9, v6, :cond_2c

    iget-object v9, v0, Landroid/support/v7/widget/m;->l0:[I

    aget v10, v9, v3

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/support/v7/widget/m;->N:I

    aget v8, v9, v6

    sub-int/2addr v1, v8

    iput v1, v0, Landroid/support/v7/widget/m;->O:I

    if-eqz v2, :cond_16

    move v1, v5

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    :goto_7
    if-eqz v4, :cond_17

    move v2, v15

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v0, v1, v2, v7}, Landroid/support/v7/widget/m;->E(IILandroid/view/MotionEvent;)V

    iget-object v1, v0, Landroid/support/v7/widget/m;->W:Landroid/support/v7/widget/f;

    if-eqz v1, :cond_2c

    if-nez v5, :cond_18

    if-eqz v15, :cond_2c

    :cond_18
    invoke-virtual {v1, v0, v5, v15}, Landroid/support/v7/widget/f;->a(Landroid/support/v7/widget/m;II)V

    goto/16 :goto_f

    :cond_19
    iget-object v1, v0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, v0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v8, v0, Landroid/support/v7/widget/m;->R:I

    int-to-float v8, v8

    invoke-virtual {v1, v5, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v1, 0x0

    if-eqz v2, :cond_1a

    iget-object v2, v0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    iget v5, v0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    :goto_9
    if-eqz v4, :cond_1b

    iget-object v4, v0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    iget v5, v0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v4, v4

    goto :goto_a

    :cond_1b
    const/4 v4, 0x0

    :goto_a
    cmpl-float v5, v2, v1

    if-nez v5, :cond_1c

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_28

    :cond_1c
    float-to-int v1, v2

    float-to-int v2, v4

    .line 7
    iget-object v4, v0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-nez v4, :cond_1d

    const-string v1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1d
    iget-boolean v5, v0, Landroid/support/v7/widget/m;->u:Z

    if-eqz v5, :cond_1e

    goto/16 :goto_d

    :cond_1e
    invoke-virtual {v4}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v5}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v5

    if-eqz v4, :cond_1f

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Landroid/support/v7/widget/m;->Q:I

    if-ge v8, v9, :cond_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    if-eqz v5, :cond_21

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Landroid/support/v7/widget/m;->Q:I

    if-ge v8, v9, :cond_22

    :cond_21
    const/4 v2, 0x0

    :cond_22
    if-nez v1, :cond_23

    if-nez v2, :cond_23

    goto :goto_d

    :cond_23
    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/m;->dispatchNestedPreFling(FF)Z

    move-result v10

    if-nez v10, :cond_27

    if-nez v4, :cond_25

    if-eqz v5, :cond_24

    goto :goto_b

    :cond_24
    const/4 v10, 0x0

    goto :goto_c

    :cond_25
    :goto_b
    const/4 v10, 0x1

    :goto_c
    invoke-virtual {v0, v8, v9, v10}, Landroid/support/v7/widget/m;->dispatchNestedFling(FFZ)Z

    if-eqz v10, :cond_27

    if-eqz v5, :cond_26

    or-int/lit8 v4, v4, 0x2

    :cond_26
    invoke-virtual {v0, v4, v6}, Landroid/support/v7/widget/m;->H(II)Z

    iget v4, v0, Landroid/support/v7/widget/m;->R:I

    neg-int v5, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    iget v1, v0, Landroid/support/v7/widget/m;->R:I

    neg-int v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    iget-object v1, v0, Landroid/support/v7/widget/m;->V:Landroid/support/v7/widget/m$u;

    .line 8
    iget-object v2, v1, Landroid/support/v7/widget/m$u;->h:Landroid/support/v7/widget/m;

    invoke-virtual {v2, v12}, Landroid/support/v7/widget/m;->setScrollState(I)V

    iput v3, v1, Landroid/support/v7/widget/m$u;->c:I

    iput v3, v1, Landroid/support/v7/widget/m$u;->b:I

    iget-object v13, v1, Landroid/support/v7/widget/m$u;->d:Landroid/widget/OverScroller;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v18, -0x80000000

    const v19, 0x7fffffff

    const/high16 v20, -0x80000000

    const v21, 0x7fffffff

    invoke-virtual/range {v13 .. v21}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {v1}, Landroid/support/v7/widget/m$u;->a()V

    const/4 v1, 0x1

    goto :goto_e

    :cond_27
    :goto_d
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_29

    .line 9
    :cond_28
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/m;->setScrollState(I)V

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/m;->D()V

    const/4 v3, 0x1

    goto :goto_f

    :cond_2a
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v0, Landroid/support/v7/widget/m;->J:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v0, Landroid/support/v7/widget/m;->N:I

    iput v5, v0, Landroid/support/v7/widget/m;->L:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v7/widget/m;->O:I

    iput v1, v0, Landroid/support/v7/widget/m;->M:I

    if-eqz v4, :cond_2b

    or-int/lit8 v2, v2, 0x2

    :cond_2b
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/m;->H(II)Z

    :cond_2c
    :goto_f
    if-nez v3, :cond_2d

    iget-object v1, v0, Landroid/support/v7/widget/m;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2d
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    return v6

    :cond_2e
    :goto_10
    return v3
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    const-string v0, " "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q(Landroid/view/View;)Landroid/view/View;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final r(Landroid/support/v7/widget/m$v;)I
    .locals 6

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/m$v;->f(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/support/v7/widget/m$v;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    iget p1, p1, Landroid/support/v7/widget/m$v;->a:I

    iget-object v1, v0, Landroid/support/v7/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    iget-object v3, v0, Landroid/support/v7/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/b$b;

    iget v4, v3, Landroid/support/v7/widget/b$b;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v3, Landroid/support/v7/widget/b$b;->b:I

    if-ne v4, p1, :cond_2

    iget p1, v3, Landroid/support/v7/widget/b$b;->d:I

    goto :goto_1

    :cond_2
    if-ge v4, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget v3, v3, Landroid/support/v7/widget/b$b;->d:I

    if-gt v3, p1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget v4, v3, Landroid/support/v7/widget/b$b;->b:I

    if-gt v4, p1, :cond_7

    iget v3, v3, Landroid/support/v7/widget/b$b;->d:I

    add-int/2addr v4, v3

    if-le v4, p1, :cond_5

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v3

    goto :goto_1

    :cond_6
    iget v4, v3, Landroid/support/v7/widget/b$b;->b:I

    if-gt v4, p1, :cond_7

    iget v3, v3, Landroid/support/v7/widget/b$b;->d:I

    add-int/2addr p1, v3

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    const/4 p1, -0x1

    :cond_9
    return p1
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/m$v;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1
    iget v1, v0, Landroid/support/v7/widget/m$v;->f:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroid/support/v7/widget/m$v;->f:I

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/m$v;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    invoke-static {p1}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->w()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/m;->C(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/m$j;->J(Landroid/support/v7/widget/m;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/m$m;

    invoke-interface {v2}, Landroid/support/v7/widget/m$m;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/m;->s:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->u:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/m;->t:Z

    :goto_0
    return-void
.end method

.method public final scrollBy(II)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/m;->u:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/m$j;->b()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    invoke-virtual {v1}, Landroid/support/v7/widget/m$j;->c()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/m;->E(IILandroid/view/MotionEvent;)V

    :cond_5
    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 3
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/m;->w:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/m;->w:I

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/m;->i0:Landroid/support/v7/widget/p;

    invoke-static {p0, p1}, Ld0/l;->i(Landroid/view/View;Ld0/b;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/m$d;)V
    .locals 5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/m;->setLayoutFrozen(Z)V

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->B()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    .line 2
    iget-object v1, v0, Landroid/support/v7/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b;->d(Ljava/util/List;)V

    iget-object v1, v0, Landroid/support/v7/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b;->d(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    .line 4
    invoke-virtual {v0}, Landroid/support/v7/widget/m$p;->b()V

    invoke-virtual {v0}, Landroid/support/v7/widget/m$p;->d()Landroid/support/v7/widget/m$o;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, v0, Landroid/support/v7/widget/m$o;->b:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, v0, Landroid/support/v7/widget/m$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/m$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/m$o$a;

    iget-object v2, v2, Landroid/support/v7/widget/m$o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/m$s;->d:Z

    .line 8
    iget-boolean v0, p0, Landroid/support/v7/widget/m;->z:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/v7/widget/m;->z:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/m;->y:Z

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x6

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/c;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->x()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    .line 10
    iget-object v1, v0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge p1, v1, :cond_3

    iget-object v3, v0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/m$v;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/m$v;->b(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/m$v;->a(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, v0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$p;->e()V

    .line 11
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/m$e;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->j0:Landroid/support/v7/widget/m$e;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/m;->j0:Landroid/support/v7/widget/m$e;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->g:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->v()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/m;->g:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Landroid/support/v7/widget/m;->r:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Landroid/support/v7/widget/m$f;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/support/v7/widget/m;->C:Landroid/support/v7/widget/m$f;

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->v()V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/m;->q:Z

    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/m$g;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/m$g;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Landroid/support/v7/widget/m$g;->a:Landroid/support/v7/widget/m$g$b;

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->g0:Landroid/support/v7/widget/m$h;

    .line 3
    iput-object v0, p1, Landroid/support/v7/widget/m$g;->a:Landroid/support/v7/widget/m$g$b;

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    iput p1, v0, Landroid/support/v7/widget/m$p;->e:I

    invoke-virtual {v0}, Landroid/support/v7/widget/m$p;->j()V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->u:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m;->b(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/m;->u:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/m;->t:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/m;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/m;->u:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/m;->v:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->J()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/m$j;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->J()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/m$g;->d()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v2, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/m$j;->H(Landroid/support/v7/widget/m$p;)V

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    iget-object v2, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/m$j;->I(Landroid/support/v7/widget/m$p;)V

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$p;->b()V

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    .line 1
    iput-boolean v1, v0, Landroid/support/v7/widget/m$j;->h:Z

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/m$j;->B(Landroid/support/v7/widget/m;)V

    .line 2
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/m$j;->L(Landroid/support/v7/widget/m;)V

    iput-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/m$p;->b()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    .line 3
    iget-object v2, v0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/c$a;

    const-wide/16 v3, 0x0

    .line 4
    iput-wide v3, v2, Landroid/support/v7/widget/c$a;->a:J

    iget-object v2, v2, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/support/v7/widget/c$a;->e()V

    .line 5
    :cond_4
    iget-object v2, v0, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    iget-object v3, v0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    iget-object v4, v0, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    check-cast v3, Landroid/support/v7/widget/n;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v4}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    .line 7
    iget-object v3, v0, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v0, v0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v0, Landroid/support/v7/widget/n;

    .line 8
    invoke-virtual {v0}, Landroid/support/v7/widget/n;->b()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/n;->a(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v3}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, v0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/m;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 11
    iput-object p1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz p1, :cond_8

    iget-object v0, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    if-nez v0, :cond_7

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/m$j;->L(Landroid/support/v7/widget/m;)V

    iget-boolean p1, p0, Landroid/support/v7/widget/m;->p:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Landroid/support/v7/widget/m$j;->h:Z

    goto :goto_3

    .line 13
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    iget-object p1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-virtual {p1}, Landroid/support/v7/widget/m$p;->j()V

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld0/h;->g(Z)V

    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/m$l;)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/m$n;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/support/v7/widget/m;->c0:Landroid/support/v7/widget/m$n;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/m;->U:Z

    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/m$o;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    .line 1
    iget-object v1, v0, Landroid/support/v7/widget/m$p;->g:Landroid/support/v7/widget/m$o;

    if-eqz v1, :cond_0

    .line 2
    iget v2, v1, Landroid/support/v7/widget/m$o;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/m$o;->b:I

    .line 3
    :cond_0
    iput-object p1, v0, Landroid/support/v7/widget/m$p;->g:Landroid/support/v7/widget/m$o;

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroid/support/v7/widget/m$p;->h:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getAdapter()Landroid/support/v7/widget/m$d;

    :cond_1
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/m$q;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/m;->l:Landroid/support/v7/widget/m$q;

    return-void
.end method

.method public setScrollState(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/m;->I:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/m;->I:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/m;->V:Landroid/support/v7/widget/m$u;

    .line 2
    iget-object v1, v0, Landroid/support/v7/widget/m$u;->h:Landroid/support/v7/widget/m;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroid/support/v7/widget/m$u;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/support/v7/widget/m$j;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/m$j;->G(I)V

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/m;->d0:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/m;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    :goto_1
    iput p1, p0, Landroid/support/v7/widget/m;->P:I

    return-void
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/m$t;)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ld0/h;->h(II)Z

    move-result p1

    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/h;->i(I)V

    return-void
.end method

.method public final t(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/m;->getScrollingChildHelper()Ld0/h;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ld0/h;->f(I)Z

    move-result p1

    return p1
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->r:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/m;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final v()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/m;->G:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/m;->E:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/m;->F:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/m;->D:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public final w()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/m;->A:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/m;->e:Landroid/support/v7/widget/c;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/c;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/m$k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/m$k;->b:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    iget-object v2, v0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/m$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method

.method public final y()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/m;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/m;->A:I

    return-void
.end method

.method public final z(Z)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/m;->A:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/m;->A:I

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/m;->A:I

    if-eqz p1, :cond_3

    .line 1
    iget p1, p0, Landroid/support/v7/widget/m;->w:I

    iput v0, p0, Landroid/support/v7/widget/m;->w:I

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/m;->x:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/m;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/m;->o0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/m;->o0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/m;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/m$v;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
