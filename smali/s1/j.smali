.class public final Ls1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/j$a;,
        Ls1/j$b;
    }
.end annotation


# instance fields
.field public final b:Lr1/d;

.field public final c:Lr1/k;

.field public final d:Lp1/d;


# direct methods
.method public constructor <init>(Lr1/d;Lp1/d;Lr1/k;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/j;->b:Lr1/d;

    iput-object p2, p0, Ls1/j;->d:Lp1/d;

    iput-object p3, p0, Ls1/j;->c:Lr1/k;

    return-void
.end method


# virtual methods
.method public final a(Lp1/e;Lu1/a;)Lp1/a0;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp1/e;",
            "Lu1/a<",
            "TT;>;)",
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v9, p0

    const-class v10, Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    return-object v11

    :cond_0
    new-instance v12, Ls1/j$a;

    iget-object v1, v9, Ls1/j;->b:Lr1/d;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lr1/d;->a(Lu1/a;)Lr1/n;

    move-result-object v13

    .line 1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v11

    goto/16 :goto_8

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v15

    move-object v8, v0

    move-object/from16 v16, v2

    :goto_0
    if-eq v8, v10, :cond_1

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_a

    aget-object v3, v7, v4

    const/4 v0, 0x1

    invoke-virtual {v9, v3, v0}, Ls1/j;->b(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    invoke-virtual {v9, v3, v5}, Ls1/j;->b(Ljava/lang/reflect/Field;Z)Z

    move-result v17

    if-nez v1, :cond_3

    if-nez v17, :cond_3

    move/from16 v25, v4

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 p2, v8

    move-object/from16 v21, v10

    const/16 v27, 0x0

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual/range {v16 .. v16}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v8, v2}, Lr1/a;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 2
    iget-object v0, v9, Ls1/j;->d:Lp1/d;

    .line 3
    const-class v2, Lq1/b;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lq1/b;

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    if-nez v2, :cond_4

    invoke-interface {v0, v3}, Lp1/d;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v1

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Lq1/b;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lq1/b;->alternate()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_2
    move/from16 v19, v1

    if-ge v5, v2, :cond_5

    aget-object v1, v0, v5

    invoke-virtual {v11, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v19

    goto :goto_2

    :cond_5
    :goto_3
    move/from16 v1, v19

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_4
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v5, :cond_6

    const/16 v19, 0x0

    goto :goto_5

    :cond_6
    move/from16 v19, v1

    :goto_5
    invoke-static/range {v18 .. v18}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object v20

    .line 5
    new-instance v1, Ls1/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    move-object/from16 v22, v2

    .line 6
    sget-object v2, Lr1/o;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    move-object/from16 v24, v21

    move-object v0, v1

    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v10

    move-object/from16 v9, v22

    move-object v10, v2

    move-object/from16 v2, v24

    move-object/from16 v22, v3

    move/from16 v3, v19

    move/from16 v25, v4

    move/from16 v4, v17

    move/from16 v26, v5

    const/16 v27, 0x0

    move-object/from16 v5, p1

    move/from16 v28, v6

    move-object/from16 v6, v22

    move-object/from16 v29, v7

    move-object/from16 v7, v20

    move-object/from16 p2, v8

    move/from16 v8, v23

    .line 7
    invoke-direct/range {v0 .. v8}, Ls1/i;-><init>(Ls1/j;Ljava/lang/String;ZZLp1/e;Ljava/lang/reflect/Field;Lu1/a;Z)V

    move-object/from16 v0, v24

    .line 8
    invoke-interface {v14, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls1/j$b;

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    move-object v2, v9

    :goto_6
    add-int/lit8 v5, v26, 0x1

    move-object/from16 v9, p0

    move-object/from16 v8, p2

    move/from16 v1, v19

    move-object/from16 v10, v21

    move-object/from16 v3, v22

    move/from16 v4, v25

    move/from16 v6, v28

    move-object/from16 v7, v29

    goto :goto_4

    :cond_8
    move-object v9, v2

    move/from16 v25, v4

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 p2, v8

    move-object/from16 v21, v10

    const/16 v27, 0x0

    if-nez v9, :cond_9

    :goto_7
    add-int/lit8 v4, v25, 0x1

    move-object/from16 v9, p0

    move-object/from16 v8, p2

    move-object/from16 v10, v21

    move/from16 v6, v28

    move-object/from16 v7, v29

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Ls1/j$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 p2, v8

    move-object/from16 v21, v10

    invoke-virtual/range {v16 .. v16}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Lr1/a;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lu1/a;->get(Ljava/lang/reflect/Type;)Lu1/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v9, p0

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 9
    :goto_8
    invoke-direct {v12, v13, v14, v0}, Ls1/j$a;-><init>(Lr1/n;Ljava/util/Map;Ls1/i;)V

    return-object v12
.end method

.method public final b(Ljava/lang/reflect/Field;Z)Z
    .registers 8

    iget-object v0, p0, Ls1/j;->c:Lr1/k;

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lr1/k;->b(Ljava/lang/Class;Z)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 2
    iget v1, v0, Lr1/k;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr1/k;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, v0, Lr1/k;->d:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p2, v0, Lr1/k;->b:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp1/b;

    invoke-interface {p2}, Lp1/b;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method
