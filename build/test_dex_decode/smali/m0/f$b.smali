.class public final Lm0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Lm0/f;

.field public a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ld0/c;


# direct methods
.method public constructor <init>(Lm0/f;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lm0/f$b;->E:Lm0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lm0/f$b;->C:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lm0/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lm0/f$b;->a:Landroid/view/Menu;

    const/4 p1, 0x0

    iput p1, p0, Lm0/f$b;->b:I

    iput p1, p0, Lm0/f$b;->c:I

    iput p1, p0, Lm0/f$b;->d:I

    iput p1, p0, Lm0/f$b;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm0/f$b;->f:Z

    iput-boolean p1, p0, Lm0/f$b;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/f$b;->h:Z

    iget-object v0, p0, Lm0/f$b;->a:Landroid/view/Menu;

    iget v1, p0, Lm0/f$b;->b:I

    iget v2, p0, Lm0/f$b;->i:I

    iget v3, p0, Lm0/f$b;->j:I

    iget-object v4, p0, Lm0/f$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lm0/f$b;->c(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lm0/f$b;->E:Lm0/f;

    iget-object v0, v0, Lm0/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Landroid/view/MenuItem;)V
    .locals 7

    iget-boolean v0, p0, Lm0/f$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lm0/f$b;->t:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lm0/f$b;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lm0/f$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lm0/f$b;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lm0/f$b;->m:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Lm0/f$b;->v:I

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Lm0/f$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lm0/f$b;->E:Lm0/f;

    iget-object v0, v0, Lm0/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lm0/f$a;

    iget-object v1, p0, Lm0/f$b;->E:Lm0/f;

    .line 1
    iget-object v4, v1, Lm0/f;->d:Ljava/lang/Object;

    if-nez v4, :cond_4

    iget-object v4, v1, Lm0/f;->c:Landroid/content/Context;

    .line 2
    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    instance-of v5, v4, Landroid/content/ContextWrapper;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lm0/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3
    :cond_3
    :goto_1
    iput-object v4, v1, Lm0/f;->d:Ljava/lang/Object;

    :cond_4
    iget-object v1, v1, Lm0/f;->d:Ljava/lang/Object;

    .line 4
    iget-object v4, p0, Lm0/f$b;->y:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lm0/f$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    instance-of v0, p1, Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/g;

    :cond_7
    iget v1, p0, Lm0/f$b;->r:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_a

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/g;

    .line 5
    iget v1, v0, Landroid/support/v7/view/menu/g;->x:I

    and-int/lit8 v1, v1, -0x5

    const/4 v4, 0x4

    or-int/2addr v1, v4

    iput v1, v0, Landroid/support/v7/view/menu/g;->x:I

    goto :goto_3

    .line 6
    :cond_8
    instance-of v0, p1, Ln0/c;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Ln0/c;

    .line 7
    :try_start_0
    iget-object v1, v0, Ln0/c;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v1, Ly/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setExclusiveCheckable"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Ln0/c;->e:Ljava/lang/reflect/Method;

    :cond_9
    iget-object v1, v0, Ln0/c;->e:Ljava/lang/reflect/Method;

    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "MenuItemWrapper"

    const-string v4, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_a
    :goto_3
    iget-object v0, p0, Lm0/f$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v1, Lm0/f;->e:[Ljava/lang/Class;

    iget-object v2, p0, Lm0/f$b;->E:Lm0/f;

    iget-object v2, v2, Lm0/f;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lm0/f$b;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    :cond_b
    iget v0, p0, Lm0/f$b;->w:I

    if-lez v0, :cond_d

    if-nez v2, :cond_c

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_4

    :cond_c
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    iget-object v0, p0, Lm0/f$b;->z:Ld0/c;

    if-eqz v0, :cond_f

    .line 9
    instance-of v1, p1, Ly/b;

    if-eqz v1, :cond_e

    move-object v1, p1

    check-cast v1, Ly/b;

    invoke-interface {v1, v0}, Ly/b;->b(Ld0/c;)Ly/b;

    goto :goto_5

    :cond_e
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_f
    :goto_5
    iget-object v0, p0, Lm0/f$b;->A:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ld0/e;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lm0/f$b;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ld0/e;->f(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v0, p0, Lm0/f$b;->n:C

    iget v1, p0, Lm0/f$b;->o:I

    invoke-static {p1, v0, v1}, Ld0/e;->a(Landroid/view/MenuItem;CI)V

    iget-char v0, p0, Lm0/f$b;->p:C

    iget v1, p0, Lm0/f$b;->q:I

    invoke-static {p1, v0, v1}, Ld0/e;->e(Landroid/view/MenuItem;CI)V

    iget-object v0, p0, Lm0/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_10

    invoke-static {p1, v0}, Ld0/e;->d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_10
    iget-object v0, p0, Lm0/f$b;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    invoke-static {p1, v0}, Ld0/e;->c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_11
    return-void
.end method
