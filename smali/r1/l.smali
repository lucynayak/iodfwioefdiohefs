.class public final Lr1/l;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-object p1, p0, Lr1/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doubleValue()D
    .registers 3

    iget-object v0, p0, Lr1/l;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, p1, Lr1/l;

    if-eqz v2, :cond_2

    check-cast p1, Lr1/l;

    iget-object v2, p0, Lr1/l;->b:Ljava/lang/String;

    iget-object p1, p1, Lr1/l;->b:Ljava/lang/String;

    if-eq v2, p1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final floatValue()F
    .registers 2

    iget-object v0, p0, Lr1/l;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lr1/l;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intValue()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lr1/l;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lr1/l;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    long-to-int v1, v0

    return v1

    :catch_1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lr1/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public final longValue()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lr1/l;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lr1/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lr1/l;->b:Ljava/lang/String;

    return-object v0
.end method
