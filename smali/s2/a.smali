.class public final Ls2/a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field public static final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:[B

.field public static final m:[B


# instance fields
.field public b:Z

.field public c:I

.field public final d:[B

.field public final e:I

.field public f:I

.field public final g:[B

.field public h:I

.field public i:I

.field public final j:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const-class v0, Ls2/a;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ls2/a;->m:[B

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Ls2/a;->l:[B

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Ls2/a;->k:Ljava/util/HashSet;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, v1, v2

    sget-object v4, Ls2/a;->k:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ls2/a;->k:Ljava/util/HashSet;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 8

    sget-object v0, Ls2/a;->m:[B

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Ls2/a;->j:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Ls2/a;->b:Z

    iput v1, p0, Ls2/a;->i:I

    iput v1, p0, Ls2/a;->c:I

    iput v1, p0, Ls2/a;->h:I

    iput v1, p0, Ls2/a;->f:I

    if-eqz p1, :cond_2

    const/16 p1, 0x800

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 2
    aget-byte v3, v0, v2

    sget-object v4, Ls2/a;->k:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "line separator must not contain base64 character \'"

    .line 3
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, v3, 0xff

    int-to-char v1, v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v2, 0x4c

    .line 5
    iput v2, p0, Ls2/a;->e:I

    new-array v2, v3, [B

    iput-object v2, p0, Ls2/a;->g:[B

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, p1, [B

    iput-object p1, p0, Ls2/a;->d:[B

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget v0, p0, Ls2/a;->i:I

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ls2/a;->d:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Ls2/a;->i:I

    :cond_0
    return-void
.end method

.method public final b([BII)V
    .registers 11

    :goto_0
    if-ge p2, p3, :cond_4

    iget v0, p0, Ls2/a;->c:I

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ls2/a;->c:I

    iget v0, p0, Ls2/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls2/a;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Ls2/a;->h:I

    iget v1, p0, Ls2/a;->e:I

    if-lez v1, :cond_1

    iget v2, p0, Ls2/a;->f:I

    if-lt v2, v1, :cond_1

    iput v0, p0, Ls2/a;->f:I

    iget-object v1, p0, Ls2/a;->d:[B

    array-length v1, v1

    iget v2, p0, Ls2/a;->i:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Ls2/a;->g:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ls2/a;->a()V

    :cond_0
    iget-object v1, p0, Ls2/a;->g:[B

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-byte v3, v1, v0

    iget-object v4, p0, Ls2/a;->d:[B

    iget v5, p0, Ls2/a;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ls2/a;->i:I

    aput-byte v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ls2/a;->d:[B

    array-length v0, v0

    iget v1, p0, Ls2/a;->i:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Ls2/a;->a()V

    :cond_2
    iget-object v0, p0, Ls2/a;->d:[B

    iget v2, p0, Ls2/a;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ls2/a;->i:I

    sget-object v4, Ls2/a;->l:[B

    iget v5, p0, Ls2/a;->c:I

    shr-int/lit8 v6, v5, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v4, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Ls2/a;->i:I

    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v4, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ls2/a;->i:I

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v4, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Ls2/a;->i:I

    and-int/lit8 v2, v5, 0x3f

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    iget v0, p0, Ls2/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Ls2/a;->f:I

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final c()V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Ls2/a;->f:I

    iget-object v1, p0, Ls2/a;->d:[B

    array-length v1, v1

    iget v2, p0, Ls2/a;->i:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Ls2/a;->g:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ls2/a;->a()V

    :cond_0
    iget-object v1, p0, Ls2/a;->g:[B

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, v1, v0

    iget-object v4, p0, Ls2/a;->d:[B

    iget v5, p0, Ls2/a;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ls2/a;->i:I

    aput-byte v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final close()V
    .registers 9

    iget-boolean v0, p0, Ls2/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls2/a;->b:Z

    .line 1
    iget v1, p0, Ls2/a;->h:I

    if-eqz v1, :cond_4

    .line 2
    iget v1, p0, Ls2/a;->e:I

    if-lez v1, :cond_1

    iget v2, p0, Ls2/a;->f:I

    if-lt v2, v1, :cond_1

    invoke-virtual {p0}, Ls2/a;->c()V

    :cond_1
    iget-object v1, p0, Ls2/a;->d:[B

    array-length v1, v1

    iget v2, p0, Ls2/a;->i:I

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Ls2/a;->a()V

    :cond_2
    iget v1, p0, Ls2/a;->h:I

    const/16 v3, 0x3d

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Ls2/a;->d:[B

    iget v1, p0, Ls2/a;->i:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ls2/a;->i:I

    sget-object v5, Ls2/a;->l:[B

    iget v6, p0, Ls2/a;->c:I

    shr-int/lit8 v7, v6, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v0, v1

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Ls2/a;->i:I

    shl-int/2addr v6, v2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ls2/a;->i:I

    aput-byte v3, v0, v1

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Ls2/a;->i:I

    aput-byte v3, v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ls2/a;->d:[B

    iget v1, p0, Ls2/a;->i:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ls2/a;->i:I

    sget-object v5, Ls2/a;->l:[B

    iget v6, p0, Ls2/a;->c:I

    shr-int/lit8 v7, v6, 0xa

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v0, v1

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Ls2/a;->i:I

    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ls2/a;->i:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v1

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Ls2/a;->i:I

    aput-byte v3, v0, v4

    :goto_0
    iget v0, p0, Ls2/a;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Ls2/a;->f:I

    .line 3
    :cond_4
    iget v0, p0, Ls2/a;->e:I

    if-lez v0, :cond_5

    iget v0, p0, Ls2/a;->f:I

    if-lez v0, :cond_5

    invoke-virtual {p0}, Ls2/a;->c()V

    :cond_5
    invoke-virtual {p0}, Ls2/a;->a()V

    return-void
.end method

.method public final flush()V
    .registers 3

    iget-boolean v0, p0, Ls2/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ls2/a;->a()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(I)V
    .registers 4

    iget-boolean v0, p0, Ls2/a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ls2/a;->j:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ls2/a;->b([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Base64OutputStream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)V
    .registers 4

    iget-boolean v0, p0, Ls2/a;->b:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ls2/a;->b([BII)V

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Base64OutputStream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([BII)V
    .registers 6

    iget-boolean v0, p0, Ls2/a;->b:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Ls2/a;->b([BII)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Base64OutputStream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
