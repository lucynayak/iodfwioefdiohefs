.class public final Lo0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lo0/i;

.field public c:I

.field public d:Lo0/q0;

.field public e:Lo0/q0;

.field public f:Lo0/q0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo0/d;->c:I

    iput-object p1, p0, Lo0/d;->a:Landroid/view/View;

    invoke-static {}, Lo0/i;->g()Lo0/i;

    move-result-object p1

    iput-object p1, p0, Lo0/d;->b:Lo0/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lo0/d;->d:Lo0/q0;

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_7

    .line 2
    iget-object v1, p0, Lo0/d;->f:Lo0/q0;

    if-nez v1, :cond_2

    new-instance v1, Lo0/q0;

    invoke-direct {v1}, Lo0/q0;-><init>()V

    iput-object v1, p0, Lo0/d;->f:Lo0/q0;

    :cond_2
    iget-object v1, p0, Lo0/d;->f:Lo0/q0;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    iput-boolean v4, v1, Lo0/q0;->d:Z

    iput-object v2, v1, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, v1, Lo0/q0;->c:Z

    .line 4
    iget-object v2, p0, Lo0/d;->a:Landroid/view/View;

    sget-object v5, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    iput-boolean v3, v1, Lo0/q0;->d:Z

    iput-object v2, v1, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    :cond_3
    iget-object v2, p0, Lo0/d;->a:Landroid/view/View;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8
    iput-boolean v3, v1, Lo0/q0;->c:Z

    iput-object v2, v1, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_4
    iget-boolean v2, v1, Lo0/q0;->d:Z

    if-nez v2, :cond_6

    iget-boolean v2, v1, Lo0/q0;->c:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v2, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo0/i;->p(Landroid/graphics/drawable/Drawable;Lo0/q0;[I)V

    :goto_3
    if-eqz v3, :cond_7

    return-void

    .line 9
    :cond_7
    iget-object v1, p0, Lo0/d;->e:Lo0/q0;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo0/i;->p(Landroid/graphics/drawable/Drawable;Lo0/q0;[I)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lo0/d;->d:Lo0/q0;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo0/i;->p(Landroid/graphics/drawable/Drawable;Lo0/q0;[I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lo0/d;->e:Lo0/q0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Lo0/d;->e:Lo0/q0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .registers 9

    iget-object v0, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, La3/r0;->F:[I

    invoke-static {v0, p1, v1, p2}, Lo0/s0;->n(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lo0/s0;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lo0/s0;->m(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, Lo0/s0;->k(II)I

    move-result v0

    iput v0, p0, Lo0/d;->c:I

    iget-object v0, p0, Lo0/d;->b:Lo0/i;

    iget-object v2, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lo0/d;->c:I

    invoke-virtual {v0, v2, v3}, Lo0/i;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lo0/d;->g(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo0/s0;->m(I)Z

    move-result v2

    const/16 v3, 0x15

    if-eqz v2, :cond_4

    iget-object v2, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sget-object v5, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-ne v5, v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 v2, 0x2

    .line 2
    invoke-virtual {p1, v2}, Lo0/s0;->m(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Lo0/s0;->i(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo0/c0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    if-ne v2, v3, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 p2, 0x1

    :cond_6
    if-eqz v1, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_7
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_8
    invoke-virtual {p1}, Lo0/s0;->o()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lo0/s0;->o()V

    throw p2
.end method

.method public final e()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lo0/d;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo0/d;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lo0/d;->a()V

    return-void
.end method

.method public final f(I)V
    .registers 4

    iput p1, p0, Lo0/d;->c:I

    iget-object v0, p0, Lo0/d;->b:Lo0/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo0/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo0/i;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lo0/d;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lo0/d;->a()V

    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo0/d;->d:Lo0/q0;

    if-nez v0, :cond_0

    new-instance v0, Lo0/q0;

    invoke-direct {v0}, Lo0/q0;-><init>()V

    iput-object v0, p0, Lo0/d;->d:Lo0/q0;

    :cond_0
    iget-object v0, p0, Lo0/d;->d:Lo0/q0;

    iput-object p1, v0, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lo0/q0;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lo0/d;->d:Lo0/q0;

    :goto_0
    invoke-virtual {p0}, Lo0/d;->a()V

    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lo0/d;->e:Lo0/q0;

    if-nez v0, :cond_0

    new-instance v0, Lo0/q0;

    invoke-direct {v0}, Lo0/q0;-><init>()V

    iput-object v0, p0, Lo0/d;->e:Lo0/q0;

    :cond_0
    iget-object v0, p0, Lo0/d;->e:Lo0/q0;

    iput-object p1, v0, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lo0/q0;->d:Z

    invoke-virtual {p0}, Lo0/d;->a()V

    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Lo0/d;->e:Lo0/q0;

    if-nez v0, :cond_0

    new-instance v0, Lo0/q0;

    invoke-direct {v0}, Lo0/q0;-><init>()V

    iput-object v0, p0, Lo0/d;->e:Lo0/q0;

    :cond_0
    iget-object v0, p0, Lo0/d;->e:Lo0/q0;

    iput-object p1, v0, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lo0/q0;->c:Z

    invoke-virtual {p0}, Lo0/d;->a()V

    return-void
.end method
