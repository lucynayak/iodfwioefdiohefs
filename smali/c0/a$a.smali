.class public final Lc0/a$a;
.super Lc0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/a;->k()Lc0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc0/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc0/a;


# direct methods
.method public constructor <init>(Lc0/a;)V
    .registers 2

    iput-object p1, p0, Lc0/a$a;->d:Lc0/a;

    invoke-direct {p0}, Lc0/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    invoke-virtual {v0}, Lc0/j;->clear()V

    return-void
.end method

.method public final b(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    iget-object v0, v0, Lc0/j;->c:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    iget v0, v0, Lc0/j;->d:I

    return v0
.end method

.method public final e(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    invoke-virtual {v0, p1}, Lc0/j;->e(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    invoke-virtual {v0, p1}, Lc0/j;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    invoke-virtual {v0, p1, p2}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(I)V
    .registers 3

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    invoke-virtual {v0, p1}, Lc0/j;->i(I)Ljava/lang/Object;

    return-void
.end method

.method public final i(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lc0/a$a;->d:Lc0/a;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, v0, Lc0/j;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method
