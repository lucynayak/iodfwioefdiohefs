.class public final Ls1/c;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ls1/c$a;


# instance fields
.field public final a:Ljava/text/DateFormat;

.field public final b:Ljava/text/DateFormat;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls1/c$a;

    invoke-direct {v0}, Ls1/c$a;-><init>()V

    sput-object v0, Ls1/c;->c:Ls1/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lp1/a0;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Ls1/c;->a:Ljava/text/DateFormat;

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Ls1/c;->b:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lv1/a;->t()Ljava/lang/String;

    move-result-object p1

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls1/c;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    iget-object v0, p0, Ls1/c;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_2
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    :goto_1
    return-object p1

    :catch_2
    move-exception v0

    :try_start_3
    new-instance v1, Lp1/x;

    invoke-direct {v1, p1, v0}, Lp1/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/util/Date;

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls1/c;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv1/b;->p(Ljava/lang/String;)Lv1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
