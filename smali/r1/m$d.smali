.class public abstract Lr1/m$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lr1/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/m$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:Lr1/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/m$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lr1/m;


# direct methods
.method public constructor <init>(Lr1/m;)V
    .registers 3

    iput-object p1, p0, Lr1/m$d;->e:Lr1/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lr1/m;->d:Lr1/m$e;

    iget-object v0, v0, Lr1/m$e;->e:Lr1/m$e;

    iput-object v0, p0, Lr1/m$d;->d:Lr1/m$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lr1/m$d;->c:Lr1/m$e;

    iget p1, p1, Lr1/m;->f:I

    iput p1, p0, Lr1/m$d;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lr1/m$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr1/m$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lr1/m$d;->d:Lr1/m$e;

    iget-object v1, p0, Lr1/m$d;->e:Lr1/m;

    iget-object v2, v1, Lr1/m;->d:Lr1/m$e;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lr1/m;->f:I

    iget v2, p0, Lr1/m$d;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lr1/m$e;->e:Lr1/m$e;

    iput-object v1, p0, Lr1/m$d;->d:Lr1/m$e;

    iput-object v0, p0, Lr1/m$d;->c:Lr1/m$e;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lr1/m$d;->d:Lr1/m$e;

    iget-object v1, p0, Lr1/m$d;->e:Lr1/m;

    iget-object v1, v1, Lr1/m;->d:Lr1/m$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lr1/m$d;->c:Lr1/m$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr1/m$d;->e:Lr1/m;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lr1/m;->e(Lr1/m$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lr1/m$d;->c:Lr1/m$e;

    iget-object v0, p0, Lr1/m$d;->e:Lr1/m;

    iget v0, v0, Lr1/m;->f:I

    iput v0, p0, Lr1/m$d;->b:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
