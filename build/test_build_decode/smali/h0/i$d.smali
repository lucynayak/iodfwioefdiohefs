.class public final Lh0/i$d;
.super Lm0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic c:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lh0/i$d;->c:Lh0/i;

    invoke-direct {p0, p2}, Lm0/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 10

    new-instance v0, Lm0/e$a;

    iget-object v1, p0, Lh0/i$d;->c:Lh0/i;

    iget-object v1, v1, Lh0/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lm0/e$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Lh0/i$d;->c:Lh0/i;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v1, p1, Lh0/i;->m:Lm0/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lm0/a;->c()V

    :cond_0
    new-instance v1, Lh0/i$c;

    invoke-direct {v1, p1, v0}, Lh0/i$c;-><init>(Lh0/i;Lm0/a$a;)V

    .line 2
    invoke-virtual {p1}, Lh0/i;->y()V

    iget-object v2, p1, Lh0/i;->g:Lh0/s;

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 3
    iget-object v7, v2, Lh0/s;->i:Lh0/s$d;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lh0/s$d;->c()V

    :cond_1
    iget-object v7, v2, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v7, v2, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActionBarContextView;->h()V

    new-instance v7, Lh0/s$d;

    iget-object v8, v2, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v2, v8, v1}, Lh0/s$d;-><init>(Lh0/s;Landroid/content/Context;Lm0/a$a;)V

    .line 4
    iget-object v8, v7, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    invoke-virtual {v8}, Landroid/support/v7/view/menu/e;->B()V

    :try_start_0
    iget-object v8, v7, Lh0/s$d;->f:Lm0/a$a;

    iget-object v9, v7, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    invoke-interface {v8, v7, v9}, Lm0/a$a;->d(Lm0/a;Landroid/view/Menu;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v7, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/e;->A()V

    if-eqz v8, :cond_2

    .line 5
    iput-object v7, v2, Lh0/s;->i:Lh0/s$d;

    invoke-virtual {v7}, Lh0/s$d;->i()V

    iget-object v8, v2, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/ActionBarContextView;->f(Lm0/a;)V

    invoke-virtual {v2, v4}, Lh0/s;->a(Z)V

    iget-object v2, v2, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    move-object v7, v5

    .line 6
    :goto_0
    iput-object v7, p1, Lh0/i;->m:Lm0/a;

    if-eqz v7, :cond_3

    iget-object v2, p1, Lh0/i;->f:Lh0/g;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lh0/g;->b()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, v7, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->A()V

    throw p1

    .line 8
    :cond_3
    :goto_1
    iget-object v2, p1, Lh0/i;->m:Lm0/a;

    if-nez v2, :cond_11

    .line 9
    invoke-virtual {p1}, Lh0/i;->s()V

    iget-object v2, p1, Lh0/i;->m:Lm0/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lm0/a;->c()V

    :cond_4
    iget-object v2, p1, Lh0/i;->f:Lh0/g;

    if-eqz v2, :cond_5

    iget-boolean v7, p1, Lh0/i;->G:Z

    if-nez v7, :cond_5

    :try_start_1
    invoke-interface {v2}, Lh0/g;->e()V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    iget-object v2, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v2, :cond_a

    iget-boolean v2, p1, Lh0/i;->A:Z

    if-eqz v2, :cond_7

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v7, p1, Lh0/i;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f030009

    invoke-virtual {v7, v8, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_6

    iget-object v8, p1, Lh0/i;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v7, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v7, Lm0/c;

    iget-object v9, p1, Lh0/i;->b:Landroid/content/Context;

    invoke-direct {v7, v9, v6}, Lm0/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Lm0/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_2

    :cond_6
    iget-object v7, p1, Lh0/i;->b:Landroid/content/Context;

    :goto_2
    new-instance v8, Landroid/support/v7/widget/ActionBarContextView;

    .line 10
    invoke-direct {v8, v7, v5}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput-object v8, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    new-instance v8, Landroid/widget/PopupWindow;

    const v9, 0x7f030017

    invoke-direct {v8, v7, v5, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p1, Lh0/i;->o:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lg0/l;->b(Landroid/widget/PopupWindow;I)V

    iget-object v8, p1, Lh0/i;->o:Landroid/widget/PopupWindow;

    iget-object v9, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v8, p1, Lh0/i;->o:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f030003

    invoke-virtual {v8, v9, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iget-object v7, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v2, p1, Lh0/i;->o:Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v2, Lh0/l;

    invoke-direct {v2, p1}, Lh0/l;-><init>(Lh0/i;)V

    iput-object v2, p1, Lh0/i;->p:Lh0/l;

    goto :goto_4

    :cond_7
    iget-object v2, p1, Lh0/i;->s:Landroid/view/ViewGroup;

    const v7, 0x7f08001a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v2, :cond_a

    .line 12
    invoke-virtual {p1}, Lh0/i;->y()V

    iget-object v7, p1, Lh0/i;->g:Lh0/s;

    if-eqz v7, :cond_8

    .line 13
    invoke-virtual {v7}, Lh0/s;->c()Landroid/content/Context;

    move-result-object v7

    goto :goto_3

    :cond_8
    move-object v7, v5

    :goto_3
    if-nez v7, :cond_9

    iget-object v7, p1, Lh0/i;->b:Landroid/content/Context;

    .line 14
    :cond_9
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v2, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    :cond_a
    :goto_4
    iget-object v2, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lh0/i;->s()V

    iget-object v2, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->h()V

    new-instance v2, Lm0/d;

    iget-object v7, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v2, v7, v8, v1}, Lm0/d;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Lm0/a$a;)V

    .line 15
    iget-object v7, v2, Lm0/d;->i:Landroid/support/v7/view/menu/e;

    .line 16
    invoke-virtual {v1, v2, v7}, Lh0/i$c;->d(Lm0/a;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lm0/d;->i()V

    iget-object v1, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContextView;->f(Lm0/a;)V

    iput-object v2, p1, Lh0/i;->m:Lm0/a;

    .line 17
    iget-boolean v1, p1, Lh0/i;->r:Z

    if-eqz v1, :cond_b

    iget-object v1, p1, Lh0/i;->s:Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iget-object v2, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v4, :cond_c

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v2}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Ld0/n;->a(F)Ld0/n;

    iput-object v2, p1, Lh0/i;->q:Ld0/n;

    new-instance v1, Lh0/m;

    invoke-direct {v1, p1}, Lh0/m;-><init>(Lh0/i;)V

    invoke-virtual {v2, v1}, Ld0/n;->d(Ld0/o;)Ld0/n;

    goto :goto_6

    :cond_c
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v1, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v1, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 21
    :cond_d
    :goto_6
    iget-object v1, p1, Lh0/i;->o:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lh0/i;->p:Lh0/l;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_e
    iput-object v5, p1, Lh0/i;->m:Lm0/a;

    :cond_f
    :goto_7
    iget-object v1, p1, Lh0/i;->m:Lm0/a;

    if-eqz v1, :cond_10

    iget-object v1, p1, Lh0/i;->f:Lh0/g;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lh0/g;->b()V

    :cond_10
    iget-object v1, p1, Lh0/i;->m:Lm0/a;

    .line 22
    iput-object v1, p1, Lh0/i;->m:Lm0/a;

    :cond_11
    iget-object p1, p1, Lh0/i;->m:Lm0/a;

    if-eqz p1, :cond_12

    .line 23
    invoke-virtual {v0, p1}, Lm0/e$a;->e(Lm0/a;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v5
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lh0/i$d;->c:Lh0/i;

    invoke-virtual {v0, p1}, Lh0/i;->q(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lm0/h;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Lm0/h;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lh0/i$d;->c:Lh0/i;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1
    invoke-virtual {v0}, Lh0/i;->y()V

    iget-object v4, v0, Lh0/i;->g:Lh0/s;

    if-eqz v4, :cond_3

    .line 2
    iget-object v4, v4, Lh0/s;->i:Lh0/s$d;

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v4, v4, Lh0/s$d;->e:Landroid/support/v7/view/menu/e;

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/e;->setQwertyMode(Z)V

    invoke-virtual {v4, v3, p1, v2}, Landroid/support/v7/view/menu/e;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    iget-object v3, v0, Lh0/i;->E:Lh0/i$g;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1}, Lh0/i;->B(Lh0/i$g;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, v0, Lh0/i;->E:Lh0/i$g;

    if-eqz p1, :cond_5

    iput-boolean v1, p1, Lh0/i$g;->l:Z

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lh0/i;->E:Lh0/i$g;

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lh0/i;->C(Lh0/i$g;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1}, Lh0/i;->B(Lh0/i$g;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v2, v3, Lh0/i$g;->k:Z

    if-eqz p1, :cond_6

    :cond_5
    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_5
    return v1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Landroid/support/v7/view/menu/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lm0/h;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lm0/h;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p2, p0, Lh0/i$d;->c:Lh0/i;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Lh0/i;->y()V

    iget-object p1, p2, Lh0/i;->g:Lh0/s;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lh0/s;->b(Z)V

    :cond_0
    return v1
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lm0/h;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, Lh0/i$d;->c:Lh0/i;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 1
    invoke-virtual {p2}, Lh0/i;->y()V

    iget-object p1, p2, Lh0/i;->g:Lh0/s;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lh0/s;->b(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p2, p1}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object p1

    iget-boolean v1, p1, Lh0/i$g;->m:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1, v0}, Lh0/i;->p(Lh0/i$g;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Landroid/support/v7/view/menu/e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroid/support/v7/view/menu/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v0, Landroid/support/v7/view/menu/e;->x:Z

    .line 2
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lm0/h;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    .line 3
    iput-boolean v1, v0, Landroid/support/v7/view/menu/e;->x:Z

    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lh0/i$d;->c:Lh0/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh0/i;->w(I)Lh0/i$g;

    move-result-object v0

    iget-object v0, v0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, v0, p3}, Lm0/h;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lm0/h;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lh0/i$d;->c:Lh0/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lh0/i$d;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lh0/i$d;->c:Lh0/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-super {p0, p1, p2}, Lm0/h;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lh0/i$d;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
