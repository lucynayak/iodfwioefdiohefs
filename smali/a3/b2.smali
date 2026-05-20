.class public final La3/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/o;


# instance fields
.field public final a:Ld3/h;

.field public final b:La3/m2;

.field public final c:Lc3/b;

.field public final d:La3/t2;


# direct methods
.method public constructor <init>(Lc3/b;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1
    new-instance v1, Lb3/d;

    invoke-direct {v1, v0}, Lb3/d;-><init>(Ljava/util/Map;)V

    .line 2
    new-instance v0, Ld3/h;

    invoke-direct {v0}, Ld3/h;-><init>()V

    .line 3
    new-instance v2, La3/r0;

    invoke-direct {v2}, La3/r0;-><init>()V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, La3/t2;

    invoke-direct {v3, v1, v2, v0}, La3/t2;-><init>(Lb3/b;Le3/i;Ld3/h;)V

    iput-object v3, p0, La3/b2;->d:La3/t2;

    new-instance v1, La3/m2;

    invoke-direct {v1}, La3/m2;-><init>()V

    iput-object v1, p0, La3/b2;->b:La3/m2;

    iput-object p1, p0, La3/b2;->c:Lc3/b;

    iput-object v0, p0, La3/b2;->a:Ld3/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ld3/r;->a:Ld3/c0;

    invoke-interface {v0, p2}, Ld3/c0;->e(Ljava/io/InputStream;)Ld3/f;

    move-result-object p2

    .line 2
    new-instance v0, Ld3/u;

    invoke-direct {v0, p2}, Ld3/u;-><init>(Ld3/f;)V

    .line 3
    iget-object p2, v0, Ld3/u;->b:Ld3/o;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {v0, v1}, Ld3/u;->b(Ld3/m;)Ld3/m;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lz2/c;

    const-string p2, "Document has no root element"

    invoke-direct {p1, p2}, Lz2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object p2, p0, La3/b2;->b:La3/m2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, La3/m2;->b(Z)La3/l2;

    move-result-object p2

    .line 5
    :try_start_0
    new-instance v0, La3/q;

    iget-object v2, p0, La3/b2;->c:Lc3/b;

    iget-object v3, p0, La3/b2;->d:La3/t2;

    invoke-direct {v0, v2, v3, p2}, La3/q;-><init>(Lc3/b;La3/t2;La3/l2;)V

    .line 6
    new-instance p2, La3/b3;

    invoke-direct {p2, v0}, La3/b3;-><init>(La3/q;)V

    invoke-virtual {p2, v1, p1}, La3/b3;->e(Ld3/m;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p2, p0, La3/b2;->b:La3/m2;

    invoke-virtual {p2}, La3/m2;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, La3/b2;->b:La3/m2;

    invoke-virtual {p2}, La3/m2;->a()V

    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 7

    iget-object v0, p0, La3/b2;->a:Ld3/h;

    sget-object v1, Ld3/r;->a:Ld3/c0;

    .line 1
    new-instance v1, Ld3/v;

    invoke-direct {v1, p2, v0}, Ld3/v;-><init>(Ljava/io/Writer;Ld3/h;)V

    .line 2
    new-instance p2, Ld3/x;

    iget-object v0, v1, Ld3/v;->b:Ld3/a0;

    invoke-direct {p2, v1, v0}, Ld3/x;-><init>(Ld3/v;Ld3/a0;)V

    iget-object v0, v1, Ld3/v;->b:Ld3/a0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Ld3/v;->c:Ld3/i;

    .line 3
    iget-object v1, v0, Ld3/i;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ld3/i;->f(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ld3/i;->f(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, La3/b2;->b:La3/m2;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, La3/m2;->b(Z)La3/l2;

    move-result-object v0

    .line 6
    :try_start_0
    new-instance v1, La3/q;

    iget-object v2, p0, La3/b2;->c:Lc3/b;

    iget-object v3, p0, La3/b2;->d:La3/t2;

    invoke-direct {v1, v2, v3, v0}, La3/q;-><init>(Lc3/b;La3/t2;La3/l2;)V

    .line 7
    new-instance v0, La3/b3;

    invoke-direct {v0, v1}, La3/b3;-><init>(La3/q;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, La3/b3;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, p1, v1, v2}, La3/b3;->f(Ld3/z;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, La3/b2;->b:La3/m2;

    invoke-virtual {p1}, La3/m2;->a()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, La3/b2;->b:La3/m2;

    invoke-virtual {p2}, La3/m2;->a()V

    throw p1
.end method
