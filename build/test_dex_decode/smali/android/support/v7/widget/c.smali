.class public final Landroid/support/v7/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/c$b;,
        Landroid/support/v7/widget/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v7/widget/c$b;

.field public final b:Landroid/support/v7/widget/c$a;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    new-instance p1, Landroid/support/v7/widget/c$a;

    invoke-direct {p1}, Landroid/support/v7/widget/c$a;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/c$a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/c;->c(I)I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v0, Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v0, Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v1, Landroid/support/v7/widget/n;

    invoke-virtual {v1}, Landroid/support/v7/widget/n;->b()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/c$a;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/c$a;->a(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/c$a;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/c$a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final d(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v0, Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v0, Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->b()I

    move-result v0

    return v0
.end method

.method public final f(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/c$b;

    check-cast v0, Landroid/support/v7/widget/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/c$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
