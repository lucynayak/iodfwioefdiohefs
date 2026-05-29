.class public final Ls1/k;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/k$a;


# instance fields
.field public final a:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls1/k$a;

    invoke-direct {v0}, Ls1/k$a;-><init>()V

    sput-object v0, Ls1/k;->b:Ls1/k$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lp1/a0;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ls1/k;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/sql/Date;

    iget-object v1, p0, Ls1/k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lv1/a;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    :goto_0
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lp1/x;

    invoke-direct {v0, p1}, Lp1/x;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/sql/Date;

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Ls1/k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lv1/b;->p(Ljava/lang/String;)Lv1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
