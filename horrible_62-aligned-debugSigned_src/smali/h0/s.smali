.class public final Lh0/s;
.super Lh0/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/s$d;
    }
.end annotation


# static fields
.field public static final A:Landroid/view/animation/DecelerateInterpolator;

.field public static final z:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field public d:Landroid/support/v7/widget/ActionBarContainer;

.field public e:Lo0/b0;

.field public f:Landroid/support/v7/widget/ActionBarContextView;

.field public g:Landroid/view/View;

.field public h:Z

.field public i:Lh0/s$d;

.field public j:Lh0/s$d;

.field public k:Lm0/a$a;

.field public l:Z

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lh0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lm0/g;

.field public u:Z

.field public v:Z

.field public final w:Lh0/s$a;

.field public final x:Lh0/s$b;

.field public final y:Lh0/s$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lh0/s;->z:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lh0/s;->A:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    invoke-direct {p0}, Lh0/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh0/s;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lh0/s;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh0/s;->p:Z

    iput-boolean v0, p0, Lh0/s;->s:Z

    new-instance v0, Lh0/s$a;

    invoke-direct {v0, p0}, Lh0/s$a;-><init>(Lh0/s;)V

    iput-object v0, p0, Lh0/s;->w:Lh0/s$a;

    new-instance v0, Lh0/s$b;

    invoke-direct {v0, p0}, Lh0/s$b;-><init>(Lh0/s;)V

    iput-object v0, p0, Lh0/s;->x:Lh0/s$b;

    new-instance v0, Lh0/s$c;

    invoke-direct {v0, p0}, Lh0/s$c;-><init>(Lh0/s;)V

    iput-object v0, p0, Lh0/s;->y:Lh0/s$c;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh0/s;->d(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh0/s;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3

    invoke-direct {p0}, Lh0/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh0/s;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lh0/s;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh0/s;->p:Z

    iput-boolean v0, p0, Lh0/s;->s:Z

    new-instance v0, Lh0/s$a;

    invoke-direct {v0, p0}, Lh0/s$a;-><init>(Lh0/s;)V

    iput-object v0, p0, Lh0/s;->w:Lh0/s$a;

    new-instance v0, Lh0/s$b;

    invoke-direct {v0, p0}, Lh0/s$b;-><init>(Lh0/s;)V

    iput-object v0, p0, Lh0/s;->x:Lh0/s$b;

    new-instance v0, Lh0/s$c;

    invoke-direct {v0, p0}, Lh0/s$c;-><init>(Lh0/s;)V

    iput-object v0, p0, Lh0/s;->y:Lh0/s$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh0/s;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v1, p0, Lh0/s;->r:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh0/s;->r:Z

    iget-object v2, p0, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lh0/s;->g(Z)V

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean v1, p0, Lh0/s;->r:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lh0/s;->r:Z

    iget-object v1, p0, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lh0/s;->g(Z)V

    .line 3
    :cond_3
    :goto_0
    iget-object v1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_7

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1, v2, v4, v5}, Lo0/b0;->q(IJ)Ld0/n;

    move-result-object p1

    iget-object v1, p0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Lo0/a;->e(IJ)Ld0/n;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1, v0, v6, v7}, Lo0/b0;->q(IJ)Ld0/n;

    move-result-object v0

    iget-object p1, p0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Lo0/a;->e(IJ)Ld0/n;

    move-result-object p1

    :goto_1
    new-instance v1, Lm0/g;

    invoke-direct {v1}, Lm0/g;-><init>()V

    .line 6
    iget-object v2, v1, Lm0/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p1, Ld0/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    .line 8
    :goto_2
    iget-object p1, v0, Ld0/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 9
    :cond_6
    iget-object p1, v1, Lm0/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1}, Lm0/g;->c()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1, v2}, Lo0/b0;->k(I)V

    iget-object p1, p0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1, v0}, Lo0/b0;->k(I)V

    iget-object p1, p0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final b(Z)V
    .registers 4

    iget-boolean v0, p0, Lh0/s;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lh0/s;->l:Z

    iget-object p1, p0, Lh0/s;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lh0/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/a$b;

    invoke-interface {v1}, Lh0/a$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()Landroid/content/Context;
    .registers 5

    iget-object v0, p0, Lh0/s;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lh0/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lh0/s;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lh0/s;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh0/s;->a:Landroid/content/Context;

    iput-object v0, p0, Lh0/s;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Lh0/s;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final d(Landroid/view/View;)V
    .registers 8

    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$d;)V

    :cond_0
    const v0, 0x7f08000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1
    instance-of v1, v0, Lo0/b0;

    if-eqz v1, :cond_1

    check-cast v0, Lo0/b0;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getWrapper()Lo0/b0;

    move-result-object v0

    .line 2
    :goto_0
    iput-object v0, p0, Lh0/s;->e:Lo0/b0;

    const v0, 0x7f080014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    const v0, 0x7f08000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ActionBarContainer;

    iput-object p1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, p0, Lh0/s;->e:Lo0/b0;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lh0/s;->f:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lo0/b0;->o()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lh0/s;->a:Landroid/content/Context;

    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1}, Lo0/b0;->j()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lh0/s;->h:Z

    :cond_3
    iget-object p1, p0, Lh0/s;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    .line 4
    iget-object v3, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {v3}, Lo0/b0;->m()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v3, 0x7f040000

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lh0/s;->f(Z)V

    iget-object p1, p0, Lh0/s;->a:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, La3/r0;->d:[I

    const v5, 0x7f030005

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7
    iget-object v2, p0, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    .line 8
    iget-boolean v3, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->i:Z

    if-eqz v3, :cond_4

    .line 9
    iput-boolean v1, p0, Lh0/s;->v:Z

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const/16 v1, 0xc

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    .line 11
    iget-object v1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->setElevation(F)V

    .line 13
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lh0/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t make a decor toolbar out of "

    .line 15
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_9

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, "null"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Z)V
    .registers 5

    iget-boolean v0, p0, Lh0/s;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {v1}, Lo0/b0;->j()I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lh0/s;->h:Z

    iget-object v2, p0, Lh0/s;->e:Lo0/b0;

    and-int/2addr p1, v0

    and-int/lit8 v0, v1, -0x5

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Lo0/b0;->v(I)V

    :cond_1
    return-void
.end method

.method public final f(Z)V
    .registers 4

    iput-boolean p1, p0, Lh0/s;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1}, Lo0/b0;->i()V

    iget-object p1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/r;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/r;)V

    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1}, Lo0/b0;->i()V

    .line 1
    :goto_0
    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1}, Lo0/b0;->p()V

    .line 2
    iget-object p1, p0, Lh0/s;->e:Lo0/b0;

    iget-boolean v0, p0, Lh0/s;->n:Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo0/b0;->u(Z)V

    iget-object p1, p0, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v1, p0, Lh0/s;->n:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final g(Z)V
    .registers 9

    iget-boolean v0, p0, Lh0/s;->q:Z

    iget-boolean v1, p0, Lh0/s;->r:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-wide/16 v4, 0xfa

    const/4 v1, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lh0/s;->s:Z

    if-nez v0, :cond_14

    iput-boolean v2, p0, Lh0/s;->s:Z

    .line 1
    iget-object v0, p0, Lh0/s;->t:Lm0/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm0/g;->a()V

    :cond_2
    iget-object v0, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Lh0/s;->o:I

    const/4 v3, 0x0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lh0/s;->u:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_9

    :cond_3
    iget-object v0, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    new-array p1, v1, [I

    fill-array-data p1, :array_0

    iget-object v1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_4
    iget-object p1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lm0/g;

    invoke-direct {p1}, Lm0/g;-><init>()V

    iget-object v1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object v1

    invoke-virtual {v1, v3}, Ld0/n;->g(F)Ld0/n;

    iget-object v2, p0, Lh0/s;->y:Lh0/s$c;

    invoke-virtual {v1, v2}, Ld0/n;->f(Ld0/p;)Ld0/n;

    invoke-virtual {p1, v1}, Lm0/g;->b(Ld0/n;)Lm0/g;

    iget-boolean v1, p0, Lh0/s;->p:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lh0/s;->g:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lh0/s;->g:Landroid/view/View;

    invoke-static {v0}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Ld0/n;->g(F)Ld0/n;

    invoke-virtual {p1, v0}, Lm0/g;->b(Ld0/n;)Lm0/g;

    :cond_5
    sget-object v0, Lh0/s;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 2
    iget-boolean v1, p1, Lm0/g;->e:Z

    if-nez v1, :cond_6

    iput-object v0, p1, Lm0/g;->c:Landroid/view/animation/Interpolator;

    :cond_6
    if-nez v1, :cond_7

    .line 3
    iput-wide v4, p1, Lm0/g;->b:J

    .line 4
    :cond_7
    iget-object v0, p0, Lh0/s;->x:Lh0/s$b;

    if-nez v1, :cond_8

    .line 5
    iput-object v0, p1, Lm0/g;->d:Ld0/o;

    .line 6
    :cond_8
    iput-object p1, p0, Lh0/s;->t:Lm0/g;

    invoke-virtual {p1}, Lm0/g;->c()V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Lh0/s;->p:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lh0/s;->g:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    iget-object p1, p0, Lh0/s;->x:Lh0/s$b;

    invoke-virtual {p1}, Lh0/s$b;->a()V

    :goto_2
    iget-object p1, p0, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_14

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    goto/16 :goto_3

    .line 8
    :cond_b
    iget-boolean v0, p0, Lh0/s;->s:Z

    if-eqz v0, :cond_14

    iput-boolean v3, p0, Lh0/s;->s:Z

    .line 9
    iget-object v0, p0, Lh0/s;->t:Lm0/g;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lm0/g;->a()V

    :cond_c
    iget v0, p0, Lh0/s;->o:I

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lh0/s;->u:Z

    if-nez v0, :cond_d

    if-eqz p1, :cond_13

    :cond_d
    iget-object v0, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lm0/g;

    invoke-direct {v0}, Lm0/g;-><init>()V

    iget-object v3, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    if-eqz p1, :cond_e

    new-array p1, v1, [I

    fill-array-data p1, :array_1

    iget-object v1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v3, p1

    :cond_e
    iget-object p1, p0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {p1}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object p1

    invoke-virtual {p1, v3}, Ld0/n;->g(F)Ld0/n;

    iget-object v1, p0, Lh0/s;->y:Lh0/s$c;

    invoke-virtual {p1, v1}, Ld0/n;->f(Ld0/p;)Ld0/n;

    invoke-virtual {v0, p1}, Lm0/g;->b(Ld0/n;)Lm0/g;

    iget-boolean p1, p0, Lh0/s;->p:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lh0/s;->g:Landroid/view/View;

    if-eqz p1, :cond_f

    invoke-static {p1}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object p1

    invoke-virtual {p1, v3}, Ld0/n;->g(F)Ld0/n;

    invoke-virtual {v0, p1}, Lm0/g;->b(Ld0/n;)Lm0/g;

    :cond_f
    sget-object p1, Lh0/s;->z:Landroid/view/animation/AccelerateInterpolator;

    .line 10
    iget-boolean v1, v0, Lm0/g;->e:Z

    if-nez v1, :cond_10

    iput-object p1, v0, Lm0/g;->c:Landroid/view/animation/Interpolator;

    :cond_10
    if-nez v1, :cond_11

    .line 11
    iput-wide v4, v0, Lm0/g;->b:J

    .line 12
    :cond_11
    iget-object p1, p0, Lh0/s;->w:Lh0/s$a;

    if-nez v1, :cond_12

    .line 13
    iput-object p1, v0, Lm0/g;->d:Ld0/o;

    .line 14
    :cond_12
    iput-object v0, p0, Lh0/s;->t:Lm0/g;

    invoke-virtual {v0}, Lm0/g;->c()V

    goto :goto_3

    :cond_13
    iget-object p1, p0, Lh0/s;->w:Lh0/s$a;

    invoke-virtual {p1}, Lh0/s$a;->a()V

    :cond_14
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
