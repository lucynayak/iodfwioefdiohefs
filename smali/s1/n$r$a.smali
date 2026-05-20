.class public final Ls1/n$r$a;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/n$r;->a(Lp1/e;Lu1/a;)Lp1/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp1/a0;


# direct methods
.method public constructor <init>(Lp1/a0;)V
    .registers 2

    iput-object p1, p0, Ls1/n$r$a;->a:Lp1/a0;

    invoke-direct {p0}, Lp1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ls1/n$r$a;->a:Lp1/a0;

    invoke-virtual {v0, p1}, Lp1/a0;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Ls1/n$r$a;->a:Lp1/a0;

    invoke-virtual {v0, p1, p2}, Lp1/a0;->write(Lv1/b;Ljava/lang/Object;)V

    return-void
.end method
