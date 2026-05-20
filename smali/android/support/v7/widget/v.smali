.class public final Landroid/support/v7/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/v$a;
    }
.end annotation


# instance fields
.field public final a:Lc0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/a<",
            "Landroid/support/v7/widget/m$v;",
            "Landroid/support/v7/widget/v$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/e<",
            "Landroid/support/v7/widget/m$v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/v;->a:Lc0/a;

    new-instance v0, Lc0/e;

    invoke-direct {v0}, Lc0/e;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/v;->b:Lc0/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/m$v;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Lc0/e;

    invoke-virtual {v0}, Lc0/e;->g()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/v;->b:Lc0/e;

    invoke-virtual {v2, v0}, Lc0/e;->h(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/v;->b:Lc0/e;

    .line 1
    iget-object v3, v2, Lc0/e;->d:[Ljava/lang/Object;

    aget-object v4, v3, v0

    sget-object v5, Lc0/e;->f:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    aput-object v5, v3, v0

    iput-boolean v1, v2, Lc0/e;->b:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/v;->a:Lc0/a;

    invoke-virtual {v0, p1}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/v$a;

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/v$a;->a(Landroid/support/v7/widget/v$a;)V

    :cond_2
    return-void
.end method
