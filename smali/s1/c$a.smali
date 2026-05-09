.class public final Ls1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/c;
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
    .registers 3
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

    move-result-object p1

    const-class p2, Ljava/util/Date;

    if-ne p1, p2, :cond_0

    new-instance p1, Ls1/c;

    invoke-direct {p1}, Ls1/c;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
