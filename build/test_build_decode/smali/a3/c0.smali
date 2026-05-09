.class public final La3/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b0;


# instance fields
.field public a:Ly2/c;

.field public b:Ly2/l;

.field public c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La3/v0;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Ljava/lang/annotation/Annotation;

.field public e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La3/j1;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ly2/k;

.field public h:Ly2/m;

.field public i:Ly2/c;

.field public j:Z

.field public k:Ly2/n;

.field public l:Z

.field public m:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ly2/c;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, La3/c0;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, La3/c0;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, La3/c0;->d:[Ljava/lang/annotation/Annotation;

    iput-object p2, p0, La3/c0;->i:Ly2/c;

    const/4 p2, 0x1

    iput-boolean p2, p0, La3/c0;->l:Z

    iput-object p1, p0, La3/c0;->m:Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, La3/j1;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, La3/j1;-><init>(Ljava/lang/reflect/Method;)V

    iget-object v5, p0, La3/c0;->e:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    new-instance v3, La3/v0;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, La3/v0;-><init>(Ljava/lang/reflect/Field;)V

    iget-object v4, p0, La3/c0;->c:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, La3/c0;->d:[Ljava/lang/annotation/Annotation;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_9

    aget-object v3, p1, v1

    instance-of v4, v3, Ly2/k;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 4
    move-object v4, v3

    check-cast v4, Ly2/k;

    iput-object v4, p0, La3/c0;->g:Ly2/k;

    .line 5
    :cond_2
    instance-of v4, v3, Ly2/l;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 6
    move-object v4, v3

    check-cast v4, Ly2/l;

    iput-object v4, p0, La3/c0;->b:Ly2/l;

    .line 7
    :cond_3
    instance-of v4, v3, Ly2/n;

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 8
    move-object v4, v3

    check-cast v4, Ly2/n;

    iget-object v5, p0, La3/c0;->m:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ly2/n;->name()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_5

    .line 10
    invoke-static {v5}, Ld1/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-interface {v4}, Ly2/n;->strict()Z

    move-result v5

    iput-boolean v5, p0, La3/c0;->l:Z

    iput-object v4, p0, La3/c0;->k:Ly2/n;

    iput-object v6, p0, La3/c0;->f:Ljava/lang/String;

    .line 11
    :cond_6
    instance-of v4, v3, Ly2/m;

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    .line 12
    move-object v4, v3

    check-cast v4, Ly2/m;

    iput-object v4, p0, La3/c0;->h:Ly2/m;

    .line 13
    :cond_7
    instance-of v4, v3, Ly2/b;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 14
    check-cast v3, Ly2/b;

    invoke-interface {v3}, Ly2/b;->required()Z

    move-result v4

    iput-boolean v4, p0, La3/c0;->j:Z

    invoke-interface {v3}, Ly2/b;->value()Ly2/c;

    move-result-object v3

    iput-object v3, p0, La3/c0;->a:Ly2/c;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, La3/c0;->m:Ljava/lang/Class;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, La3/c0;->j:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, La3/c0;->m:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/c0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()Ly2/m;
    .locals 1

    iget-object v0, p0, La3/c0;->h:Ly2/m;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, La3/c0;->l:Z

    return v0
.end method

.method public final j()Ly2/c;
    .locals 1

    iget-object v0, p0, La3/c0;->i:Ly2/c;

    return-object v0
.end method

.method public final k()Ly2/n;
    .locals 1

    iget-object v0, p0, La3/c0;->k:Ly2/n;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, La3/c0;->m:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La3/c0;->m:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La3/v0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/c0;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final n()[Ljava/lang/reflect/Constructor;
    .locals 1

    iget-object v0, p0, La3/c0;->m:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La3/j1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/c0;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final p()Ly2/c;
    .locals 1

    iget-object v0, p0, La3/c0;->i:Ly2/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La3/c0;->a:Ly2/c;

    return-object v0
.end method

.method public final q()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, La3/c0;->m:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final r()Ly2/l;
    .locals 1

    iget-object v0, p0, La3/c0;->b:Ly2/l;

    return-object v0
.end method

.method public final s()Ly2/k;
    .locals 1

    iget-object v0, p0, La3/c0;->g:Ly2/k;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/c0;->m:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
