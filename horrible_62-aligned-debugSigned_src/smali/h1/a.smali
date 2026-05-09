.class public final Lh1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/z0;


# static fields
.field public static d:Lh1/a;


# instance fields
.field public a:I

.field public b:Ljava/io/Serializable;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh1/a;->b:Ljava/io/Serializable;

    iput p1, p0, Lh1/a;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lh1/a;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lh1/a;->c:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/d;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lh1/a;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lc3/d;

    if-eqz v1, :cond_0

    check-cast v0, Lc3/d;

    invoke-interface {v0, p1}, Lc3/d;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final d()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lh1/a;->c:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh1/a;->c:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh1/a;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Class;

    iget v1, p0, Lh1/a;->a:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lh1/a;->c:Ljava/lang/Object;

    check-cast v1, Lc3/d;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lc3/d;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method
