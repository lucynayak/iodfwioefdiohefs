.class public final Lp1/f;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp1/e;


# direct methods
.method public constructor <init>(Lp1/e;)V
    .locals 0

    iput-object p1, p0, Lp1/f;->a:Lp1/e;

    invoke-direct {p0}, Lp1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lv1/a;->m()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lp1/f;->a:Lp1/e;

    invoke-static {v2, v0, v1}, Lp1/e;->a(Lp1/e;D)V

    invoke-virtual {p1, p2}, Lv1/b;->o(Ljava/lang/Number;)Lv1/b;

    :goto_0
    return-void
.end method
