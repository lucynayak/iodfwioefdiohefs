.class public final Lp1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Lr1/k;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/b0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lp1/c$a;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lp1/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field public h:Lp1/y$a;

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr1/k;->e:Lr1/k;

    iput-object v0, p0, Lp1/k;->c:Lr1/k;

    sget-object v0, Lp1/y;->c:Lp1/y$a;

    iput-object v0, p0, Lp1/k;->h:Lp1/y$a;

    sget-object v0, Lp1/c;->c:Lp1/c$a;

    iput-object v0, p0, Lp1/k;->e:Lp1/c$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp1/k;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp1/k;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp1/k;->f:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lp1/k;->a:I

    iput v0, p0, Lp1/k;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp1/k;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lp1/e;
    .locals 9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lp1/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lp1/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lp1/k;->a:I

    iget v1, p0, Lp1/k;->j:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 1
    new-instance v2, Lp1/a;

    .line 2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1, v3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lp1/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 3
    const-class v0, Ljava/util/Date;

    invoke-static {v0}, Lu1/a;->get(Ljava/lang/Class;)Lu1/a;

    move-result-object v0

    invoke-static {v0, v2}, Lp1/z;->a(Lu1/a;Ljava/lang/Object;)Lp1/b0;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/sql/Timestamp;

    invoke-static {v0}, Lu1/a;->get(Ljava/lang/Class;)Lu1/a;

    move-result-object v0

    invoke-static {v0, v2}, Lp1/z;->a(Lu1/a;Ljava/lang/Object;)Lp1/b0;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/sql/Date;

    invoke-static {v0}, Lu1/a;->get(Ljava/lang/Class;)Lu1/a;

    move-result-object v0

    invoke-static {v0, v2}, Lp1/z;->a(Lu1/a;Ljava/lang/Object;)Lp1/b0;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    new-instance v8, Lp1/e;

    iget-object v1, p0, Lp1/k;->c:Lr1/k;

    iget-object v2, p0, Lp1/k;->e:Lp1/c$a;

    iget-object v3, p0, Lp1/k;->g:Ljava/util/HashMap;

    iget-boolean v4, p0, Lp1/k;->i:Z

    iget-boolean v5, p0, Lp1/k;->b:Z

    iget-object v6, p0, Lp1/k;->h:Lp1/y$a;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lp1/e;-><init>(Lr1/k;Lp1/d;Ljava/util/Map;ZZLp1/y;Ljava/util/List;)V

    return-object v8
.end method

.method public final b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lp1/k;
    .locals 6

    instance-of v0, p2, Lp1/w;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    instance-of v3, p2, Lp1/o;

    if-nez v3, :cond_1

    instance-of v3, p2, Lp1/l;

    if-nez v3, :cond_1

    instance-of v3, p2, Lp1/a0;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ld1/a;->k(Z)V

    instance-of v3, p2, Lp1/l;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lp1/k;->g:Ljava/util/HashMap;

    move-object v4, p2

    check-cast v4, Lp1/l;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, Lp1/o;

    if-eqz v0, :cond_5

    :cond_3
    invoke-static {p1}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object v0

    iget-object v3, p0, Lp1/k;->d:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    new-instance v2, Lp1/z$b;

    invoke-direct {v2, p2, v0, v1}, Lp1/z$b;-><init>(Ljava/lang/Object;Lu1/a;Z)V

    .line 2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    instance-of v0, p2, Lp1/a0;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lp1/k;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object p1

    check-cast p2, Lp1/a0;

    sget-object v1, Ls1/n;->a:Ls1/p;

    .line 3
    new-instance v1, Ls1/o;

    invoke-direct {v1, p1, p2}, Ls1/o;-><init>(Lu1/a;Lp1/a0;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0
.end method
