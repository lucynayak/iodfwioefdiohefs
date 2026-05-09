.class public Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field public final a:[Landroid/arch/lifecycle/c;


# virtual methods
.method public final a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;)V
    .registers 6

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroid/arch/lifecycle/c;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Landroid/arch/lifecycle/c;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroid/arch/lifecycle/c;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    invoke-interface {v1}, Landroid/arch/lifecycle/c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
