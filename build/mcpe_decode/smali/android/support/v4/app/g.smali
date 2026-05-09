.class public Landroid/support/v4/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/arch/lifecycle/e;
.implements Landroid/arch/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/g$c;,
        Landroid/support/v4/app/g$e;,
        Landroid/support/v4/app/g$d;
    }
.end annotation


# static fields
.field public static final T:Lc0/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/j<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final U:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Landroid/view/ViewGroup;

.field public G:Landroid/view/View;

.field public H:Landroid/view/View;

.field public I:Z

.field public J:Z

.field public K:Landroid/support/v4/app/g$c;

.field public L:Z

.field public M:Z

.field public N:F

.field public O:Z

.field public P:Landroid/arch/lifecycle/f;

.field public Q:Landroid/arch/lifecycle/f;

.field public R:Landroid/support/v4/app/g$b;

.field public S:Landroid/arch/lifecycle/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/i<",
            "Landroid/arch/lifecycle/e;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Landroid/os/Bundle;

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Landroid/os/Bundle;

.field public h:Landroid/support/v4/app/g;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Landroid/support/v4/app/k;

.field public s:Landroid/support/v4/app/j;

.field public t:Landroid/support/v4/app/k;

.field public u:Landroid/support/v4/app/o;

.field public v:Landroid/arch/lifecycle/m;

.field public w:Landroid/support/v4/app/g;

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc0/j;

    invoke-direct {v0}, Lc0/j;-><init>()V

    sput-object v0, Landroid/support/v4/app/g;->T:Lc0/j;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/g;->U:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/g;->b:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/g;->e:I

    iput v0, p0, Landroid/support/v4/app/g;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->J:Z

    new-instance v0, Landroid/arch/lifecycle/f;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v0, p0, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    new-instance v0, Landroid/arch/lifecycle/i;

    invoke-direct {v0}, Landroid/arch/lifecycle/i;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g;->S:Landroid/arch/lifecycle/i;

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;
    .locals 5

    const-string v0, " empty constructor that is public"

    const-string v1, ": make sure class name exists, is public, and has an"

    const-string v2, "Unable to instantiate fragment "

    :try_start_0
    sget-object v3, Landroid/support/v4/app/g;->T:Lc0/j;

    invoke-virtual {v3, p1}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    new-array v3, p0, [Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/g;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/app/g;->T(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Landroid/support/v4/app/g$d;

    const-string v0, ": calling Fragment constructor caused an exception"

    .line 1
    invoke-static {v2, p1, v0}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/g$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Landroid/support/v4/app/g$d;

    const-string v0, ": could not find Fragment constructor"

    .line 3
    invoke-static {v2, p1, v0}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/g$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    new-instance p2, Landroid/support/v4/app/g$d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/g$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    new-instance p2, Landroid/support/v4/app/g$d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/g$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p0

    new-instance p2, Landroid/support/v4/app/g$d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/g$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-eqz p1, :cond_4

    check-cast p1, Landroid/support/v4/app/h$b;

    .line 2
    iget-object v0, p1, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p1, p1, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/g;->o()V

    iget v0, p0, Landroid/support/v4/app/g;->b:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->R()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->S()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->r()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->u()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method

.method public D(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method

.method public final G(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->s(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final H(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/g;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->t(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k0()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->p:Z

    new-instance v0, Landroid/support/v4/app/g$b;

    invoke-direct {v0, p0}, Landroid/support/v4/app/g$b;-><init>(Landroid/support/v4/app/g;)V

    iput-object v0, p0, Landroid/support/v4/app/g;->R:Landroid/support/v4/app/g$b;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/g;->w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/g;->R:Landroid/support/v4/app/g$b;

    invoke-virtual {p1}, Landroid/support/v4/app/g$b;->a()Landroid/arch/lifecycle/d;

    iget-object p1, p0, Landroid/support/v4/app/g;->S:Landroid/arch/lifecycle/i;

    iget-object p2, p0, Landroid/support/v4/app/g;->R:Landroid/support/v4/app/g$b;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/i;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    if-nez p1, :cond_2

    iput-object v0, p0, Landroid/support/v4/app/g;->R:Landroid/support/v4/app/g$b;

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final J()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->x()V

    :cond_0
    return-void
.end method

.method public final K(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->y(Z)V

    :cond_0
    return-void
.end method

.method public final L(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/g;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->N(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final M(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/g;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->O(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public final N(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->P(Z)V

    :cond_0
    return-void
.end method

.method public final O(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/g;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->Q(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_0
    return v1
.end method

.method public final P(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->D(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->p0()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final Q(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/g;->o()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/g;->u:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->o0(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/g;->u:Landroid/support/v4/app/o;

    iget-object p1, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    invoke-virtual {p1}, Landroid/support/v4/app/k;->u()V

    :cond_1
    return-void
.end method

.method public final R(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/g$c;->a:Landroid/view/View;

    return-void
.end method

.method public final S(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/g$c;->b:Landroid/animation/Animator;

    return-void
.end method

.method public final T(Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/g;->e:I

    if-ltz v0, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/k;->f()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iput-object p1, p0, Landroid/support/v4/app/g;->g:Landroid/os/Bundle;

    return-void
.end method

.method public final U(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/g$c;->k:Z

    return-void
.end method

.method public final V(ILandroid/support/v4/app/g;)V
    .locals 0

    iput p1, p0, Landroid/support/v4/app/g;->e:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/support/v4/app/g;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    goto :goto_0

    :cond_0
    const-string p2, "android:fragment:"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/g;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/g;->f:Ljava/lang/String;

    return-void
.end method

.method public final W(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/g$c;->d:I

    return-void
.end method

.method public final X(Landroid/support/v4/app/g$e;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    iget-object v0, v0, Landroid/support/v4/app/g$c;->j:Landroid/support/v4/app/g$e;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    check-cast p1, Landroid/support/v4/app/k$k;

    iget v0, p1, Landroid/support/v4/app/k$k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/v4/app/k$k;->c:I

    :cond_3
    return-void
.end method

.method public final Y(Landroid/content/Intent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/support/v4/app/h$b;

    .line 2
    iget-object v0, v0, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/support/v4/app/h;->i:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p2, v2, :cond_0

    :try_start_0
    sget p2, Landroid/support/v4/app/b;->b:I

    .line 4
    invoke-virtual {v0, p1, v2, v4}, Landroid/support/v4/app/h;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/support/v4/app/h;->i(I)V

    invoke-virtual {v0, p0}, Landroid/support/v4/app/h;->h(Landroid/support/v4/app/g;)I

    move-result v2

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr p2, v2

    add-int/2addr v1, p2

    sget p2, Landroid/support/v4/app/b;->b:I

    .line 6
    invoke-virtual {v0, p1, v1, v4}, Landroid/support/v4/app/h;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iput-boolean v3, v0, Landroid/support/v4/app/h;->i:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v3, v0, Landroid/support/v4/app/h;->i:Z

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Landroid/arch/lifecycle/d;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method public final b()Landroid/support/v4/app/g$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/g$c;

    invoke-direct {v0}, Landroid/support/v4/app/g$c;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    return-object v0
.end method

.method public final c()Landroid/support/v4/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/j;->a:Landroid/app/Activity;

    .line 2
    check-cast v0, Landroid/support/v4/app/h;

    :goto_0
    return-object v0
.end method

.method public final d()Landroid/arch/lifecycle/m;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/g;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/g;->v:Landroid/arch/lifecycle/m;

    if-nez v0, :cond_0

    new-instance v0, Landroid/arch/lifecycle/m;

    invoke-direct {v0}, Landroid/arch/lifecycle/m;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g;->v:Landroid/arch/lifecycle/m;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->v:Landroid/arch/lifecycle/m;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/g$c;->a:Landroid/view/View;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/g$c;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroid/support/v4/app/g$c;->d:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroid/support/v4/app/g$c;->e:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroid/support/v4/app/g$c;->f:I

    return v0
.end method

.method public final k()Landroid/content/res/Resources;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroid/support/v4/app/g$c;->c:I

    return v0
.end method

.method public final m(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/g;->k()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0}, Landroid/support/v4/app/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    new-instance v2, Landroid/support/v4/app/g$a;

    invoke-direct {v2, p0}, Landroid/support/v4/app/g$a;-><init>(Landroid/support/v4/app/g;)V

    .line 1
    iget-object v3, v0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    if-nez v3, :cond_0

    iput-object v1, v0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    iput-object v2, v0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/b0;

    iput-object p0, v0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/g;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Landroid/support/v4/app/g$c;->k:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/g;->q:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method

.method public t(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, La3/r0;->j(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/g;->e:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/support/v4/app/g;->x:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/g;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    iget-object v1, p0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, v1, Landroid/support/v4/app/j;->a:Landroid/app/Activity;

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    :cond_1
    return-void
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->Q(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz p1, :cond_1

    .line 1
    iget v1, p1, Landroid/support/v4/app/k;->l:I

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/app/k;->u()V

    :cond_1
    return-void
.end method

.method public w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/g;->v:Landroid/arch/lifecycle/m;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/arch/lifecycle/m;->a()V

    :cond_1
    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    return-void
.end method
