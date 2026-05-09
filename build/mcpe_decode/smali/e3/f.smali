.class public final Le3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Le3/f;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    const-class p1, Ljava/util/Date;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Le3/f;-><init>(Ljava/lang/Class;I)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "_"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Le3/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1

    iput p2, p0, Le3/f;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lt/o;

    invoke-direct {p2, p1}, Lt/o;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Le3/f;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Le3/f;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Le3/f;-><init>(Ljava/lang/Class;I)V

    iput-object p2, p0, Le3/f;->b:Ljava/lang/Object;

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Le3/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/util/GregorianCalendar;

    .line 2
    iget-object v0, p0, Le3/f;->b:Ljava/lang/Object;

    check-cast v0, Le3/f;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Le3/f;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_1
    check-cast p1, Ljava/lang/Enum;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Le3/f;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :goto_0
    check-cast p1, Ljava/util/Locale;

    .line 7
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Le3/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Le3/f;->b:Ljava/lang/Object;

    check-cast v0, Le3/f;

    invoke-virtual {v0, p1}, Le3/f;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    return-object v0

    .line 3
    :pswitch_1
    iget-object v0, p0, Le3/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    invoke-virtual {p0, p1}, Le3/f;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 5
    :goto_0
    iget-object v0, p0, Le3/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    const-string p1, ""

    .line 6
    filled-new-array {p1, p1, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    array-length v4, v0

    if-ge v1, v4, :cond_1

    aget-object v4, v0, v1

    aput-object v4, p1, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p1, v3

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-direct {v0, v1, v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_3
    new-instance v0, Le3/h;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Invalid locale %s"

    invoke-direct {v0, p1, v1}, Le3/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Le3/g;->c:[Le3/g;

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    sget-object v0, Le3/g;->d:Le3/g;

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    sget-object v0, Le3/g;->e:Le3/g;

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-le v0, v1, :cond_2

    sget-object v0, Le3/g;->f:Le3/g;

    goto :goto_0

    :cond_2
    sget-object v0, Le3/g;->g:Le3/g;

    .line 2
    :goto_0
    iget-object v0, v0, Le3/g;->b:Le3/g$a;

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Le3/g$a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    .line 4
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Le3/f;->b:Ljava/lang/Object;

    check-cast v0, Lt/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 5
    iget-object p1, v0, Lt/o;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final d(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Le3/g;->d:Le3/g;

    .line 2
    iget-object v0, v0, Le3/g;->b:Le3/g$a;

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Le3/g$a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 5
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    throw p1
.end method
