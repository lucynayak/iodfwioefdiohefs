.class public final Landroid/support/v7/widget/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/u$b;,
        Landroid/support/v7/widget/u$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v7/widget/u$b;

.field public b:Landroid/support/v7/widget/u$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/u$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/u$b;

    new-instance p1, Landroid/support/v7/widget/u$a;

    invoke-direct {p1}, Landroid/support/v7/widget/u$a;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/u$a;

    return-void
.end method


# virtual methods
.method public final a(IIII)Landroid/view/View;
    .registers 13

    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/u$b;

    invoke-interface {v0}, Landroid/support/v7/widget/u$b;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/u$b;

    invoke-interface {v1}, Landroid/support/v7/widget/u$b;->b()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/u$b;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/u$b;->a(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/u$b;

    invoke-interface {v5, v4}, Landroid/support/v7/widget/u$b;->e(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/u$b;

    invoke-interface {v6, v4}, Landroid/support/v7/widget/u$b;->d(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/u$a;

    .line 1
    iput v0, v7, Landroid/support/v7/widget/u$a;->b:I

    iput v1, v7, Landroid/support/v7/widget/u$a;->c:I

    iput v5, v7, Landroid/support/v7/widget/u$a;->d:I

    iput v6, v7, Landroid/support/v7/widget/u$a;->e:I

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    .line 2
    iput v5, v7, Landroid/support/v7/widget/u$a;->a:I

    .line 3
    invoke-virtual {v7, p3}, Landroid/support/v7/widget/u$a;->a(I)V

    iget-object v6, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/u$a;

    invoke-virtual {v6}, Landroid/support/v7/widget/u$a;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/u$a;

    .line 4
    iput v5, v6, Landroid/support/v7/widget/u$a;->a:I

    .line 5
    invoke-virtual {v6, p4}, Landroid/support/v7/widget/u$a;->a(I)V

    iget-object v5, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/u$a;

    invoke-virtual {v5}, Landroid/support/v7/widget/u$a;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method
