.class public final Ls1/n$v;
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
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    const/4 p1, 0x0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Lv1/a;->a()V

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    invoke-static {v1}, Lz0/a;->a(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lv1/a;->l()Z

    move-result v1

    goto :goto_2

    :cond_1
    new-instance p1, Lp1/x;

    const-string v0, "Invalid bitset value type: "

    .line 2
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {v1}, La/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lp1/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lv1/a;->n()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lv1/a;->t()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v1

    goto :goto_0

    :catch_0
    new-instance p1, Lp1/x;

    const-string v0, "Error: Expecting: bitset number value (1, 0), Found: "

    .line 4
    invoke-static {v0, v1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p1, v0}, Lp1/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p1}, Lv1/a;->e()V

    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/util/BitSet;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lv1/b;->b()Lv1/b;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lv1/b;->n(J)Lv1/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lv1/b;->e()Lv1/b;

    :goto_1
    return-void
.end method
