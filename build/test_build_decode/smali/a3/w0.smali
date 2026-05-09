.class public final La3/w0;
.super La3/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/w0$a;
    }
.end annotation


# instance fields
.field public final b:La3/u;

.field public final c:La3/a;


# direct methods
.method public constructor <init>(La3/b0;La3/t2;)V
    .locals 6

    invoke-direct {p0}, La3/t;-><init>()V

    new-instance v0, La3/a;

    invoke-direct {v0, p1, p2}, La3/a;-><init>(La3/b0;La3/t2;)V

    iput-object v0, p0, La3/w0;->c:La3/a;

    new-instance v0, La3/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La3/u;-><init>(I)V

    iput-object v0, p0, La3/w0;->b:La3/u;

    .line 1
    invoke-interface {p1}, La3/b0;->j()Ly2/c;

    move-result-object v0

    invoke-interface {p1}, La3/b0;->p()Ly2/c;

    move-result-object v2

    invoke-interface {p1}, La3/b0;->q()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {p2, v3, v0}, La3/t2;->b(Ljava/lang/Class;Ly2/c;)La3/t;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-interface {p1}, La3/b0;->m()Ljava/util/List;

    move-result-object p2

    sget-object v0, Ly2/c;->c:Ly2/c;

    if-ne v2, v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/v0;

    .line 4
    iget-object v2, v0, La3/v0;->b:[Ljava/lang/annotation/Annotation;

    .line 5
    iget-object v0, v0, La3/v0;->a:Ljava/lang/reflect/Field;

    .line 6
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-static {v0}, Ld1/a;->C(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, La3/w0;->c:La3/a;

    invoke-virtual {v5, v3, v4}, La3/a;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, v3, v2}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p1}, La3/b0;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La3/v0;

    .line 11
    iget-object v0, p2, La3/v0;->b:[Ljava/lang/annotation/Annotation;

    .line 12
    iget-object p2, p2, La3/v0;->a:Ljava/lang/reflect/Field;

    .line 13
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 14
    instance-of v5, v4, Ly2/a;

    if-eqz v5, :cond_4

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_4
    instance-of v5, v4, Ly2/j;

    if-eqz v5, :cond_5

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_5
    instance-of v5, v4, Ly2/g;

    if-eqz v5, :cond_6

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_6
    instance-of v5, v4, Ly2/i;

    if-eqz v5, :cond_7

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_7
    instance-of v5, v4, Ly2/f;

    if-eqz v5, :cond_8

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_8
    instance-of v5, v4, Ly2/e;

    if-eqz v5, :cond_9

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_9
    instance-of v5, v4, Ly2/h;

    if-eqz v5, :cond_a

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_a
    instance-of v5, v4, Ly2/d;

    if-eqz v5, :cond_b

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_b
    instance-of v5, v4, Ly2/r;

    if-eqz v5, :cond_c

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_c
    instance-of v5, v4, Ly2/p;

    if-eqz v5, :cond_d

    invoke-virtual {p0, p2, v4, v0}, La3/w0;->A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_d
    instance-of v4, v4, Ly2/q;

    if-eqz v4, :cond_e

    .line 15
    iget-object v4, p0, La3/w0;->b:La3/u;

    new-instance v5, La3/w0$a;

    invoke-direct {v5, p2}, La3/w0$a;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {v4, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_f
    iget-object p1, p0, La3/w0;->b:La3/u;

    invoke-virtual {p1}, La3/u;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La3/s;

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    new-instance v0, La3/u0;

    invoke-direct {v0, p1, p2, p3}, La3/u0;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    new-instance p2, La3/w0$a;

    invoke-direct {p2, p1}, La3/w0$a;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1
    :cond_0
    iget-object p1, p0, La3/w0;->b:La3/u;

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La3/s;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0}, La3/u0;->c()Ljava/lang/annotation/Annotation;

    move-result-object p3

    instance-of p3, p3, Ly2/p;

    if-eqz p3, :cond_1

    move-object v0, p1

    .line 3
    :cond_1
    iget-object p1, p0, La3/w0;->b:La3/u;

    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
