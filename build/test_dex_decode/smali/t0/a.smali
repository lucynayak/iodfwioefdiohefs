.class public final Lt0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La1/e;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/e;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "a"

    const-string v1, "sendGetProductDataRequest"

    invoke-static {v0, v1}, La3/r0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lv0/d;

    invoke-direct {v0, p1, p2}, Lv0/d;-><init>(La1/e;Ljava/util/Set;)V

    invoke-virtual {v0}, Lt0/c;->c()V

    return-void
.end method

.method public final b(La1/e;Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    const-string v1, "sendPurchaseRequest"

    invoke-static {v0, v1}, La3/r0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lu0/d;

    invoke-direct {v0, p1, p2}, Lu0/d;-><init>(La1/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lt0/c;->c()V

    return-void
.end method

.method public final c(La1/e;Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    const-string v1, "sendNotifyFulfillment"

    invoke-static {v0, v1}, La3/r0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly0/b;

    invoke-direct {v0, p1, p2}, Ly0/b;-><init>(La1/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lt0/c;->c()V

    return-void
.end method

.method public final d(La1/e;)V
    .locals 2

    const-string v0, "a"

    const-string v1, "sendGetPurchaseUpdates"

    invoke-static {v0, v1}, La3/r0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lw0/a;

    invoke-direct {v0, p1}, Lw0/a;-><init>(La1/e;)V

    invoke-virtual {v0}, Lt0/c;->c()V

    return-void
.end method
