.class public final Ly0/a;
.super Lt0/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lt0/c;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/c;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lt0/g;-><init>(Lt0/c;)V

    const-string p1, "receiptIds"

    invoke-virtual {p0, p1, p2}, Lt0/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "fulfillmentStatus"

    invoke-virtual {p0, p1, p3}, Lt0/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/g;->a:Lt0/c;

    .line 2
    iget-object v0, v0, Lt0/c;->b:Lt0/f;

    .line 3
    iget-object v0, v0, Lt0/f;->a:Ljava/util/HashMap;

    const-string v1, "notifyListenerResult"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fulfillmentStatus"

    const-string v1, "DELIVERY_ATTEMPTED"

    invoke-virtual {p0, v0, v1}, Lt0/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lt0/g;->b()V

    return-void
.end method
