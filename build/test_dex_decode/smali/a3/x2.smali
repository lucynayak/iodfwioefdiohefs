.class public abstract La3/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/c1;


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public i()Lc3/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAttribute()Z
    .locals 0

    instance-of p0, p0, La3/e;

    return p0
.end method

.method public isText()Z
    .locals 0

    instance-of p0, p0, La3/z2;

    return p0
.end method

.method public k()Z
    .locals 0

    instance-of p0, p0, La3/g0;

    return p0
.end method

.method public o()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0}, La3/c1;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public p(Ljava/lang/Class;)Lc3/c;
    .locals 0

    invoke-interface {p0}, La3/c1;->n()La3/s;

    move-result-object p1

    return-object p1
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 0

    instance-of p0, p0, La3/z2;

    return p0
.end method

.method public t()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0}, La3/c1;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, La3/c1;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public u(Ljava/lang/Class;)La3/c1;
    .locals 0

    return-object p0
.end method

.method public v()Z
    .locals 0

    instance-of p0, p0, La3/i0;

    return p0
.end method
