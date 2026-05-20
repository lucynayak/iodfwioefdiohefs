.class public final La3/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/z0;


# instance fields
.field public final a:La3/q;

.field public final b:Ljava/lang/Class;

.field public final c:Lc3/d;


# direct methods
.method public constructor <init>(La3/q;Lc3/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lc3/d;->a()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La3/t1;->b:Ljava/lang/Class;

    iput-object p1, p0, La3/t1;->a:La3/q;

    iput-object p2, p0, La3/t1;->c:Lc3/d;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/t1;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, La3/t1;->c:Lc3/d;

    invoke-interface {v0}, Lc3/d;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, La3/t1;->c:Lc3/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc3/d;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final d()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, La3/t1;->c:Lc3/d;

    invoke-interface {v0}, Lc3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/t1;->c:Lc3/d;

    invoke-interface {v0}, Lc3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La3/t1;->b:Ljava/lang/Class;

    .line 1
    iget-object v1, p0, La3/t1;->a:La3/q;

    invoke-virtual {v1, v0}, La3/q;->d(Ljava/lang/Class;)La3/z0;

    move-result-object v0

    check-cast v0, La3/a1$a;

    invoke-virtual {v0}, La3/a1$a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, La3/t1;->c:Lc3/d;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lc3/d;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method
