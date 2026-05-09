.class public final Lp1/z;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp1/a0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lp1/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lp1/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lp1/e;

.field public final d:Lp1/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lp1/b0;

.field public final f:Lu1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu1/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp1/w;Lp1/o;Lp1/e;Lu1/a;Lp1/b0;Lp1/z$a;)V
    .registers 7

    invoke-direct {p0}, Lp1/a0;-><init>()V

    iput-object p1, p0, Lp1/z;->d:Lp1/w;

    iput-object p2, p0, Lp1/z;->b:Lp1/o;

    iput-object p3, p0, Lp1/z;->c:Lp1/e;

    iput-object p4, p0, Lp1/z;->f:Lu1/a;

    iput-object p5, p0, Lp1/z;->e:Lp1/b0;

    return-void
.end method

.method public static a(Lu1/a;Ljava/lang/Object;)Lp1/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu1/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lp1/b0;"
        }
    .end annotation

    new-instance v0, Lp1/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lp1/z$b;-><init>(Ljava/lang/Object;Lu1/a;Z)V

    return-object v0
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lp1/z;->b:Lp1/o;

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lp1/z;->a:Lp1/a0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp1/z;->c:Lp1/e;

    iget-object v1, p0, Lp1/z;->e:Lp1/b0;

    iget-object v2, p0, Lp1/z;->f:Lu1/a;

    invoke-virtual {v0, v1, v2}, Lp1/e;->g(Lp1/b0;Lu1/a;)Lp1/a0;

    move-result-object v0

    iput-object v0, p0, Lp1/z;->a:Lp1/a0;

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Lp1/a0;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lv1/a;->v()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lv1/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Ls1/n;->A:Ls1/n$u;

    .line 4
    invoke-virtual {v1, p1}, Ls1/n$u;->a(Lv1/a;)Lp1/p;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lv1/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 5
    new-instance v0, Lp1/x;

    invoke-direct {v0, p1}, Lp1/x;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lp1/q;

    invoke-direct {v0, p1}, Lp1/q;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    new-instance v0, Lp1/x;

    invoke-direct {v0, p1}, Lp1/x;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    sget-object p1, Lp1/r;->a:Lp1/r;

    .line 6
    :goto_2
    instance-of v0, p1, Lp1/r;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Lp1/z;->b:Lp1/o;

    iget-object v1, p0, Lp1/z;->f:Lu1/a;

    invoke-virtual {v1}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lp1/z;->c:Lp1/e;

    iget-object v2, v2, Lp1/e;->c:Lp1/e$a;

    invoke-interface {v0, p1, v1, v2}, Lp1/o;->deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    new-instance v0, Lp1/x;

    invoke-direct {v0, p1}, Lp1/x;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/b;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lp1/z;->d:Lp1/w;

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lp1/z;->a:Lp1/a0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp1/z;->c:Lp1/e;

    iget-object v1, p0, Lp1/z;->e:Lp1/b0;

    iget-object v2, p0, Lp1/z;->f:Lu1/a;

    invoke-virtual {v0, v1, v2}, Lp1/e;->g(Lp1/b0;Lu1/a;)Lp1/a0;

    move-result-object v0

    iput-object v0, p0, Lp1/z;->a:Lp1/a0;

    .line 2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lp1/a0;->write(Lv1/b;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    return-void

    :cond_2
    iget-object v1, p0, Lp1/z;->f:Lu1/a;

    invoke-virtual {v1}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lp1/z;->c:Lp1/e;

    iget-object v2, v2, Lp1/e;->h:Lp1/e$b;

    invoke-interface {v0, p2, v1, v2}, Lp1/w;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lp1/v;)Lp1/p;

    move-result-object p2

    invoke-static {p2, p1}, La3/r0;->I(Lp1/p;Lv1/b;)V

    return-void
.end method
