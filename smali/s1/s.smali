.class public final Ls1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/b0;


# instance fields
.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Lp1/a0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lp1/a0;)V
    .registers 3

    iput-object p1, p0, Ls1/s;->b:Ljava/lang/Class;

    iput-object p2, p0, Ls1/s;->c:Lp1/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp1/e;Lu1/a;)Lp1/a0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lp1/e;",
            "Lu1/a<",
            "TT2;>;)",
            "Lp1/a0<",
            "TT2;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Ls1/s;->b:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Ls1/s$a;

    invoke-direct {p2, p0, p1}, Ls1/s$a;-><init>(Ls1/s;Ljava/lang/Class;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Factory[typeHierarchy="

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls1/s;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/s;->c:Lp1/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
