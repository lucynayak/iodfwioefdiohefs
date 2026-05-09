.class public final Ls2/c;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:Ls2/b;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls2/c;->b:Z

    new-instance v1, Ls2/b;

    invoke-direct {v1}, Ls2/b;-><init>()V

    iput-object v1, p0, Ls2/c;->c:Ls2/b;

    iput-object p1, v1, Ls2/b;->c:Ljava/io/OutputStream;

    iput-boolean v0, v1, Ls2/b;->g:Z

    iput-boolean v0, v1, Ls2/b;->h:Z

    iput-boolean v0, v1, Ls2/b;->f:Z

    const/16 p1, 0x4d

    iput p1, v1, Ls2/b;->b:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Ls2/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Ls2/c;->c:Ls2/b;

    .line 1
    invoke-virtual {v1}, Ls2/b;->e()V

    invoke-virtual {v1}, Ls2/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput-boolean v0, p0, Ls2/c;->b:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Ls2/c;->b:Z

    throw v1
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Ls2/c;->c:Ls2/b;

    invoke-virtual {v0}, Ls2/b;->b()V

    return-void
.end method

.method public final write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Ls2/c;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 8

    iget-boolean v0, p0, Ls2/c;->b:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Ls2/c;->c:Ls2/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, p2

    :goto_0
    add-int v2, p3, p2

    if-ge v1, v2, :cond_e

    .line 1
    aget-byte v2, p1, v1

    const/16 v3, 0x9

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x20

    if-ne v2, v5, :cond_4

    .line 2
    iget-boolean v7, v0, Ls2/b;->a:Z

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ls2/b;->e()V

    goto :goto_2

    :cond_0
    iget-boolean v7, v0, Ls2/b;->f:Z

    if-eqz v7, :cond_3

    iget-boolean v2, v0, Ls2/b;->g:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, v6}, Ls2/b;->a(B)V

    goto :goto_1

    :cond_1
    iget-boolean v2, v0, Ls2/b;->h:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Ls2/b;->a(B)V

    .line 3
    :cond_2
    :goto_1
    invoke-virtual {v0, v4}, Ls2/b;->d(B)V

    invoke-virtual {v0, v5}, Ls2/b;->d(B)V

    const/16 v2, 0x4c

    iput v2, v0, Ls2/b;->b:I

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Ls2/b;->g:Z

    iput-boolean v2, v0, Ls2/b;->h:Z

    iput-boolean v2, v0, Ls2/b;->f:Z

    goto :goto_4

    .line 5
    :cond_3
    invoke-virtual {v0}, Ls2/b;->e()V

    goto :goto_3

    :cond_4
    const/4 v5, 0x1

    if-ne v2, v4, :cond_6

    iget-boolean v3, v0, Ls2/b;->a:Z

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v5, v0, Ls2/b;->f:Z

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ls2/b;->e()V

    if-ne v2, v6, :cond_8

    iget-boolean v3, v0, Ls2/b;->a:Z

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iput-boolean v5, v0, Ls2/b;->g:Z

    goto :goto_4

    :cond_8
    if-ne v2, v3, :cond_a

    iget-boolean v3, v0, Ls2/b;->a:Z

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    iput-boolean v5, v0, Ls2/b;->h:Z

    goto :goto_4

    :cond_a
    if-ge v2, v6, :cond_b

    goto :goto_2

    :cond_b
    const/16 v3, 0x7e

    if-le v2, v3, :cond_c

    goto :goto_2

    :cond_c
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_d

    :goto_2
    invoke-virtual {v0, v2}, Ls2/b;->a(B)V

    goto :goto_4

    :cond_d
    :goto_3
    invoke-virtual {v0, v2}, Ls2/b;->c(B)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_e
    return-void

    .line 6
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "QuotedPrintableOutputStream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
