.class public final Lh0/i;
.super Lh0/h;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/e$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/i$e;,
        Lh0/i$d;,
        Lh0/i$f;,
        Lh0/i$g;,
        Lh0/i$b;,
        Lh0/i$h;,
        Lh0/i$c;
    }
.end annotation


# static fields
.field public static final R:[I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:[Lh0/i$g;

.field public E:Lh0/i$g;

.field public F:Z

.field public G:Z

.field public H:I

.field public I:Z

.field public J:Lh0/i$e;

.field public K:Z

.field public L:I

.field public final M:Lh0/i$a;

.field public N:Z

.field public O:Landroid/graphics/Rect;

.field public P:Landroid/graphics/Rect;

.field public Q:Landroid/support/v7/app/AppCompatViewInflater;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/view/Window;

.field public final d:Landroid/view/Window$Callback;

.field public final e:Lh0/i$d;

.field public final f:Lh0/g;

.field public g:Lh0/s;

.field public h:Lm0/f;

.field public i:Ljava/lang/CharSequence;

.field public j:Lo0/a0;

.field public k:Lh0/i$b;

.field public l:Lh0/i$h;

.field public m:Lm0/a;

.field public n:Landroid/support/v7/widget/ActionBarContextView;

.field public o:Landroid/widget/PopupWindow;

.field public p:Lh0/l;

.field public q:Ld0/n;

.field public r:Z

.field public s:Landroid/view/ViewGroup;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/view/View;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010054

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lh0/i;->R:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lh0/g;)V
    .registers 7

    invoke-direct {p0}, Lh0/h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh0/i;->q:Ld0/n;

    const/16 v1, -0x64

    iput v1, p0, Lh0/i;->H:I

    new-instance v1, Lh0/i$a;

    invoke-direct {v1, p0}, Lh0/i$a;-><init>(Lh0/i;)V

    iput-object v1, p0, Lh0/i;->M:Lh0/i$a;

    iput-object p1, p0, Lh0/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lh0/i;->c:Landroid/view/Window;

    iput-object p3, p0, Lh0/i;->f:Lh0/g;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p3

    iput-object p3, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    instance-of v1, p3, Lh0/i$d;

    if-nez v1, :cond_2

    new-instance v1, Lh0/i$d;

    invoke-direct {v1, p0, p3}, Lh0/i$d;-><init>(Lh0/i;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lh0/i;->e:Lh0/i$d;

    invoke-virtual {p2, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object p3, Lh0/i;->R:[I

    .line 1
    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lo0/i;->g()Lo0/i;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lo0/i;->j(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AppCompat has already installed itself into the Window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A(Lh0/i$g;Landroid/view/KeyEvent;)V
    .registers 15

    iget-boolean v0, p1, Lh0/i$g;->m:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lh0/i;->G:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget v0, p1, Lh0/i$g;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lh0/i;->x()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lh0/i$g;->a:I

    iget-object v4, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, Lh0/i;->p(Lh0/i$g;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lh0/i;->b:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Lh0/i;->C(Lh0/i$g;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Lh0/i$g;->e:Lh0/i$f;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Lh0/i$g;->n:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, Lh0/i$g;->g:Landroid/view/View;

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1b

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1b

    const/4 v5, -0x1

    goto/16 :goto_b

    :cond_7
    :goto_1
    if-nez p2, :cond_c

    .line 1
    invoke-virtual {p0}, Lh0/i;->y()V

    iget-object p2, p0, Lh0/i;->g:Lh0/s;

    if-eqz p2, :cond_8

    .line 2
    invoke-virtual {p2}, Lh0/s;->c()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_9

    iget-object p2, p0, Lh0/i;->b:Landroid/content/Context;

    .line 3
    :cond_9
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f030002

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v6, 0x7f0301ca

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    const v4, 0x7f0e013b

    :goto_3
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lm0/c;

    invoke-direct {v4, p2, v2}, Lm0/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lm0/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v4, p1, Lh0/i$g;->j:Lm0/c;

    sget-object p2, La3/r0;->p:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v4, 0x50

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lh0/i$g;->b:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lh0/i$g;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    new-instance p2, Lh0/i$f;

    iget-object v4, p1, Lh0/i$g;->j:Lm0/c;

    invoke-direct {p2, p0, v4}, Lh0/i$f;-><init>(Lh0/i;Landroid/content/Context;)V

    iput-object p2, p1, Lh0/i$g;->e:Lh0/i$f;

    const/16 p2, 0x51

    iput p2, p1, Lh0/i$g;->c:I

    goto :goto_4

    .line 5
    :cond_c
    iget-boolean v4, p1, Lh0/i$g;->n:Z

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p1, Lh0/i$g;->e:Lh0/i$f;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_d
    :goto_4
    iget-object p2, p1, Lh0/i$g;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    iput-object p2, p1, Lh0/i$g;->f:Landroid/view/View;

    goto :goto_5

    :cond_e
    iget-object p2, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    iget-object p2, p0, Lh0/i;->l:Lh0/i$h;

    if-nez p2, :cond_10

    new-instance p2, Lh0/i$h;

    invoke-direct {p2, p0}, Lh0/i$h;-><init>(Lh0/i;)V

    iput-object p2, p0, Lh0/i;->l:Lh0/i$h;

    :cond_10
    iget-object p2, p0, Lh0/i;->l:Lh0/i$h;

    .line 7
    iget-object v4, p1, Lh0/i$g;->i:Landroid/support/v7/view/menu/c;

    if-nez v4, :cond_11

    new-instance v4, Landroid/support/v7/view/menu/c;

    iget-object v5, p1, Lh0/i$g;->j:Lm0/c;

    invoke-direct {v4, v5}, Landroid/support/v7/view/menu/c;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lh0/i$g;->i:Landroid/support/v7/view/menu/c;

    .line 8
    iput-object p2, v4, Landroid/support/v7/view/menu/c;->f:Landroid/support/v7/view/menu/i$a;

    .line 9
    iget-object p2, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {p2, v4}, Landroid/support/v7/view/menu/e;->b(Landroid/support/v7/view/menu/i;)V

    :cond_11
    iget-object p2, p1, Lh0/i$g;->i:Landroid/support/v7/view/menu/c;

    iget-object v4, p1, Lh0/i$g;->e:Lh0/i$f;

    .line 10
    iget-object v5, p2, Landroid/support/v7/view/menu/c;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v5, :cond_13

    iget-object v5, p2, Landroid/support/v7/view/menu/c;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f0b000d

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v4, p2, Landroid/support/v7/view/menu/c;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v4, p2, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    if-nez v4, :cond_12

    new-instance v4, Landroid/support/v7/view/menu/c$a;

    invoke-direct {v4, p2}, Landroid/support/v7/view/menu/c$a;-><init>(Landroid/support/v7/view/menu/c;)V

    iput-object v4, p2, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    :cond_12
    iget-object v4, p2, Landroid/support/v7/view/menu/c;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v5, p2, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p2, Landroid/support/v7/view/menu/c;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object p2, p2, Landroid/support/v7/view/menu/c;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 11
    iput-object p2, p1, Lh0/i$g;->f:Landroid/view/View;

    if-eqz p2, :cond_14

    :goto_5
    const/4 p2, 0x1

    goto :goto_7

    :cond_14
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_1c

    .line 12
    iget-object p2, p1, Lh0/i$g;->f:Landroid/view/View;

    if-nez p2, :cond_15

    goto :goto_9

    :cond_15
    iget-object p2, p1, Lh0/i$g;->g:Landroid/view/View;

    if-eqz p2, :cond_16

    goto :goto_8

    :cond_16
    iget-object p2, p1, Lh0/i$g;->i:Landroid/support/v7/view/menu/c;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/c;->d()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/support/v7/view/menu/c$a;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/c$a;->getCount()I

    move-result p2

    if-lez p2, :cond_17

    :goto_8
    const/4 p2, 0x1

    goto :goto_a

    :cond_17
    :goto_9
    const/4 p2, 0x0

    :goto_a
    if-nez p2, :cond_18

    goto :goto_c

    .line 13
    :cond_18
    iget-object p2, p1, Lh0/i$g;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_19
    iget v4, p1, Lh0/i$g;->b:I

    iget-object v5, p1, Lh0/i$g;->e:Lh0/i$f;

    invoke-virtual {v5, v4}, Lh0/i$f;->setBackgroundResource(I)V

    iget-object v4, p1, Lh0/i$g;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1a

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1a

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Lh0/i$g;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    iget-object v4, p1, Lh0/i$g;->e:Lh0/i$f;

    iget-object v5, p1, Lh0/i$g;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lh0/i$g;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p1, Lh0/i$g;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1b
    const/4 v5, -0x2

    :goto_b
    iput-boolean v2, p1, Lh0/i$g;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Lh0/i$g;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Lh0/i$g;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, Lh0/i$g;->e:Lh0/i$f;

    invoke-interface {v0, v2, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, Lh0/i$g;->m:Z

    :cond_1c
    :goto_c
    return-void
.end method

.method public final B(Lh0/i$g;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lh0/i$g;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lh0/i;->C(Lh0/i$g;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v7/view/menu/e;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final C(Lh0/i$g;Landroid/view/KeyEvent;)Z
    .registers 14

    iget-boolean v0, p0, Lh0/i;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lh0/i$g;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lh0/i;->E:Lh0/i$g;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lh0/i;->p(Lh0/i$g;Z)V

    :cond_2
    invoke-virtual {p0}, Lh0/i;->x()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lh0/i$g;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lh0/i$g;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, Lh0/i$g;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, Lh0/i;->j:Lo0/a0;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lo0/a0;->f()V

    :cond_6
    iget-object v5, p1, Lh0/i$g;->g:Landroid/view/View;

    if-nez v5, :cond_18

    iget-object v5, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-boolean v7, p1, Lh0/i$g;->o:Z

    if-eqz v7, :cond_12

    :cond_7
    if-nez v5, :cond_d

    .line 1
    iget-object v5, p0, Lh0/i;->b:Landroid/content/Context;

    iget v7, p1, Lh0/i$g;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v4, :cond_c

    :cond_8
    iget-object v4, p0, Lh0/i;->j:Lo0/a0;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f030009

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f03000a

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v8, :cond_c

    new-instance v4, Lm0/c;

    invoke-direct {v4, v5, v1}, Lm0/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lm0/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    :cond_c
    new-instance v4, Landroid/support/v7/view/menu/e;

    invoke-direct {v4, v5}, Landroid/support/v7/view/menu/e;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p0, v4, Landroid/support/v7/view/menu/e;->e:Landroid/support/v7/view/menu/e$a;

    .line 3
    invoke-virtual {p1, v4}, Lh0/i$g;->a(Landroid/support/v7/view/menu/e;)V

    .line 4
    iget-object v4, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-nez v4, :cond_d

    return v1

    :cond_d
    if-eqz v3, :cond_f

    iget-object v4, p0, Lh0/i;->j:Lo0/a0;

    if-eqz v4, :cond_f

    iget-object v5, p0, Lh0/i;->k:Lh0/i$b;

    if-nez v5, :cond_e

    new-instance v5, Lh0/i$b;

    invoke-direct {v5, p0}, Lh0/i$b;-><init>(Lh0/i;)V

    iput-object v5, p0, Lh0/i;->k:Lh0/i$b;

    :cond_e
    iget-object v5, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    iget-object v7, p0, Lh0/i;->k:Lh0/i$b;

    invoke-interface {v4, v5, v7}, Lo0/a0;->c(Landroid/view/Menu;Landroid/support/v7/view/menu/i$a;)V

    :cond_f
    iget-object v4, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/e;->B()V

    iget v4, p1, Lh0/i$g;->a:I

    iget-object v5, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p1, v6}, Lh0/i$g;->a(Landroid/support/v7/view/menu/e;)V

    if-eqz v3, :cond_10

    iget-object p1, p0, Lh0/i;->j:Lo0/a0;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lh0/i;->k:Lh0/i$b;

    invoke-interface {p1, v6, p2}, Lo0/a0;->c(Landroid/view/Menu;Landroid/support/v7/view/menu/i$a;)V

    :cond_10
    return v1

    :cond_11
    iput-boolean v1, p1, Lh0/i$g;->o:Z

    :cond_12
    iget-object v4, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/e;->B()V

    iget-object v4, p1, Lh0/i$g;->p:Landroid/os/Bundle;

    if-eqz v4, :cond_13

    iget-object v5, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {v5, v4}, Landroid/support/v7/view/menu/e;->w(Landroid/os/Bundle;)V

    iput-object v6, p1, Lh0/i$g;->p:Landroid/os/Bundle;

    :cond_13
    iget-object v4, p1, Lh0/i$g;->g:Landroid/view/View;

    iget-object v5, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v3, :cond_14

    iget-object p2, p0, Lh0/i;->j:Lo0/a0;

    if-eqz p2, :cond_14

    iget-object v0, p0, Lh0/i;->k:Lh0/i$b;

    invoke-interface {p2, v6, v0}, Lo0/a0;->c(Landroid/view/Menu;Landroid/support/v7/view/menu/i$a;)V

    :cond_14
    iget-object p1, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/e;->A()V

    return v1

    :cond_15
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_16
    const/4 p2, -0x1

    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_17

    const/4 p2, 0x1

    goto :goto_4

    :cond_17
    const/4 p2, 0x0

    :goto_4
    iget-object v0, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/e;->setQwertyMode(Z)V

    iget-object p2, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/e;->A()V

    :cond_18
    iput-boolean v2, p1, Lh0/i$g;->k:Z

    iput-boolean v1, p1, Lh0/i$g;->l:Z

    iput-object p1, p0, Lh0/i;->E:Lh0/i$g;

    return v2
.end method

.method public final D()V
    .registers 3

    iget-boolean v0, p0, Lh0/i;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final E(I)I
    .registers 10

    iget-object v0, p0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lh0/i;->O:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lh0/i;->O:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lh0/i;->P:Landroid/graphics/Rect;

    :cond_0
    iget-object v2, p0, Lh0/i;->O:Landroid/graphics/Rect;

    iget-object v4, p0, Lh0/i;->P:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Lh0/i;->s:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Lo0/z0;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lh0/i;->u:Landroid/view/View;

    if-nez v2, :cond_2

    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lh0/i;->u:Landroid/view/View;

    iget-object v4, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lh0/i;->s:Landroid/view/ViewGroup;

    iget-object v4, p0, Lh0/i;->u:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lh0/i;->u:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lh0/i;->u:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iget-boolean v4, p0, Lh0/i;->z:Z

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    const/4 p1, 0x0

    :cond_6
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_4

    :cond_7
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_8

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_a

    iget-object v3, p0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_5
    iget-object v0, p0, Lh0/i;->u:Landroid/view/View;

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method

.method public final a(Landroid/support/v7/view/menu/e;)V
    .registers 7

    iget-object p1, p0, Lh0/i;->j:Lo0/a0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lo0/a0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {p1}, Lo0/a0;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lh0/i;->x()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {v2}, Lo0/a0;->b()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {v0}, Lo0/a0;->d()Z

    iget-boolean v0, p0, Lh0/i;->G:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iget-object v0, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lh0/i;->G:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lh0/i;->K:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lh0/i;->L:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lh0/i;->M:Lh0/i$a;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lh0/i;->M:Lh0/i$a;

    invoke-virtual {v0}, Lh0/i$a;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iget-object v2, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lh0/i$g;->o:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lh0/i$g;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {p1}, Lo0/a0;->e()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object p1

    iput-boolean v0, p1, Lh0/i$g;->n:Z

    invoke-virtual {p0, p1, v1}, Lh0/i;->p(Lh0/i$g;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lh0/i;->A(Lh0/i$g;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)Z
    .registers 5

    invoke-virtual {p0}, Lh0/i;->x()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lh0/i;->G:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/e;->l()Landroid/support/v7/view/menu/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh0/i;->v(Landroid/view/Menu;)Lh0/i$g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lh0/i$g;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Lh0/i;->u()V

    iget-object v0, p0, Lh0/i;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final d()Z
    .registers 12

    .line 1
    iget v0, p0, Lh0/i;->H:I

    const/4 v1, -0x1

    const/16 v2, -0x64

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v3, 0x17

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_1

    move v2, v0

    goto :goto_2

    .line 2
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lh0/i;->b:Landroid/content/Context;

    const-class v6, Landroid/app/UiModeManager;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lh0/i;->t()V

    iget-object v2, p0, Lh0/i;->J:Lh0/i$e;

    .line 3
    iget-object v6, v2, Lh0/i$e;->a:Lh0/r;

    invoke-virtual {v6}, Lh0/r;->b()Z

    move-result v6

    iput-boolean v6, v2, Lh0/i$e;->b:Z

    if-eqz v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const/4 v6, 0x0

    if-eq v2, v1, :cond_15

    .line 4
    iget-object v1, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-ne v2, v4, :cond_5

    const/16 v2, 0x20

    goto :goto_3

    :cond_5
    const/16 v2, 0x10

    :goto_3
    if-eq v8, v2, :cond_15

    .line 5
    iget-boolean v4, p0, Lh0/i;->I:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lh0/i;->b:Landroid/content/Context;

    instance-of v8, v4, Landroid/app/Activity;

    if-eqz v8, :cond_6

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_0
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v8, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_6

    goto :goto_4

    :catch_0
    move-exception v4

    const-string v6, "AppCompatDelegate"

    const-string v8, "Exception while getting ActivityInfo"

    invoke-static {v6, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 v6, 0x1

    :cond_6
    if-eqz v6, :cond_7

    .line 6
    iget-object v1, p0, Lh0/i;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_d

    :cond_7
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, -0x31

    or-int/2addr v2, v7

    iput v2, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_14

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_8

    goto/16 :goto_d

    :cond_8
    const/16 v4, 0x18

    const-string v6, "mDrawableCache"

    const/4 v7, 0x0

    const-string v8, "ResourcesFlusher"

    if-lt v2, v4, :cond_e

    .line 7
    sget-boolean v2, Lh0/p;->h:Z

    if-nez v2, :cond_9

    :try_start_1
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mResourcesImpl"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lh0/p;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    const-string v3, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v8, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    sput-boolean v5, Lh0/p;->h:Z

    :cond_9
    sget-object v2, Lh0/p;->g:Ljava/lang/reflect/Field;

    if-nez v2, :cond_a

    goto/16 :goto_d

    :cond_a
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    const-string v2, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v7

    :goto_6
    if-nez v1, :cond_b

    goto/16 :goto_d

    :cond_b
    sget-boolean v2, Lh0/p;->b:Z

    if-nez v2, :cond_c

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lh0/p;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v2

    const-string v3, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v8, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    sput-boolean v5, Lh0/p;->b:Z

    :cond_c
    sget-object v2, Lh0/p;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_d

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v1

    const-string v2, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_8
    if-eqz v7, :cond_14

    invoke-static {v7}, Lh0/p;->a(Ljava/lang/Object;)V

    goto :goto_d

    :cond_e
    const-string v4, "Could not retrieve Resources#mDrawableCache field"

    const-string v9, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v2, v3, :cond_12

    .line 8
    sget-boolean v2, Lh0/p;->b:Z

    if-nez v2, :cond_f

    :try_start_5
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lh0/p;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v2

    invoke-static {v8, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    sput-boolean v5, Lh0/p;->b:Z

    :cond_f
    sget-object v2, Lh0/p;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_10

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    :catch_6
    move-exception v1

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_a
    if-nez v7, :cond_11

    goto :goto_d

    :cond_11
    invoke-static {v7}, Lh0/p;->a(Ljava/lang/Object;)V

    goto :goto_d

    .line 9
    :cond_12
    sget-boolean v2, Lh0/p;->b:Z

    if-nez v2, :cond_13

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lh0/p;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_b

    :catch_7
    move-exception v2

    invoke-static {v8, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    sput-boolean v5, Lh0/p;->b:Z

    :cond_13
    sget-object v2, Lh0/p;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_14

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v7, v1

    goto :goto_c

    :catch_8
    move-exception v1

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    if-eqz v7, :cond_14

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    :cond_14
    :goto_d
    const/4 v6, 0x1

    :cond_15
    if-nez v0, :cond_18

    .line 10
    invoke-virtual {p0}, Lh0/i;->t()V

    iget-object v0, p0, Lh0/i;->J:Lh0/i$e;

    .line 11
    invoke-virtual {v0}, Lh0/i$e;->a()V

    iget-object v1, v0, Lh0/i$e;->c:Lh0/n;

    if-nez v1, :cond_16

    new-instance v1, Lh0/n;

    invoke-direct {v1, v0}, Lh0/n;-><init>(Lh0/i$e;)V

    iput-object v1, v0, Lh0/i$e;->c:Lh0/n;

    :cond_16
    iget-object v1, v0, Lh0/i$e;->d:Landroid/content/IntentFilter;

    if-nez v1, :cond_17

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, v0, Lh0/i$e;->d:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, v0, Lh0/i$e;->d:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, v0, Lh0/i$e;->d:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_17
    iget-object v1, v0, Lh0/i$e;->e:Lh0/i;

    iget-object v1, v1, Lh0/i;->b:Landroid/content/Context;

    iget-object v2, v0, Lh0/i$e;->c:Lh0/n;

    iget-object v0, v0, Lh0/i$e;->d:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    :cond_18
    iput-boolean v5, p0, Lh0/i;->I:Z

    return v6
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lh0/i;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lh0/i;->y()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lh0/i;->z(I)V

    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/app/c0;->c(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Lh0/i;->g:Lh0/s;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lh0/i;->N:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Lh0/s;->e(Z)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget v0, p0, Lh0/i;->H:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_2

    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lh0/i;->H:I

    :cond_2
    return-void
.end method

.method public final h()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lh0/i;->y()V

    iget-object v0, p0, Lh0/i;->g:Lh0/s;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lh0/s;->u:Z

    iget-object v0, v0, Lh0/s;->t:Lm0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm0/g;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lh0/i;->J:Lh0/i$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh0/i$e;->a()V

    :cond_1
    return-void
.end method

.method public final i(I)Z
    .registers 7

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lh0/i;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lh0/i;->x:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v1, p0, Lh0/i;->x:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    iget-object v0, p0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Lh0/i;->D()V

    iput-boolean v4, p0, Lh0/i;->y:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Lh0/i;->D()V

    iput-boolean v4, p0, Lh0/i;->x:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Lh0/i;->D()V

    iput-boolean v4, p0, Lh0/i;->z:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Lh0/i;->D()V

    iput-boolean v4, p0, Lh0/i;->w:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Lh0/i;->D()V

    iput-boolean v4, p0, Lh0/i;->v:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Lh0/i;->D()V

    iput-boolean v4, p0, Lh0/i;->B:Z

    return v4
.end method

.method public final j(I)V
    .registers 4

    invoke-virtual {p0}, Lh0/i;->u()V

    iget-object v0, p0, Lh0/i;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lh0/i;->u()V

    iget-object v0, p0, Lh0/i;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Lh0/i;->u()V

    iget-object v0, p0, Lh0/i;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lh0/i;->i:Ljava/lang/CharSequence;

    iget-object v0, p0, Lh0/i;->j:Lo0/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo0/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lh0/i;->g:Lh0/s;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lh0/s;->e:Lo0/b0;

    invoke-interface {v0, p1}, Lo0/b0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lh0/i;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final n(ILh0/i$g;Landroid/view/Menu;)V
    .registers 6

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lh0/i;->D:[Lh0/i$g;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lh0/i$g;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Lh0/i;->G:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public final o(Landroid/support/v7/view/menu/e;)V
    .registers 4

    iget-boolean v0, p0, Lh0/i;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh0/i;->C:Z

    iget-object v0, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {v0}, Lo0/a0;->i()V

    invoke-virtual {p0}, Lh0/i;->x()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lh0/i;->G:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lh0/i;->C:Z

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 15

    .line 1
    iget-object v0, p0, Lh0/i;->Q:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_2

    iget-object v0, p0, Lh0/i;->b:Landroid/content/Context;

    sget-object v1, La3/r0;->p:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v1, p0, Lh0/i;->Q:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    :goto_1
    iput-object v0, p0, Lh0/i;->Q:Landroid/support/v7/app/AppCompatViewInflater;

    :cond_2
    :goto_2
    const/4 v6, 0x0

    iget-object v1, p0, Lh0/i;->Q:Landroid/support/v7/app/AppCompatViewInflater;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget v0, Lo0/y0;->a:I

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lh0/i;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lh0/i$g;Z)V
    .registers 6

    if-eqz p2, :cond_0

    iget v0, p1, Lh0/i$g;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lh0/i;->j:Lo0/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo0/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {p0, p1}, Lh0/i;->o(Landroid/support/v7/view/menu/e;)V

    return-void

    :cond_0
    iget-object v0, p0, Lh0/i;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lh0/i$g;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lh0/i$g;->e:Lh0/i$f;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Lh0/i$g;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lh0/i;->n(ILh0/i$g;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Lh0/i$g;->k:Z

    iput-boolean p2, p1, Lh0/i$g;->l:Z

    iput-boolean p2, p1, Lh0/i$g;->m:Z

    iput-object v1, p1, Lh0/i$g;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lh0/i$g;->n:Z

    iget-object p2, p0, Lh0/i;->E:Lh0/i$g;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Lh0/i;->E:Lh0/i$g;

    :cond_2
    return-void
.end method

.method public final q(Landroid/view/KeyEvent;)Z
    .registers 8

    iget-object v0, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    instance-of v1, v0, Ld0/d$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lh0/o;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Ld0/d;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_7

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto/16 :goto_8

    .line 1
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v4}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iget-boolean v1, v0, Lh0/i$g;->m:Z

    if-nez v1, :cond_17

    invoke-virtual {p0, v0, p1}, Lh0/i;->C(Lh0/i$g;Landroid/view/KeyEvent;)Z

    goto/16 :goto_9

    .line 2
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lh0/i;->F:Z

    goto/16 :goto_8

    :cond_7
    if-eq v0, v5, :cond_11

    if-eq v0, v1, :cond_8

    goto/16 :goto_8

    .line 3
    :cond_8
    iget-object v0, p0, Lh0/i;->m:Lm0/a;

    if-eqz v0, :cond_9

    goto/16 :goto_9

    :cond_9
    invoke-virtual {p0, v4}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iget-object v1, p0, Lh0/i;->j:Lo0/a0;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lo0/a0;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {v1}, Lo0/a0;->b()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lh0/i;->G:Z

    if-nez v1, :cond_e

    invoke-virtual {p0, v0, p1}, Lh0/i;->C(Lh0/i$g;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {p1}, Lo0/a0;->e()Z

    move-result p1

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {p1}, Lo0/a0;->d()Z

    move-result p1

    goto :goto_4

    :cond_b
    iget-boolean v1, v0, Lh0/i$g;->m:Z

    if-nez v1, :cond_f

    iget-boolean v3, v0, Lh0/i$g;->l:Z

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    iget-boolean v1, v0, Lh0/i$g;->k:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lh0/i$g;->o:Z

    if-eqz v1, :cond_d

    iput-boolean v4, v0, Lh0/i$g;->k:Z

    invoke-virtual {p0, v0, p1}, Lh0/i;->C(Lh0/i$g;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2

    :cond_d
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_e

    invoke-virtual {p0, v0, p1}, Lh0/i;->A(Lh0/i$g;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    goto :goto_4

    :cond_f
    :goto_3
    invoke-virtual {p0, v0, v2}, Lh0/i;->p(Lh0/i$g;Z)V

    move p1, v1

    :goto_4
    if-eqz p1, :cond_17

    iget-object p1, p0, Lh0/i;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_9

    :cond_10
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4
    :cond_11
    iget-boolean p1, p0, Lh0/i;->F:Z

    iput-boolean v4, p0, Lh0/i;->F:Z

    invoke-virtual {p0, v4}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iget-boolean v1, v0, Lh0/i$g;->m:Z

    if-eqz v1, :cond_12

    if-nez p1, :cond_17

    invoke-virtual {p0, v0, v2}, Lh0/i;->p(Lh0/i$g;Z)V

    goto :goto_9

    .line 5
    :cond_12
    iget-object p1, p0, Lh0/i;->m:Lm0/a;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lm0/a;->c()V

    goto :goto_6

    .line 6
    :cond_13
    invoke-virtual {p0}, Lh0/i;->y()V

    iget-object p1, p0, Lh0/i;->g:Lh0/s;

    if-eqz p1, :cond_15

    .line 7
    iget-object v0, p1, Lh0/s;->e:Lo0/b0;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lo0/b0;->s()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p1, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1}, Lo0/b0;->collapseActionView()V

    const/4 p1, 0x1

    goto :goto_5

    :cond_14
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_15

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_16

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v2, 0x0

    :cond_17
    :goto_9
    return v2
.end method

.method public final r(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iget-object v1, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/e;->x(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lh0/i$g;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/e;->B()V

    iget-object v1, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/e;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lh0/i$g;->o:Z

    iput-boolean v1, v0, Lh0/i$g;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lh0/i;->j:Lo0/a0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iput-boolean p1, v0, Lh0/i$g;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lh0/i;->C(Lh0/i$g;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final s()V
    .registers 2

    iget-object v0, p0, Lh0/i;->q:Ld0/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld0/n;->b()V

    :cond_0
    return-void
.end method

.method public final t()V
    .registers 5

    iget-object v0, p0, Lh0/i;->J:Lh0/i$e;

    if-nez v0, :cond_1

    new-instance v0, Lh0/i$e;

    iget-object v1, p0, Lh0/i;->b:Landroid/content/Context;

    .line 1
    sget-object v2, Lh0/r;->d:Lh0/r;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lh0/r;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    invoke-direct {v2, v1, v3}, Lh0/r;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v2, Lh0/r;->d:Lh0/r;

    :cond_0
    sget-object v1, Lh0/r;->d:Lh0/r;

    .line 2
    invoke-direct {v0, p0, v1}, Lh0/i$e;-><init>(Lh0/i;Lh0/r;)V

    iput-object v0, p0, Lh0/i;->J:Lh0/i$e;

    :cond_1
    return-void
.end method

.method public final u()V
    .registers 10

    iget-boolean v0, p0, Lh0/i;->r:Z

    if-nez v0, :cond_1b

    .line 1
    iget-object v0, p0, Lh0/i;->b:Landroid/content/Context;

    sget-object v1, La3/r0;->p:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x78

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lh0/i;->i(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lh0/i;->i(I)Z

    :cond_1
    :goto_0
    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lh0/i;->i(I)Z

    :cond_2
    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lh0/i;->i(I)Z

    :cond_3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lh0/i;->A:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lh0/i;->B:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lh0/i;->A:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, Lh0/i;->y:Z

    iput-boolean v3, p0, Lh0/i;->x:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v0, p0, Lh0/i;->x:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lh0/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f030009

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Lm0/c;

    iget-object v7, p0, Lh0/i;->b:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Lm0/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lh0/i;->b:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo0/a0;

    iput-object v1, p0, Lh0/i;->j:Lo0/a0;

    invoke-virtual {p0}, Lh0/i;->x()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Lo0/a0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Lh0/i;->y:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lh0/i;->j:Lo0/a0;

    invoke-interface {v1, v2}, Lo0/a0;->h(I)V

    :cond_6
    iget-boolean v1, p0, Lh0/i;->v:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lh0/i;->j:Lo0/a0;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lo0/a0;->h(I)V

    :cond_7
    iget-boolean v1, p0, Lh0/i;->w:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lh0/i;->j:Lo0/a0;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lo0/a0;->h(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Lh0/i;->z:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0b0016

    goto :goto_2

    :cond_a
    const v1, 0x7f0b0015

    :goto_2
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lh0/j;

    invoke-direct {v1, p0}, Lh0/j;-><init>(Lh0/i;)V

    invoke-static {v0, v1}, Ld0/l;->k(Landroid/view/View;Ld0/k;)V

    :cond_b
    :goto_3
    if-eqz v0, :cond_19

    iget-object v1, p0, Lh0/i;->j:Lo0/a0;

    if-nez v1, :cond_c

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lh0/i;->t:Landroid/widget/TextView;

    :cond_c
    sget-object v1, Lo0/z0;->a:Ljava/lang/reflect/Method;

    const-string v1, "ViewUtils"

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v7, "makeOptionalFitsSystemWindows"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_d
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :goto_4
    const-string v7, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v1, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_2
    const-string v2, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const v1, 0x7f08000d

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v2, p0, Lh0/i;->c:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    :goto_6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_e
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setId(I)V

    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_f

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v2, p0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Lh0/k;

    invoke-direct {v2, p0}, Lh0/k;-><init>(Lh0/i;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$a;)V

    .line 4
    iput-object v0, p0, Lh0/i;->s:Landroid/view/ViewGroup;

    .line 5
    iget-object v0, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lh0/i;->i:Ljava/lang/CharSequence;

    .line 6
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lh0/i;->j:Lo0/a0;

    if-eqz v1, :cond_11

    invoke-interface {v1, v0}, Lo0/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 7
    :cond_11
    iget-object v1, p0, Lh0/i;->g:Lh0/s;

    if-eqz v1, :cond_12

    .line 8
    iget-object v1, v1, Lh0/s;->e:Lo0/b0;

    invoke-interface {v1, v0}, Lo0/b0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 9
    :cond_12
    iget-object v1, p0, Lh0/i;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_13
    :goto_8
    iget-object v0, p0, Lh0/i;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 11
    iget-object v8, v0, Landroid/support/v7/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 14
    :cond_14
    iget-object v1, p0, Lh0/i;->b:Landroid/content/Context;

    sget-object v2, La3/r0;->p:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x76

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x77

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 15
    iput-boolean v5, p0, Lh0/i;->r:Z

    invoke-virtual {p0, v3}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iget-boolean v1, p0, Lh0/i;->G:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-nez v0, :cond_1b

    invoke-virtual {p0, v4}, Lh0/i;->z(I)V

    goto :goto_9

    .line 16
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 17
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    iget-boolean v2, p0, Lh0/i;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lh0/i;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lh0/i;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lh0/i;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lh0/i;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_9
    return-void
.end method

.method public final v(Landroid/view/Menu;)Lh0/i$g;
    .registers 7

    iget-object v0, p0, Lh0/i;->D:[Lh0/i$g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final w(I)Lh0/i$g;
    .registers 6

    iget-object v0, p0, Lh0/i;->D:[Lh0/i$g;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lh0/i$g;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Lh0/i;->D:[Lh0/i$g;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Lh0/i$g;

    invoke-direct {v1, p1}, Lh0/i$g;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final x()Landroid/view/Window$Callback;
    .registers 2

    iget-object v0, p0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final y()V
    .registers 4

    invoke-virtual {p0}, Lh0/i;->u()V

    iget-boolean v0, p0, Lh0/i;->x:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh0/i;->g:Lh0/s;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, Lh0/s;

    iget-object v1, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lh0/i;->y:Z

    invoke-direct {v0, v1, v2}, Lh0/s;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Lh0/s;

    iget-object v1, p0, Lh0/i;->d:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lh0/s;-><init>(Landroid/app/Dialog;)V

    :goto_0
    iput-object v0, p0, Lh0/i;->g:Lh0/s;

    :cond_2
    iget-object v0, p0, Lh0/i;->g:Lh0/s;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lh0/i;->N:Z

    invoke-virtual {v0, v1}, Lh0/s;->e(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final z(I)V
    .registers 5

    iget v0, p0, Lh0/i;->L:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lh0/i;->L:I

    iget-boolean p1, p0, Lh0/i;->K:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lh0/i;->M:Lh0/i$a;

    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2
    iput-boolean v1, p0, Lh0/i;->K:Z

    :cond_0
    return-void
.end method
