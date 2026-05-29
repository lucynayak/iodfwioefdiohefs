.class public final Ls1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/b0;


# instance fields
.field public final synthetic b:Lu1/a;

.field public final synthetic c:Lp1/a0;


# direct methods
.method public constructor <init>(Lu1/a;Lp1/a0;)V
    .registers 3

    iput-object p1, p0, Ls1/o;->b:Lu1/a;

    iput-object p2, p0, Ls1/o;->c:Lp1/a0;

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

    iget-object p1, p0, Ls1/o;->b:Lu1/a;

    invoke-virtual {p2, p1}, Lu1/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls1/o;->c:Lp1/a0;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
