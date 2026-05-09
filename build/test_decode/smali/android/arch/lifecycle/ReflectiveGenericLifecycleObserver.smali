.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/arch/lifecycle/a;


# virtual methods
.method public final a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;)V
    .locals 3

    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroid/arch/lifecycle/a;

    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    iget-object v2, v0, Landroid/arch/lifecycle/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Landroid/arch/lifecycle/a;->a(Ljava/util/List;Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/arch/lifecycle/a;->a:Ljava/util/HashMap;

    sget-object v2, Landroid/arch/lifecycle/d$a;->ON_ANY:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Landroid/arch/lifecycle/a;->a(Ljava/util/List;Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;Ljava/lang/Object;)V

    return-void
.end method
