.class public final Ls1/n$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp1/e;Lu1/a;)Lp1/a0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp1/e;",
            "Lu1/a<",
            "TT;>;)",
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Ls1/n$r$a;

    const-class v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {v0}, Lu1/a;->get(Ljava/lang/Class;)Lu1/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp1/e;->f(Lu1/a;)Lp1/a0;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ls1/n$r$a;-><init>(Lp1/a0;)V

    return-object p2
.end method
