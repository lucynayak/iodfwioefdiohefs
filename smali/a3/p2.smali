.class public final La3/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/p2$a;,
        La3/p2$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Constructor;

.field public final b:La3/p2$b;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/p2$b;

    invoke-direct {v0}, La3/p2$b;-><init>()V

    iput-object v0, p0, La3/p2;->b:La3/p2$b;

    iput-object p1, p0, La3/p2;->a:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final a(La3/p2$b;La3/p2$a;I)V
    .registers 12

    iget-object v0, p0, La3/p2;->b:La3/p2$b;

    invoke-virtual {v0, p3}, La3/p2$b;->A(I)La3/p2$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget-object v2, p0, La3/p2;->b:La3/p2$b;

    .line 1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-le v2, p3, :cond_0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2
    new-instance v2, La3/p2$a;

    invoke-direct {v2, p2}, La3/p2$a;-><init>(La3/p2$a;)V

    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La3/w1;

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, p1, v2, v4}, La3/p2;->a(La3/p2$b;La3/p2$a;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, La3/p2;->b:La3/p2$b;

    invoke-virtual {v0, p3}, La3/p2$b;->A(I)La3/p2$a;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_1

    invoke-virtual {p1, v5}, La3/p2$b;->A(I)La3/p2$a;

    move-result-object v6

    invoke-virtual {p2, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La3/w1;

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, p3}, La3/p2$b;->A(I)La3/p2$a;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La3/w1;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b()Z
    .registers 4

    iget-object v0, p0, La3/p2;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, La3/p2;->b:La3/p2$b;

    sget v2, La3/p2$b;->b:I

    .line 1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 2
    array-length v0, v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
