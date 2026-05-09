.class public final La3/s1;
.super La3/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(La3/q;Lc3/c;)V
    .registers 3

    invoke-direct {p0, p1, p2}, La3/l;-><init>(La3/q;Lc3/c;)V

    return-void
.end method


# virtual methods
.method public final f(Ld3/m;)La3/z0;
    .registers 4

    invoke-virtual {p0, p1}, La3/t0;->a(Ld3/m;)Lc3/d;

    move-result-object p1

    invoke-virtual {p0}, La3/t0;->b()Ljava/lang/Class;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-static {v0}, La3/t0;->c(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La3/t0;->a:La3/q;

    invoke-virtual {p1, v0}, La3/q;->d(Ljava/lang/Class;)La3/z0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    iget-object v1, p0, La3/t0;->d:Lc3/c;

    aput-object v1, p1, v0

    new-instance v0, La3/d;

    const-string v1, "Cannot instantiate %s for %s"

    invoke-direct {v0, v1, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v0, La3/t1;

    iget-object v1, p0, La3/t0;->a:La3/q;

    invoke-direct {v0, v1, p1}, La3/t1;-><init>(La3/q;Lc3/d;)V

    return-object v0
.end method
