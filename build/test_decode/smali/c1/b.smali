.class public final Lc1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc1/b;->a:Ljava/lang/Object;

    iput-wide p1, p0, Lc1/b;->c:J

    iput-object p3, p0, Lc1/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lc1/b;
    .locals 4

    new-instance v0, Lc1/b;

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lc1/b;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lc1/b;
    .locals 4

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lc1/b;->a()Lc1/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lc1/b;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Lc1/b;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc1/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d(JLjava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lc1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v2, p0, Lc1/b;->b:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1
    iget-wide v2, p0, Lc1/b;->c:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    iput-wide p1, p0, Lc1/b;->c:J

    iput-object p3, p0, Lc1/b;->b:Ljava/lang/String;

    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Lc1/b;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p1, Lc1/b;->c:J

    .line 2
    iget-object p1, p1, Lc1/b;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lc1/b;->d(JLjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lc1/b;->a()Lc1/b;

    move-result-object p1

    iget-wide v0, p1, Lc1/b;->c:J

    .line 4
    iget-object p1, p1, Lc1/b;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lc1/b;->d(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lc1/b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc1/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
