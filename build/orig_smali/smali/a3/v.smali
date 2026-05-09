.class public final La3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/z0;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La3/b0;La3/t2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/c;

    invoke-direct {v0}, Lf3/c;-><init>()V

    iput-object v0, p0, La3/v;->b:Ljava/lang/Object;

    .line 1
    iget-object p2, p2, La3/t2;->d:Ld3/h;

    .line 2
    iput-object p2, p0, La3/v;->c:Ljava/lang/Object;

    invoke-interface {p1}, La3/b0;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, La3/v;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    iput-object p1, p0, La3/v;->b:Ljava/lang/Object;

    iput-object p3, p0, La3/v;->a:Ljava/lang/Object;

    iput-object p2, p0, La3/v;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, La3/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, La3/v;->c:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/d;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La3/v;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lc3/d;

    if-eqz v1, :cond_0

    check-cast v0, Lc3/d;

    invoke-interface {v0, p1}, Lc3/d;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La3/v;->c:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/v;->c:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La3/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 1
    iget-object v1, p0, La3/v;->b:Ljava/lang/Object;

    check-cast v1, La3/q;

    invoke-virtual {v1, v0}, La3/q;->d(Ljava/lang/Class;)La3/z0;

    move-result-object v0

    check-cast v0, La3/a1$a;

    invoke-virtual {v0}, La3/a1$a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, La3/v;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final e(Ljava/lang/String;)La3/s0;
    .locals 4

    iget-object v0, p0, La3/v;->b:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1}, Lf3/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/s0;

    if-nez v0, :cond_0

    new-instance v0, La3/y1;

    new-instance v1, Landroid/arch/lifecycle/h;

    iget-object v2, p0, La3/v;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/arch/lifecycle/h;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, La3/v;->c:Ljava/lang/Object;

    check-cast v2, Ld3/h;

    invoke-direct {v0, p1, v1, v2}, La3/y1;-><init>(Ljava/lang/String;Lc3/c;Ld3/h;)V

    iget-object v1, p0, La3/v;->b:Ljava/lang/Object;

    check-cast v1, Lf3/a;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Lf3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
