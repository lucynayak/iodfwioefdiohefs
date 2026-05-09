.class public final Lp1/s;
.super Lp1/p;
.source "SourceFile"


# instance fields
.field public final a:Lr1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/m<",
            "Ljava/lang/String;",
            "Lp1/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lp1/p;-><init>()V

    new-instance v0, Lr1/m;

    invoke-direct {v0}, Lr1/m;-><init>()V

    iput-object v0, p0, Lp1/s;->a:Lr1/m;

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;Lp1/p;)V
    .registers 4

    if-nez p2, :cond_0

    sget-object p2, Lp1/r;->a:Lp1/r;

    :cond_0
    iget-object v0, p0, Lp1/s;->a:Lr1/m;

    invoke-virtual {v0, p1, p2}, Lr1/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lp1/s;

    if-eqz v0, :cond_0

    check-cast p1, Lp1/s;

    iget-object p1, p1, Lp1/s;->a:Lr1/m;

    iget-object v0, p0, Lp1/s;->a:Lr1/m;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lp1/s;->a:Lr1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
