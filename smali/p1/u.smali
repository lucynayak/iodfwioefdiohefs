.class public final Lp1/u;
.super Lp1/p;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lp1/u;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0}, Lp1/p;-><init>()V

    invoke-virtual {p0, p1}, Lp1/u;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    invoke-direct {p0}, Lp1/p;-><init>()V

    invoke-virtual {p0, p1}, Lp1/u;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lp1/p;-><init>()V

    invoke-virtual {p0, p1}, Lp1/u;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lp1/p;-><init>()V

    invoke-virtual {p0, p1}, Lp1/u;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public static E(Lp1/u;)Z
    .registers 3

    iget-object p0, p0, Lp1/u;->a:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lp1/u;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final C()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lp1/u;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lp1/u;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final D()Ljava/lang/Number;
    .registers 3

    iget-object v0, p0, Lp1/u;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lr1/l;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lr1/l;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final F(Ljava/lang/Object;)V
    .registers 9

    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lp1/u;->a:Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lp1/u;->b:[Ljava/lang/Class;

    const/16 v4, 0x10

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 2
    :cond_5
    invoke-static {v1}, Ld1/a;->k(Z)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const-class v2, Lp1/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lp1/u;

    iget-object v2, p0, Lp1/u;->a:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object p1, p1, Lp1/u;->a:Ljava/lang/Object;

    if-eqz p1, :cond_3

    return v1

    :cond_2
    invoke-static {p0}, Lp1/u;->E(Lp1/u;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lp1/u;->E(Lp1/u;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-object v2, p0, Lp1/u;->a:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lp1/u;->a:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :cond_7
    iget-object p1, p1, Lp1/u;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lp1/u;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    invoke-static {p0}, Lp1/u;->E(Lp1/u;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :cond_1
    iget-object v0, p0, Lp1/u;->a:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lp1/u;->D()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
