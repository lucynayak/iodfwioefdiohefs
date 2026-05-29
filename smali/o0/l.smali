.class public final Lo0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Lo0/q0;

.field public c:Lo0/q0;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/l;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo0/c0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_9

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_8

    .line 2
    iget-object v1, p0, Lo0/l;->c:Lo0/q0;

    if-nez v1, :cond_3

    new-instance v1, Lo0/q0;

    invoke-direct {v1}, Lo0/q0;-><init>()V

    iput-object v1, p0, Lo0/l;->c:Lo0/q0;

    :cond_3
    iget-object v1, p0, Lo0/l;->c:Lo0/q0;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    iput-boolean v4, v1, Lo0/q0;->d:Z

    iput-object v2, v1, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, v1, Lo0/q0;->c:Z

    .line 4
    iget-object v2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6
    iput-boolean v3, v1, Lo0/q0;->d:Z

    iput-object v2, v1, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    :cond_4
    iget-object v2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 8
    iput-boolean v3, v1, Lo0/q0;->c:Z

    iput-object v2, v1, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_5
    iget-boolean v2, v1, Lo0/q0;->d:Z

    if-nez v2, :cond_7

    iget-boolean v2, v1, Lo0/q0;->c:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo0/i;->p(Landroid/graphics/drawable/Drawable;Lo0/q0;[I)V

    :goto_2
    if-eqz v3, :cond_8

    return-void

    .line 9
    :cond_8
    iget-object v1, p0, Lo0/l;->b:Lo0/q0;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo0/i;->p(Landroid/graphics/drawable/Drawable;Lo0/q0;[I)V

    :cond_9
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .registers 9

    iget-object v0, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, La3/r0;->l:[I

    invoke-static {v0, p1, v1, p2}, Lo0/s0;->n(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lo0/s0;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1, v1, v0}, Lo0/s0;->k(II)I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object p2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lo0/c0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lo0/s0;->m(I)Z

    move-result v2

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lo0/s0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-ne v5, v3, :cond_4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 p2, 0x3

    .line 2
    invoke-virtual {p1, p2}, Lo0/s0;->m(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v0}, Lo0/s0;->i(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo0/c0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    if-ne v0, v3, :cond_7

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_7
    invoke-virtual {p1}, Lo0/s0;->o()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lo0/s0;->o()V

    throw p2
.end method

.method public final c(I)V
    .registers 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo0/c0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lo0/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo0/l;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lo0/l;->a()V

    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lo0/l;->b:Lo0/q0;

    if-nez v0, :cond_0

    new-instance v0, Lo0/q0;

    invoke-direct {v0}, Lo0/q0;-><init>()V

    iput-object v0, p0, Lo0/l;->b:Lo0/q0;

    :cond_0
    iget-object v0, p0, Lo0/l;->b:Lo0/q0;

    iput-object p1, v0, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lo0/q0;->d:Z

    invoke-virtual {p0}, Lo0/l;->a()V

    return-void
.end method

.method public final e(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Lo0/l;->b:Lo0/q0;

    if-nez v0, :cond_0

    new-instance v0, Lo0/q0;

    invoke-direct {v0}, Lo0/q0;-><init>()V

    iput-object v0, p0, Lo0/l;->b:Lo0/q0;

    :cond_0
    iget-object v0, p0, Lo0/l;->b:Lo0/q0;

    iput-object p1, v0, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lo0/q0;->c:Z

    invoke-virtual {p0}, Lo0/l;->a()V

    return-void
.end method
