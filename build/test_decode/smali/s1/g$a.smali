.class public final Ls1/g$a;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lp1/a0<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/n<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final b:Ls1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Ls1/g;

.field public final d:Ls1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/g;Lp1/e;Ljava/lang/reflect/Type;Lp1/a0;Ljava/lang/reflect/Type;Lp1/a0;Lr1/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/e;",
            "Ljava/lang/reflect/Type;",
            "Lp1/a0<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lp1/a0<",
            "TV;>;",
            "Lr1/n<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ls1/g$a;->c:Ls1/g;

    invoke-direct {p0}, Lp1/a0;-><init>()V

    new-instance p1, Ls1/m;

    invoke-direct {p1, p2, p4, p3}, Ls1/m;-><init>(Lp1/e;Lp1/a0;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ls1/g$a;->b:Ls1/m;

    new-instance p1, Ls1/m;

    invoke-direct {p1, p2, p6, p5}, Ls1/m;-><init>(Lp1/e;Lp1/a0;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ls1/g$a;->d:Ls1/m;

    iput-object p7, p0, Ls1/g$a;->a:Lr1/n;

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    const/4 p1, 0x0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Ls1/g$a;->a:Lr1/n;

    invoke-interface {v1}, Lr1/n;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lv1/a;->a()V

    :goto_0
    invoke-virtual {p1}, Lv1/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lv1/a;->a()V

    iget-object v0, p0, Ls1/g$a;->b:Ls1/m;

    invoke-virtual {v0, p1}, Ls1/m;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ls1/g$a;->d:Ls1/m;

    invoke-virtual {v2, p1}, Ls1/m;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lv1/a;->e()V

    goto :goto_0

    :cond_1
    new-instance p1, Lp1/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lp1/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lv1/a;->e()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lv1/a;->b()V

    :goto_1
    invoke-virtual {p1}, Lv1/a;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lc/c;->a:Lv1/a$a;

    invoke-virtual {v0, p1}, Lv1/a$a;->c(Lv1/a;)V

    iget-object v0, p0, Ls1/g$a;->b:Ls1/m;

    invoke-virtual {v0, p1}, Ls1/m;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ls1/g$a;->d:Ls1/m;

    invoke-virtual {v2, p1}, Ls1/m;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lp1/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lp1/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lv1/a;->f()V

    :goto_2
    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .locals 7

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Ls1/g$a;->c:Ls1/g;

    .line 2
    iget-boolean v0, v0, Ls1/g;->b:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lv1/b;->c()Lv1/b;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lv1/b;->g(Ljava/lang/String;)Lv1/b;

    iget-object v1, p0, Ls1/g$a;->d:Ls1/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ls1/m;->write(Lv1/b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Ls1/g$a;->b:Ls1/m;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lp1/a0;->toJsonTree(Ljava/lang/Object;)Lp1/p;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v4, v5, Lp1/m;

    if-nez v4, :cond_3

    .line 5
    instance-of v4, v5, Lp1/s;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    .line 6
    invoke-virtual {p1}, Lv1/b;->b()Lv1/b;

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_5

    invoke-virtual {p1}, Lv1/b;->b()Lv1/b;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp1/p;

    invoke-static {p2, p1}, La3/r0;->I(Lp1/p;Lv1/b;)V

    iget-object p2, p0, Ls1/g$a;->d:Ls1/m;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ls1/m;->write(Lv1/b;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lv1/b;->e()Lv1/b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lv1/b;->e()Lv1/b;

    goto :goto_7

    :cond_6
    invoke-virtual {p1}, Lv1/b;->c()Lv1/b;

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp1/p;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    instance-of v3, p2, Lp1/u;

    if-eqz v3, :cond_a

    .line 9
    invoke-virtual {p2}, Lp1/p;->A()Lp1/u;

    move-result-object p2

    .line 10
    iget-object v3, p2, Lp1/u;->a:Ljava/lang/Object;

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_7

    .line 11
    invoke-virtual {p2}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 12
    :cond_7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    .line 13
    invoke-virtual {p2}, Lp1/u;->C()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 14
    :cond_8
    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15
    invoke-virtual {p2}, Lp1/u;->B()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_a
    instance-of p2, p2, Lp1/r;

    if-eqz p2, :cond_b

    const-string p2, "null"

    .line 17
    :goto_6
    invoke-virtual {p1, p2}, Lv1/b;->g(Ljava/lang/String;)Lv1/b;

    iget-object p2, p0, Ls1/g$a;->d:Ls1/m;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ls1/m;->write(Lv1/b;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 18
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_c
    invoke-virtual {p1}, Lv1/b;->f()Lv1/b;

    :goto_7
    return-void
.end method
