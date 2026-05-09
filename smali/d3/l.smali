.class public final Ld3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/m;


# instance fields
.field public final a:Ld3/n;

.field public final b:Ld3/e;

.field public final c:Ld3/m;

.field public final d:Ld3/u;


# direct methods
.method public constructor <init>(Ld3/m;Ld3/u;Ld3/e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld3/n;

    invoke-direct {v0, p0, p3}, Ld3/n;-><init>(Ld3/m;Ld3/e;)V

    iput-object v0, p0, Ld3/l;->a:Ld3/n;

    iput-object p2, p0, Ld3/l;->d:Ld3/u;

    iput-object p1, p0, Ld3/l;->c:Ld3/m;

    iput-object p3, p0, Ld3/l;->b:Ld3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ld3/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/t<",
            "Ld3/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld3/l;->a:Ld3/n;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ld3/m;
    .registers 3

    iget-object v0, p0, Ld3/l;->a:Ld3/n;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/m;

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/l;->b:Ld3/e;

    invoke-interface {v0}, Ld3/e;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPosition()Landroid/arch/lifecycle/h;
    .registers 4

    new-instance v0, Landroid/arch/lifecycle/h;

    iget-object v1, p0, Ld3/l;->b:Ld3/e;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/arch/lifecycle/h;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/l;->d:Ld3/u;

    invoke-virtual {v0, p0}, Ld3/u;->c(Ld3/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ld3/m;
    .registers 2

    iget-object v0, p0, Ld3/l;->d:Ld3/u;

    invoke-virtual {v0, p0}, Ld3/u;->b(Ld3/m;)Ld3/m;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .registers 3

    iget-object v0, p0, Ld3/l;->d:Ld3/u;

    :cond_0
    invoke-virtual {v0, p0}, Ld3/u;->b(Ld3/m;)Ld3/m;

    move-result-object v1

    if-nez v1, :cond_0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ld3/l;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "element %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
