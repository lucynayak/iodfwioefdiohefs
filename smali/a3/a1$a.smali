.class public final La3/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:La3/a1;

.field public b:Ljava/lang/Class;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La3/a1;Ljava/lang/Class;)V
    .registers 3

    iput-object p1, p0, La3/a1$a;->a:La3/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La3/a1$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/a1$a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, La3/a1$a;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final d()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, La3/a1$a;->c:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, La3/a1$a;->a:La3/a1;

    iget-object v1, p0, La3/a1$a;->b:Ljava/lang/Class;

    .line 1
    iget-object v2, v0, La3/a1;->a:Lf3/b;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    iget-object v0, v0, La3/a1;->a:Lf3/b;

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iput-object v0, p0, La3/a1$a;->c:Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, La3/a1$a;->c:Ljava/lang/Object;

    return-object v0
.end method
