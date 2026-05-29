.class public abstract Landroid/support/v4/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/arch/lifecycle/e;)Landroid/support/v4/app/b0;
    .registers 3

    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v1, p0

    check-cast v1, Landroid/arch/lifecycle/n;

    invoke-interface {v1}, Landroid/arch/lifecycle/n;->d()Landroid/arch/lifecycle/m;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/m;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Landroid/support/v4/app/g;
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;
    .registers 4

    invoke-static {p1, p2, p3}, Landroid/support/v4/app/g;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;

    move-result-object p1

    return-object p1
.end method

.method public abstract f()Z
.end method

.method public abstract g(I)Landroid/view/View;
.end method

.method public abstract h()Z
.end method

.method public abstract i()Z
.end method
