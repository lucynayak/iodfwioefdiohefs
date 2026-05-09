.class public final Landroid/arch/lifecycle/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/arch/lifecycle/d$b;

.field public b:Landroid/arch/lifecycle/GenericLifecycleObserver;


# virtual methods
.method public final a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;)V
    .locals 2

    invoke-static {p2}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/d$a;)Landroid/arch/lifecycle/d$b;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/d$b;Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$b;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    iget-object v1, p0, Landroid/arch/lifecycle/f$b;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;)V

    iput-object v0, p0, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    return-void
.end method
