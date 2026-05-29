.class public final La3/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/m2$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "La3/m2$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, La3/m2;->a:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, La3/m2;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/m2$a;

    if-eqz v0, :cond_1

    .line 1
    iget v1, v0, La3/m2$a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La3/m2$a;->a:I

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, La3/m2;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, La3/a2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Session does not exist"

    invoke-direct {v0, v2, v1}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final b(Z)La3/l2;
    .registers 3

    iget-object v0, p0, La3/m2;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/m2$a;

    if-eqz v0, :cond_1

    .line 1
    iget p1, v0, La3/m2$a;->a:I

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, La3/m2$a;->a:I

    :cond_0
    iget-object p1, v0, La3/m2$a;->b:La3/l2;

    return-object p1

    .line 2
    :cond_1
    new-instance v0, La3/m2$a;

    invoke-direct {v0, p1}, La3/m2$a;-><init>(Z)V

    iget-object p1, p0, La3/m2;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    iget p1, v0, La3/m2$a;->a:I

    if-ltz p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, La3/m2$a;->a:I

    :cond_2
    iget-object p1, v0, La3/m2$a;->b:La3/l2;

    return-object p1
.end method
