.class public final Ls1/n$x;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lp1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lv1/a;->t()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lv1/a;->l()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lv1/b;->q(Z)Lv1/b;

    :goto_0
    return-void
.end method
