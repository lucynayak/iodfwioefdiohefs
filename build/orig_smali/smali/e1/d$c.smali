.class public final Le1/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/d;->b(Le1/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/d;

.field public final synthetic b:Le1/a;

.field public final synthetic c:Le1/a$b;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic g:Le1/d$d;


# direct methods
.method public constructor <init>(Le1/d;Le1/a;Le1/a$b;Ljava/util/concurrent/atomic/AtomicBoolean;Le1/d$d;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Le1/d$c;->a:Le1/d;

    iput-object p2, p0, Le1/d$c;->b:Le1/a;

    iput-object p3, p0, Le1/d$c;->c:Le1/a$b;

    iput-object p4, p0, Le1/d$c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Le1/d$c;->g:Le1/d$d;

    iput-object p6, p0, Le1/d$c;->e:Ljava/util/Set;

    iput-object p7, p0, Le1/d$c;->d:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Le1/d;->a()Le1/d;

    move-result-object v1

    .line 1
    iget-object v1, v1, Le1/d;->b:Le1/a;

    if-eqz v1, :cond_7

    .line 2
    invoke-static {}, Le1/d;->a()Le1/d;

    move-result-object v1

    .line 3
    iget-object v1, v1, Le1/d;->b:Le1/a;

    .line 4
    iget-object v1, v1, Le1/a;->i:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Le1/d$c;->b:Le1/a;

    .line 6
    iget-object v2, v2, Le1/a;->i:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    .line 7
    :cond_0
    iget-object v1, p0, Le1/d$c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Le1/d$c;->g:Le1/d$d;

    iget-object v2, v1, Le1/d$d;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    iget v1, v1, Le1/d$d;->b:I

    if-nez v1, :cond_2

    iget-object v1, p0, Le1/d$c;->c:Le1/a$b;

    if-eqz v1, :cond_1

    new-instance v2, Le1/m;

    const-string v3, "Failed to refresh access token"

    invoke-direct {v2, v3}, Le1/m;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Le1/a$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    iget-object v1, p0, Le1/d$c;->a:Le1/d;

    .line 8
    iget-object v1, v1, Le1/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Le1/d$c;->g:Le1/d$d;

    iget-object v1, v1, Le1/d$d;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Le1/d$c;->b:Le1/a;

    .line 10
    iget-object v1, v1, Le1/a;->h:Ljava/lang/String;

    goto :goto_0

    .line 11
    :goto_1
    iget-object v1, p0, Le1/d$c;->b:Le1/a;

    .line 12
    iget-object v4, v1, Le1/a;->b:Ljava/lang/String;

    .line 13
    iget-object v5, v1, Le1/a;->i:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Le1/d$c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Le1/d$c;->e:Ljava/util/Set;

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Le1/d$c;->b:Le1/a;

    .line 15
    iget-object v1, v1, Le1/a;->f:Ljava/util/Set;

    goto :goto_2

    .line 16
    :goto_3
    iget-object v1, p0, Le1/d$c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Le1/d$c;->d:Ljava/util/Set;

    :goto_4
    move-object v7, v1

    goto :goto_5

    :cond_5
    iget-object v1, p0, Le1/d$c;->b:Le1/a;

    .line 17
    iget-object v1, v1, Le1/a;->c:Ljava/util/Set;

    goto :goto_4

    .line 18
    :goto_5
    iget-object v1, p0, Le1/d$c;->b:Le1/a;

    .line 19
    iget-object v8, v1, Le1/a;->g:Le1/e;

    .line 20
    iget-object v2, p0, Le1/d$c;->g:Le1/d$d;

    iget v2, v2, Le1/d$d;->b:I

    if-eqz v2, :cond_6

    new-instance v1, Ljava/util/Date;

    const-wide/16 v9, 0x3e8

    iget-object v2, p0, Le1/d$c;->g:Le1/d$d;

    iget v2, v2, Le1/d$d;->b:I

    int-to-long v11, v2

    mul-long v11, v11, v9

    invoke-direct {v1, v11, v12}, Ljava/util/Date;-><init>(J)V

    goto :goto_6

    .line 21
    :cond_6
    iget-object v1, v1, Le1/a;->d:Ljava/util/Date;

    :goto_6
    move-object v9, v1

    .line 22
    new-instance v1, Le1/a;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Le1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Le1/e;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Le1/d;->a()Le1/d;

    move-result-object v2

    const/4 v3, 0x1

    .line 23
    invoke-virtual {v2, v1, v3}, Le1/d;->c(Le1/a;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    iget-object v1, p0, Le1/d$c;->a:Le1/d;

    .line 25
    iget-object v1, v1, Le1/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Le1/d$c;->c:Le1/a$b;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Le1/a$b;->b()V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_8

    :cond_7
    :goto_7
    :try_start_3
    iget-object v1, p0, Le1/d$c;->c:Le1/a$b;

    if-eqz v1, :cond_8

    new-instance v2, Le1/m;

    const-string v3, "No current access token to refresh"

    invoke-direct {v2, v3}, Le1/m;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Le1/a$b;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    iget-object v1, p0, Le1/d$c;->a:Le1/d;

    .line 27
    iget-object v1, v1, Le1/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_9
    return-void

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    :goto_8
    iget-object v3, p0, Le1/d$c;->a:Le1/d;

    .line 29
    iget-object v3, v3, Le1/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Le1/d$c;->c:Le1/a$b;

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    invoke-interface {v0}, Le1/a$b;->b()V

    :cond_a
    throw v2
.end method
