.class public final Lu2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[I

.field public c:[C

.field public d:[I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/io/Reader;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lu2/e;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu2/e;->l:Z

    iput-boolean v0, p0, Lu2/e;->m:Z

    iput v0, p0, Lu2/e;->k:I

    iput v0, p0, Lu2/e;->h:I

    iput-object p1, p0, Lu2/e;->i:Ljava/io/Reader;

    const/4 p1, 0x1

    iput p1, p0, Lu2/e;->j:I

    iput v0, p0, Lu2/e;->g:I

    const/16 p1, 0x1000

    iput p1, p0, Lu2/e;->f:I

    iput p1, p0, Lu2/e;->a:I

    new-array v0, p1, [C

    iput-object v0, p0, Lu2/e;->c:[C

    new-array v0, p1, [I

    iput-object v0, p0, Lu2/e;->d:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lu2/e;->b:[I

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 8

    iget v0, p0, Lu2/e;->f:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lu2/e;->c:[C

    iget v5, p0, Lu2/e;->n:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lu2/e;->c:[C

    iget v0, p0, Lu2/e;->f:I

    iget v5, p0, Lu2/e;->n:I

    sub-int/2addr v0, v5

    iget v5, p0, Lu2/e;->e:I

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lu2/e;->c:[C

    iget-object p1, p0, Lu2/e;->d:[I

    iget v0, p0, Lu2/e;->n:I

    iget v1, p0, Lu2/e;->f:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lu2/e;->d:[I

    iget v0, p0, Lu2/e;->f:I

    iget v1, p0, Lu2/e;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Lu2/e;->e:I

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lu2/e;->d:[I

    iget-object p1, p0, Lu2/e;->b:[I

    iget v0, p0, Lu2/e;->n:I

    iget v1, p0, Lu2/e;->f:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lu2/e;->b:[I

    iget v0, p0, Lu2/e;->f:I

    iget v1, p0, Lu2/e;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Lu2/e;->e:I

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lu2/e;->b:[I

    iget p1, p0, Lu2/e;->e:I

    iget v0, p0, Lu2/e;->f:I

    iget v1, p0, Lu2/e;->n:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lu2/e;->e:I

    iput v0, p0, Lu2/e;->k:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lu2/e;->c:[C

    iget v5, p0, Lu2/e;->n:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lu2/e;->c:[C

    iget-object p1, p0, Lu2/e;->d:[I

    iget v0, p0, Lu2/e;->n:I

    iget v1, p0, Lu2/e;->f:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lu2/e;->d:[I

    iget-object p1, p0, Lu2/e;->b:[I

    iget v0, p0, Lu2/e;->n:I

    iget v1, p0, Lu2/e;->f:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lu2/e;->b:[I

    iget p1, p0, Lu2/e;->e:I

    iget v0, p0, Lu2/e;->n:I

    sub-int/2addr p1, v0

    iput p1, p0, Lu2/e;->e:I

    iput p1, p0, Lu2/e;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget p1, p0, Lu2/e;->f:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lu2/e;->f:I

    iput p1, p0, Lu2/e;->a:I

    iput v4, p0, Lu2/e;->n:I

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lu2/e;->e:I

    iget v1, p0, Lu2/e;->n:I

    if-lt v0, v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lu2/e;->c:[C

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lu2/e;->c:[C

    iget v3, p0, Lu2/e;->n:I

    iget v4, p0, Lu2/e;->f:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lu2/e;->c:[C

    const/4 v3, 0x0

    iget v4, p0, Lu2/e;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)[C
    .registers 8

    new-array v0, p1, [C

    iget v1, p0, Lu2/e;->e:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lu2/e;->c:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lu2/e;->c:[C

    iget v4, p0, Lu2/e;->f:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lu2/e;->c:[C

    iget v2, p0, Lu2/e;->e:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final d(I)V
    .registers 3

    iget v0, p0, Lu2/e;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lu2/e;->h:I

    iget v0, p0, Lu2/e;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lu2/e;->e:I

    if-gez v0, :cond_0

    iget p1, p0, Lu2/e;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lu2/e;->e:I

    :cond_0
    return-void
.end method

.method public final e()C
    .registers 8

    iget v0, p0, Lu2/e;->h:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    add-int/2addr v0, v2

    iput v0, p0, Lu2/e;->h:I

    iget v0, p0, Lu2/e;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lu2/e;->e:I

    iget v2, p0, Lu2/e;->f:I

    if-ne v0, v2, :cond_0

    iput v1, p0, Lu2/e;->e:I

    :cond_0
    iget-object v0, p0, Lu2/e;->c:[C

    iget v1, p0, Lu2/e;->e:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    iget v0, p0, Lu2/e;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lu2/e;->e:I

    iget v4, p0, Lu2/e;->k:I

    if-lt v0, v4, :cond_a

    .line 1
    iget v0, p0, Lu2/e;->a:I

    if-ne v4, v0, :cond_7

    iget v4, p0, Lu2/e;->f:I

    const/16 v5, 0x800

    if-ne v0, v4, :cond_4

    iget v4, p0, Lu2/e;->n:I

    if-le v4, v5, :cond_2

    iput v1, p0, Lu2/e;->k:I

    iput v1, p0, Lu2/e;->e:I

    goto :goto_0

    :cond_2
    if-gez v4, :cond_3

    iput v1, p0, Lu2/e;->k:I

    iput v1, p0, Lu2/e;->e:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lu2/e;->a(Z)V

    goto :goto_1

    :cond_4
    iget v6, p0, Lu2/e;->n:I

    if-le v0, v6, :cond_5

    :goto_0
    iput v4, p0, Lu2/e;->a:I

    goto :goto_1

    :cond_5
    sub-int v0, v6, v0

    if-ge v0, v5, :cond_6

    invoke-virtual {p0, v3}, Lu2/e;->a(Z)V

    goto :goto_1

    :cond_6
    iput v6, p0, Lu2/e;->a:I

    :cond_7
    :goto_1
    :try_start_0
    iget-object v0, p0, Lu2/e;->i:Ljava/io/Reader;

    iget-object v4, p0, Lu2/e;->c:[C

    iget v5, p0, Lu2/e;->k:I

    iget v6, p0, Lu2/e;->a:I

    sub-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-eq v0, v2, :cond_8

    iget v4, p0, Lu2/e;->k:I

    add-int/2addr v0, v4

    iput v0, p0, Lu2/e;->k:I

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lu2/e;->i:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget v3, p0, Lu2/e;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lu2/e;->e:I

    invoke-virtual {p0, v1}, Lu2/e;->d(I)V

    iget v1, p0, Lu2/e;->n:I

    if-ne v1, v2, :cond_9

    iget v1, p0, Lu2/e;->e:I

    iput v1, p0, Lu2/e;->n:I

    :cond_9
    throw v0

    .line 2
    :cond_a
    :goto_2
    iget-object v0, p0, Lu2/e;->c:[C

    iget v4, p0, Lu2/e;->e:I

    aget-char v0, v0, v4

    .line 3
    iget v5, p0, Lu2/e;->g:I

    add-int/2addr v5, v3

    iput v5, p0, Lu2/e;->g:I

    iget-boolean v5, p0, Lu2/e;->m:Z

    const/16 v6, 0xa

    if-eqz v5, :cond_b

    iput-boolean v1, p0, Lu2/e;->m:Z

    goto :goto_3

    :cond_b
    iget-boolean v5, p0, Lu2/e;->l:Z

    if-eqz v5, :cond_d

    iput-boolean v1, p0, Lu2/e;->l:Z

    if-ne v0, v6, :cond_c

    iput-boolean v3, p0, Lu2/e;->m:Z

    goto :goto_4

    :cond_c
    :goto_3
    iget v1, p0, Lu2/e;->j:I

    iput v3, p0, Lu2/e;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lu2/e;->j:I

    :cond_d
    :goto_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_10

    if-eq v0, v6, :cond_f

    const/16 v1, 0xd

    if-eq v0, v1, :cond_e

    goto :goto_5

    :cond_e
    iput-boolean v3, p0, Lu2/e;->l:Z

    goto :goto_5

    :cond_f
    iput-boolean v3, p0, Lu2/e;->m:Z

    goto :goto_5

    :cond_10
    iget v1, p0, Lu2/e;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lu2/e;->g:I

    rem-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    iput v2, p0, Lu2/e;->g:I

    :goto_5
    iget-object v1, p0, Lu2/e;->d:[I

    iget v2, p0, Lu2/e;->j:I

    aput v2, v1, v4

    iget-object v1, p0, Lu2/e;->b:[I

    iget v2, p0, Lu2/e;->g:I

    aput v2, v1, v4

    return v0
.end method
