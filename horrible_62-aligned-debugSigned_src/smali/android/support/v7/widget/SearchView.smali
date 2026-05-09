.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/h;
.source "SourceFile"

# interfaces
.implements Lm0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$k;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$p;,
        Landroid/support/v7/widget/SearchView$o;,
        Landroid/support/v7/widget/SearchView$n;,
        Landroid/support/v7/widget/SearchView$l;,
        Landroid/support/v7/widget/SearchView$m;
    }
.end annotation


# static fields
.field public static final r0:Landroid/support/v7/widget/SearchView$k;


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:Landroid/graphics/Rect;

.field public C:[I

.field public D:[I

.field public final E:Landroid/widget/ImageView;

.field public final F:Landroid/graphics/drawable/Drawable;

.field public final G:I

.field public final H:I

.field public final I:Landroid/content/Intent;

.field public final J:Landroid/content/Intent;

.field public final K:Ljava/lang/CharSequence;

.field public L:Landroid/support/v7/widget/SearchView$m;

.field public M:Landroid/support/v7/widget/SearchView$l;

.field public N:Landroid/view/View$OnFocusChangeListener;

.field public O:Landroid/support/v7/widget/SearchView$n;

.field public P:Landroid/view/View$OnClickListener;

.field public Q:Z

.field public R:Z

.field public S:Lg0/h;

.field public T:Z

.field public U:Ljava/lang/CharSequence;

.field public V:Z

.field public W:Z

.field public a0:I

.field public b0:Z

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/CharSequence;

.field public e0:Z

.field public f0:I

.field public g0:Landroid/app/SearchableInfo;

.field public h0:Landroid/os/Bundle;

.field public final i0:Landroid/support/v7/widget/SearchView$b;

.field public j0:Landroid/support/v7/widget/SearchView$c;

.field public final k0:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public final l0:Landroid/support/v7/widget/SearchView$f;

.field public m0:Landroid/support/v7/widget/SearchView$g;

.field public final n0:Landroid/support/v7/widget/SearchView$h;

.field public final o0:Landroid/support/v7/widget/SearchView$i;

.field public final p0:Landroid/support/v7/widget/SearchView$j;

.field public final q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field public q0:Landroid/support/v7/widget/SearchView$a;

.field public final r:Landroid/view/View;

.field public final s:Landroid/view/View;

.field public final t:Landroid/view/View;

.field public final u:Landroid/widget/ImageView;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroid/widget/ImageView;

.field public final y:Landroid/view/View;

.field public z:Landroid/support/v7/widget/SearchView$p;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v7/widget/SearchView$k;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$k;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->r0:Landroid/support/v7/widget/SearchView$k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f0301f5

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/support/v7/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->B:Landroid/graphics/Rect;

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->C:[I

    new-array v3, v2, [I

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->D:[I

    new-instance v3, Landroid/support/v7/widget/SearchView$b;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SearchView$b;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->i0:Landroid/support/v7/widget/SearchView$b;

    new-instance v3, Landroid/support/v7/widget/SearchView$c;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SearchView$c;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->j0:Landroid/support/v7/widget/SearchView$c;

    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->k0:Ljava/util/WeakHashMap;

    new-instance v3, Landroid/support/v7/widget/SearchView$f;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SearchView$f;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->l0:Landroid/support/v7/widget/SearchView$f;

    new-instance v4, Landroid/support/v7/widget/SearchView$g;

    invoke-direct {v4, v0}, Landroid/support/v7/widget/SearchView$g;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v4, v0, Landroid/support/v7/widget/SearchView;->m0:Landroid/support/v7/widget/SearchView$g;

    new-instance v4, Landroid/support/v7/widget/SearchView$h;

    invoke-direct {v4, v0}, Landroid/support/v7/widget/SearchView$h;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v4, v0, Landroid/support/v7/widget/SearchView;->n0:Landroid/support/v7/widget/SearchView$h;

    new-instance v5, Landroid/support/v7/widget/SearchView$i;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/SearchView$i;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v5, v0, Landroid/support/v7/widget/SearchView;->o0:Landroid/support/v7/widget/SearchView$i;

    new-instance v6, Landroid/support/v7/widget/SearchView$j;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/SearchView$j;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v6, v0, Landroid/support/v7/widget/SearchView;->p0:Landroid/support/v7/widget/SearchView$j;

    new-instance v7, Landroid/support/v7/widget/SearchView$a;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/SearchView$a;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, v0, Landroid/support/v7/widget/SearchView;->q0:Landroid/support/v7/widget/SearchView$a;

    sget-object v7, La3/r0;->A:[I

    .line 1
    new-instance v8, Lo0/s0;

    const/4 v9, 0x0

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual {v1, v10, v7, v11, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-direct {v8, v1, v7}, Lo0/s0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/16 v7, 0x9

    const v10, 0x7f0b0019

    invoke-virtual {v8, v7, v10}, Lo0/s0;->k(II)I

    move-result v7

    const/4 v10, 0x1

    invoke-virtual {v1, v7, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f080129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    const v7, 0x7f080125

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View;

    const v7, 0x7f080128

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    const v11, 0x7f080154

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;

    const v12, 0x7f080123

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Landroid/support/v7/widget/SearchView;->u:Landroid/widget/ImageView;

    const v13, 0x7f080126

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Landroid/support/v7/widget/SearchView;->v:Landroid/widget/ImageView;

    const v14, 0x7f080124

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroid/support/v7/widget/SearchView;->w:Landroid/widget/ImageView;

    const v15, 0x7f08012a

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v0, Landroid/support/v7/widget/SearchView;->x:Landroid/widget/ImageView;

    const v2, 0x7f080127

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->E:Landroid/widget/ImageView;

    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sget-object v16, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v7, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0xe

    .line 4
    invoke-virtual {v8, v7}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 5
    invoke-virtual {v11, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0xd

    .line 6
    invoke-virtual {v8, v7}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x7

    invoke-virtual {v8, v10}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x10

    invoke-virtual {v8, v10}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v7}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Lo0/s0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0d0021

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lo0/v0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    const/16 v2, 0xf

    const v7, 0x7f0b0018

    invoke-virtual {v8, v2, v7}, Lo0/s0;->k(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/SearchView;->G:I

    const/4 v2, 0x5

    invoke-virtual {v8, v2, v9}, Lo0/s0;->k(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/SearchView;->H:I

    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SearchView;->q0:Landroid/support/v7/widget/SearchView$a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v6}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SearchView;->m0:Landroid/support/v7/widget/SearchView$g;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Landroid/support/v7/widget/SearchView$d;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$d;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lo0/s0;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    const/4 v2, -0x1

    invoke-virtual {v8, v3, v2}, Lo0/s0;->e(II)I

    move-result v4

    if-eq v4, v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    :cond_0
    const/4 v3, 0x6

    invoke-virtual {v8, v3}, Lo0/s0;->l(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->K:Ljava/lang/CharSequence;

    const/16 v3, 0xb

    invoke-virtual {v8, v3}, Lo0/s0;->l(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->U:Ljava/lang/CharSequence;

    const/4 v3, 0x3

    invoke-virtual {v8, v3, v2}, Lo0/s0;->i(II)I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v8, v3, v2}, Lo0/s0;->i(II)I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v8, v9, v2}, Lo0/s0;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v8}, Lo0/s0;->o()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.speech.extra.LANGUAGE_MODEL"

    const-string v5, "web_search"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->J:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->y:Landroid/view/View;

    if-eqz v1, :cond_3

    new-instance v2, Landroid/support/v7/widget/SearchView$e;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$e;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    iget-boolean v1, v0, Landroid/support/v7/widget/SearchView;->Q:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->z(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SearchView;->w()V

    return-void
.end method

.method private getPreferredHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->b0:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->R:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->e0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->e0:Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->f0:I

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method public final clearFocus()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->W:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->W:Z

    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->d0:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->z(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->f0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->e0:Z

    return-void
.end method

.method public getImeOptions()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/SearchView;->a0:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->U:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getSuggestionCommitIconResId()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/SearchView;->H:I

    return v0
.end method

.method public getSuggestionRowLayout()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/SearchView;->G:I

    return v0
.end method

.method public getSuggestionsAdapter()Lg0/h;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    return-object v0
.end method

.method public final l(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->d0:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->h0:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p2, "app_data"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public final m(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 12

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->h0:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "app_data"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, "free_form"

    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v7

    :goto_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result p1

    :cond_4
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v3, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.PROMPT"

    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v3, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string p1, "calling_package"

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method public final n()V
    .registers 5

    sget-object v0, Landroid/support/v7/widget/SearchView;->r0:Landroid/support/v7/widget/SearchView$k;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1
    iget-object v0, v0, Landroid/support/v7/widget/SearchView$k;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_0
    sget-object v0, Landroid/support/v7/widget/SearchView;->r0:Landroid/support/v7/widget/SearchView$k;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 3
    iget-object v0, v0, Landroid/support/v7/widget/SearchView$k;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public final o()V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/support/v7/widget/SearchView$l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/widget/SearchView$l;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->z(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i0:Landroid/support/v7/widget/SearchView$b;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j0:Landroid/support/v7/widget/SearchView$c;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 9

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/h;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    .line 1
    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->C:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->D:[I

    invoke-virtual {p0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->C:[I

    const/4 v0, 0x1

    aget v1, p4, v0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->D:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    aget p4, p4, v0

    aget v2, v2, v0

    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p2, p4, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/graphics/Rect;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, v0, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v7/widget/SearchView$p;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/v7/widget/SearchView$p;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroid/support/v7/widget/SearchView$p;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v7/widget/SearchView$p;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/SearchView$p;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->R:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/h;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SearchView;->a0:I

    if-lez v0, :cond_6

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/support/v7/widget/SearchView;->a0:I

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SearchView;->a0:I

    if-lez v0, :cond_5

    :goto_0
    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    :goto_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_6
    :goto_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result p2

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_3
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/h;->onMeasure(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v7/widget/SearchView$o;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView$o;

    .line 1
    iget-object v0, p1, Ld0/a;->b:Landroid/os/Parcelable;

    .line 2
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Landroid/support/v7/widget/SearchView$o;->d:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->z(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SearchView$o;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$o;-><init>(Landroid/os/Parcelable;)V

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->R:Z

    .line 2
    iput-boolean v0, v1, Landroid/support/v7/widget/SearchView$o;->d:Z

    return-object v1
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->i0:Landroid/support/v7/widget/SearchView$b;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p(I)Z
    .registers 9

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/support/v7/widget/SearchView$n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/support/v7/widget/SearchView$n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-string v0, "SearchView"

    .line 1
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    .line 2
    iget-object v2, v2, Lg0/h;->d:Landroid/database/Cursor;

    if-eqz v2, :cond_8

    .line 3
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    :try_start_0
    const-string v3, "suggest_intent_action"

    .line 4
    sget v4, Lo0/m0;->z:I

    .line 5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lo0/m0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 6
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const-string v3, "android.intent.action.SEARCH"

    :cond_3
    const-string v4, "suggest_intent_data"

    .line 7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lo0/m0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 8
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-eqz v4, :cond_5

    const-string v5, "suggest_intent_data_id"

    .line 9
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lo0/m0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    if-nez v4, :cond_6

    move-object v4, p1

    goto :goto_1

    :cond_6
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    const-string v5, "suggest_intent_query"

    .line 11
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lo0/m0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "suggest_intent_extra_data"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v6}, Lo0/m0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {p0, v3, v4, v6, v5}, Landroid/support/v7/widget/SearchView;->l(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 v2, -0x1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search suggestions cursor at row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " returned exception."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    .line 13
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed launch activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :cond_8
    :goto_4
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 15
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    const/4 p1, 0x1

    return p1
.end method

.method public final q(I)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/support/v7/widget/SearchView$n;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/support/v7/widget/SearchView$n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    .line 2
    iget-object v1, v1, Lg0/h;->d:Landroid/database/Cursor;

    if-nez v1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    invoke-virtual {p1, v1}, Lg0/h;->d(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final r(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->W:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->R:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->z(Z)V

    :cond_2
    return p1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final s()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->z(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->h0:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .registers 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->s()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Q:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->Q:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->z(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->w()V

    return-void
.end method

.method public setImeOptions(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/SearchView;->a0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$l;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/support/v7/widget/SearchView$l;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$m;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$m;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$n;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/support/v7/widget/SearchView$n;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->U:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->w()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->V:Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    instance-of v1, v0, Lo0/m0;

    if-eqz v1, :cond_1

    check-cast v0, Lo0/m0;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, v0, Lo0/m0;->r:I

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 8

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result p1

    and-int/lit8 v3, p1, 0xf

    if-ne v3, v0, :cond_0

    const v3, -0x10001

    and-int/2addr p1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    or-int/2addr p1, v1

    const/high16 v3, 0x80000

    or-int/2addr p1, v3

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lg0/h;->c(Landroid/database/Cursor;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p1, Lo0/m0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->k0:Ljava/util/WeakHashMap;

    invoke-direct {p1, v3, p0, v4, v5}, Lo0/m0;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    check-cast p1, Lo0/m0;

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->V:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 2
    :goto_0
    iput v3, p1, Lo0/m0;->r:I

    .line 3
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->w()V

    .line 4
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/content/Intent;

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 5
    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->b0:Z

    if-eqz v0, :cond_8

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 6
    :cond_8
    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->R:Z

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->z(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->T:Z

    .line 1
    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->R:Z

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->z(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Lg0/h;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Lg0/h;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final t()V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$m;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    invoke-interface {v1}, Landroid/support/v7/widget/SearchView$m;->b()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v2, v0}, Landroid/support/v7/widget/SearchView;->l(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_2
    return-void
.end method

.method public final u()V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->Q:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->e0:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method public final v()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/ViewGroup;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final w()V
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 1
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->Q:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v2

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final x()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->T:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->b0:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->R:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final y(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->T:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->b0:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->R:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->b0:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final z(Z)V
    .registers 7

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->R:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SearchView;->y(Z)V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->Q:Z

    if-eqz p1, :cond_3

    :cond_2
    const/16 v0, 0x8

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->u()V

    xor-int/lit8 p1, v3, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->A(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->x()V

    return-void
.end method
