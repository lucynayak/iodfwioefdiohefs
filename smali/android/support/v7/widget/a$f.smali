.class public final Landroid/support/v7/widget/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v7/widget/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/a$f;->b:Landroid/support/v7/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Z)V
    .registers 5

    instance-of v0, p1, Landroid/support/v7/view/menu/l;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/e;->l()Landroid/support/v7/view/menu/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/e;->d(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a$f;->b:Landroid/support/v7/widget/a;

    .line 1
    iget-object v0, v0, Landroid/support/v7/view/menu/a;->f:Landroid/support/v7/view/menu/i$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/i$a;->a(Landroid/support/v7/view/menu/e;Z)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/a$f;->b:Landroid/support/v7/widget/a;

    move-object v2, p1

    check-cast v2, Landroid/support/v7/view/menu/l;

    .line 1
    iget-object v2, v2, Landroid/support/v7/view/menu/l;->A:Landroid/support/v7/view/menu/g;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/widget/a$f;->b:Landroid/support/v7/widget/a;

    .line 3
    iget-object v1, v1, Landroid/support/v7/view/menu/a;->f:Landroid/support/v7/view/menu/i$a;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, p1}, Landroid/support/v7/view/menu/i$a;->b(Landroid/support/v7/view/menu/e;)Z

    move-result v0

    :cond_1
    return v0
.end method
