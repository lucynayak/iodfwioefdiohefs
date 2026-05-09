.class public final La3/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/x1$a;
    }
.end annotation


# instance fields
.field public final a:Ld3/h;


# direct methods
.method public constructor <init>(La3/t2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object p1, p1, La3/t2;->d:Ld3/h;

    .line 2
    iput-object p1, p0, La3/x1;->a:Ld3/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)La3/w1;
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1
    instance-of v2, v1, Ly2/d;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    new-instance v2, La3/x1$a;

    const-class v6, La3/o0;

    const-class v7, Ly2/d;

    .line 2
    invoke-direct {v2, v6, v7, v3}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    instance-of v2, v1, Ly2/f;

    if-eqz v2, :cond_1

    new-instance v2, La3/x1$a;

    const-class v6, La3/h0;

    const-class v7, Ly2/f;

    .line 4
    invoke-direct {v2, v6, v7, v3}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, v1, Ly2/e;

    if-eqz v2, :cond_2

    new-instance v2, La3/x1$a;

    const-class v6, La3/e0;

    const-class v7, Ly2/e;

    .line 6
    invoke-direct {v2, v6, v7, v3}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v2, v1, Ly2/i;

    if-eqz v2, :cond_3

    new-instance v2, La3/x1$a;

    const-class v3, La3/n0;

    const-class v6, Ly2/i;

    const-class v7, Ly2/h;

    invoke-direct {v2, v3, v6, v7}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Ly2/g;

    if-eqz v2, :cond_4

    new-instance v2, La3/x1$a;

    const-class v3, La3/j0;

    const-class v6, Ly2/g;

    const-class v7, Ly2/f;

    invoke-direct {v2, v3, v6, v7}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    instance-of v2, v1, Ly2/j;

    if-eqz v2, :cond_5

    new-instance v2, La3/x1$a;

    const-class v3, La3/q0;

    const-class v6, Ly2/j;

    const-class v7, Ly2/d;

    invoke-direct {v2, v3, v6, v7}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    instance-of v2, v1, Ly2/h;

    if-eqz v2, :cond_6

    new-instance v2, La3/x1$a;

    const-class v6, La3/l0;

    const-class v7, Ly2/h;

    .line 8
    invoke-direct {v2, v6, v7, v3}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 9
    :cond_6
    instance-of v2, v1, Ly2/a;

    if-eqz v2, :cond_7

    new-instance v2, La3/x1$a;

    const-class v6, La3/f;

    const-class v7, Ly2/a;

    .line 10
    invoke-direct {v2, v6, v7, v3}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 11
    :cond_7
    instance-of v2, v1, Ly2/p;

    if-eqz v2, :cond_b

    new-instance v2, La3/x1$a;

    const-class v6, La3/a3;

    const-class v7, Ly2/p;

    .line 12
    invoke-direct {v2, v6, v7, v3}, La3/x1$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    :goto_0
    const-class v3, Ld3/h;

    iget-object v6, v2, La3/x1$a;->a:Ljava/lang/Class;

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v6, :cond_8

    iget-object v11, v2, La3/x1$a;->b:Ljava/lang/Class;

    new-array v12, v7, [Ljava/lang/Class;

    .line 14
    const-class v13, Ljava/lang/reflect/Constructor;

    aput-object v13, v12, v5

    aput-object v11, v12, v4

    aput-object v6, v12, v9

    aput-object v3, v12, v10

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v12, v8

    .line 15
    iget-object v2, v2, La3/x1$a;->c:Ljava/lang/Class;

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_1

    .line 16
    :cond_8
    iget-object v6, v2, La3/x1$a;->b:Ljava/lang/Class;

    new-array v11, v8, [Ljava/lang/Class;

    .line 17
    const-class v12, Ljava/lang/reflect/Constructor;

    aput-object v12, v11, v5

    aput-object v6, v11, v4

    aput-object v3, v11, v9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v11, v10

    .line 18
    iget-object v2, v2, La3/x1$a;->c:Ljava/lang/Class;

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 19
    :goto_1
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_9
    if-eqz p3, :cond_a

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v1, v3, v4

    aput-object p3, v3, v9

    .line 20
    iget-object v1, v0, La3/x1;->a:Ld3/h;

    aput-object v1, v3, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    check-cast v1, La3/w1;

    return-object v1

    :cond_a
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v1, v3, v4

    iget-object v1, v0, La3/x1;->a:Ld3/h;

    aput-object v1, v3, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 21
    :cond_b
    new-instance v2, La3/a2;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const-string v1, "Annotation %s not supported"

    invoke-direct {v2, v1, v3}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method
