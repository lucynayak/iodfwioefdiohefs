.class public final Landroid/support/v7/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/b$a;,
        Landroid/support/v7/widget/b$b;
    }
.end annotation


# instance fields
.field public a:Lc0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/h;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/support/v7/widget/b$a;

.field public final e:Landroid/support/v7/widget/i;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/b$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc0/h;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lc0/h;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/b;->a:Lc0/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/b;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/widget/b$a;

    new-instance p1, Landroid/support/v7/widget/i;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/i;-><init>(Landroid/support/v7/widget/i$a;)V

    iput-object p1, p0, Landroid/support/v7/widget/b;->e:Landroid/support/v7/widget/i;

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/b$b;

    iget v2, v1, Landroid/support/v7/widget/b$b;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/support/v7/widget/b$b;->b:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Landroid/support/v7/widget/b$b;->d:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v1, v1, Landroid/support/v7/widget/b$b;->d:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v1, Landroid/support/v7/widget/b$b;->b:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget v1, v1, Landroid/support/v7/widget/b$b;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v1, v1, Landroid/support/v7/widget/b$b;->d:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Landroid/support/v7/widget/b$b;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/b$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Lc0/h;

    invoke-virtual {v0, p1}, Lc0/h;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/b$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/b$b;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/b;->c(Landroid/support/v7/widget/b$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
