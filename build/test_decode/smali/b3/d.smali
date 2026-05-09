.class public final Lb3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/b;


# instance fields
.field public a:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lb3/d;->a:Ljava/util/Stack;

    .line 2
    new-instance v0, Lb3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb3/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lb3/d;->b(Lb3/b;)V

    new-instance v0, Lb3/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb3/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lb3/d;->b(Lb3/b;)V

    new-instance v0, Lb3/c;

    invoke-direct {v0, p1}, Lb3/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lb3/d;->b(Lb3/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb3/d;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lb3/d;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/b;

    invoke-interface {v1, p1}, Lb3/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final b(Lb3/b;)V
    .locals 1

    iget-object v0, p0, Lb3/d;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
