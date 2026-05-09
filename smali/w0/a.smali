.class public final Lw0/a;
.super Lt0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(La1/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lt0/c;-><init>(La1/e;)V

    new-instance p1, Lx0/a;

    invoke-direct {p1, p0}, Lx0/a;-><init>(Lt0/c;)V

    new-instance v0, Lw0/b;

    invoke-direct {v0, p0}, Lw0/b;-><init>(Lt0/c;)V

    new-instance v0, Lx0/b;

    invoke-direct {v0, p0}, Lx0/b;-><init>(Lt0/c;)V

    new-instance v0, Lw0/c;

    invoke-direct {v0, p0}, Lw0/c;-><init>(Lt0/c;)V

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
    check-cast v0, La1/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lt0/c;->b(Ljava/lang/Object;)V

    return-void
.end method
