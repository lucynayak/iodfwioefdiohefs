.class public final Lv0/d;
.super Lt0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(La1/e;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/e;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lt0/c;-><init>(La1/e;)V

    new-instance p1, Lv0/a;

    invoke-direct {p1, p0, p2}, Lv0/a;-><init>(Lt0/c;Ljava/util/Set;)V

    new-instance v0, Lv0/b;

    invoke-direct {v0, p0, p2}, Lv0/b;-><init>(Lt0/c;Ljava/util/Set;)V

    iput-object p1, p0, Lt0/c;->c:Lt0/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lt0/c;->b:Lt0/f;

    .line 2
    iget-object v0, v0, Lt0/f;->a:Ljava/util/HashMap;

    const-string v1, "RESPONSE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, La1/b;

    .line 4
    invoke-virtual {p0, v0}, Lt0/c;->b(Ljava/lang/Object;)V

    return-void
.end method
