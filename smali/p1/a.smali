.class public final Lp1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/w;
.implements Lp1/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp1/w<",
        "Ljava/util/Date;",
        ">;",
        "Lp1/o<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/text/DateFormat;

.field public final b:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lp1/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/a;->a:Ljava/text/DateFormat;

    iput-object p2, p0, Lp1/a;->b:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public final deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of p3, p1, Lp1/u;

    if-eqz p3, :cond_3

    .line 2
    iget-object p3, p0, Lp1/a;->b:Ljava/text/DateFormat;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lp1/a;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lp1/p;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    iget-object v0, p0, Lp1/a;->a:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lp1/p;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_2
    invoke-virtual {p1}, Lp1/p;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {v0, v1}, Lt1/a;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3
    const-class p3, Ljava/util/Date;

    if-ne p2, p3, :cond_0

    goto :goto_2

    :cond_0
    const-class p3, Ljava/sql/Timestamp;

    if-ne p2, p3, :cond_1

    new-instance p2, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_1
    const-class p3, Ljava/sql/Date;

    if-ne p2, p3, :cond_2

    new-instance p2, Ljava/sql/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    goto :goto_1

    :goto_2
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lp1/a;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cannot deserialize to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p2

    .line 4
    :try_start_4
    new-instance v0, Lp1/x;

    invoke-virtual {p1}, Lp1/p;->B()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lp1/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 5
    :cond_3
    new-instance p1, Lp1/t;

    const-string p2, "The date should be a string value"

    invoke-direct {p1, p2}, Lp1/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lp1/v;)Lp1/p;
    .registers 5

    check-cast p1, Ljava/util/Date;

    iget-object p2, p0, Lp1/a;->b:Ljava/text/DateFormat;

    monitor-enter p2

    :try_start_0
    new-instance p3, Lp1/u;

    iget-object v0, p0, Lp1/a;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lp1/u;-><init>(Ljava/lang/String;)V

    monitor-exit p2

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lp1/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp1/a;->b:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
