.class public final Lq2/b;
.super Lv2/f;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field public static final h:Lx2/a;

.field public static final i:Lx2/a;


# instance fields
.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lq2/c;->a:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lq2/b;->h(Ljava/nio/charset/Charset;Ljava/lang/String;)Lx2/a;

    move-result-object v1

    sput-object v1, Lq2/b;->h:Lx2/a;

    const-string v1, "--"

    invoke-static {v0, v1}, Lq2/b;->h(Ljava/nio/charset/Charset;Ljava/lang/String;)Lx2/a;

    move-result-object v0

    sput-object v0, Lq2/b;->i:Lx2/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv2/f;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lq2/b;->g:I

    return-void
.end method

.method public static h(Ljava/nio/charset/Charset;Ljava/lang/String;)Lx2/a;
    .locals 2

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Lx2/a;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p1, v0}, Lx2/a;-><init>(I)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lx2/a;->b([BII)V

    return-object p1
.end method

.method public static i(Lx2/a;Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx2/a;->b:[B

    const/4 v1, 0x0

    .line 2
    iget p0, p0, Lx2/a;->c:I

    .line 3
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public final g(ILjava/io/OutputStream;Z)V
    .locals 9

    invoke-virtual {p0}, Lv2/f;->f()Ljava/util/List;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lv2/f;->d:Lv2/c;

    .line 2
    iget-object v1, v1, Lv2/c;->b:Lv2/d;

    const-string v2, "Content-Type"

    .line 3
    invoke-virtual {v1, v2}, Lv2/d;->B(Ljava/lang/String;)Lw2/a;

    move-result-object v1

    check-cast v1, Lt2/e;

    iget v3, p0, Lq2/b;->g:I

    invoke-static {v3}, Lz0/a;->a(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    const-string v3, "charset"

    .line 4
    invoke-virtual {v1, v3}, Lt2/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v3}, Lt2/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "ISO-8859-1"

    .line 5
    :goto_0
    invoke-static {v1}, Lx2/c;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lq2/c;->a:Ljava/nio/charset/Charset;

    .line 6
    :goto_1
    iget-object v3, p0, Lv2/f;->d:Lv2/c;

    .line 7
    iget-object v3, v3, Lv2/c;->b:Lv2/d;

    .line 8
    invoke-virtual {v3, v2}, Lv2/d;->B(Ljava/lang/String;)Lw2/a;

    move-result-object v2

    check-cast v2, Lt2/e;

    const-string v3, "boundary"

    .line 9
    invoke-virtual {v2, v3}, Lt2/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v1, v2}, Lq2/b;->h(Ljava/nio/charset/Charset;Ljava/lang/String;)Lx2/a;

    move-result-object v2

    if-eqz p1, :cond_f

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_5

    sget-object v4, Lq2/b;->i:Lx2/a;

    invoke-static {v4, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    .line 11
    iget-object v4, v2, Lx2/a;->b:[B

    .line 12
    iget v5, v2, Lx2/a;->c:I

    .line 13
    invoke-virtual {p2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 14
    sget-object v4, Lq2/b;->h:Lx2/a;

    invoke-static {v4, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/b;

    .line 15
    iget-object v6, v5, Lv2/c;->b:Lv2/d;

    const-string v7, "Content-Disposition"

    .line 16
    invoke-virtual {v6, v7}, Lv2/d;->B(Ljava/lang/String;)Lw2/a;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lw2/a;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lw2/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lq2/b;->h(Ljava/nio/charset/Charset;Ljava/lang/String;)Lx2/a;

    move-result-object v6

    .line 17
    iget-object v7, v6, Lx2/a;->b:[B

    .line 18
    iget v6, v6, Lx2/a;->c:I

    .line 19
    invoke-virtual {p2, v7, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 20
    iget-object v6, v4, Lx2/a;->b:[B

    .line 21
    iget v7, v4, Lx2/a;->c:I

    .line 22
    invoke-virtual {p2, v6, v3, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 23
    iget-object v6, v4, Lx2/a;->b:[B

    .line 24
    iget v7, v4, Lx2/a;->c:I

    .line 25
    invoke-virtual {p2, v6, v3, v7}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p3, :cond_4

    .line 26
    sget-object v6, Lr0/e;->o:Lr0/e;

    .line 27
    iget-object v5, v5, Lv2/c;->a:Lv2/a;

    .line 28
    invoke-virtual {v6, v5, p2}, Lr0/e;->l(Lv2/a;Ljava/io/OutputStream;)V

    .line 29
    :cond_4
    iget-object v5, v4, Lx2/a;->b:[B

    .line 30
    iget v4, v4, Lx2/a;->c:I

    .line 31
    invoke-virtual {p2, v5, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 32
    :cond_5
    sget-object p1, Lq2/b;->i:Lx2/a;

    invoke-static {p1, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    .line 33
    iget-object p3, v2, Lx2/a;->b:[B

    .line 34
    iget v0, v2, Lx2/a;->c:I

    .line 35
    invoke-virtual {p2, p3, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    iget-object p3, p1, Lx2/a;->b:[B

    .line 37
    iget p1, p1, Lx2/a;->c:I

    .line 38
    invoke-virtual {p2, p3, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    sget-object p1, Lq2/b;->h:Lx2/a;

    invoke-static {p1, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    return-void

    .line 40
    :cond_6
    iget-object p1, p0, Lv2/f;->f:Ljava/lang/String;

    if-nez p1, :cond_7

    iget-object p1, p0, Lv2/f;->e:Ld1/a;

    invoke-static {p1}, Ld1/a;->q(Lx2/b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv2/f;->f:Ljava/lang/String;

    :cond_7
    iget-object p1, p0, Lv2/f;->f:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v1, p1}, Lq2/b;->h(Ljava/nio/charset/Charset;Ljava/lang/String;)Lx2/a;

    move-result-object p1

    .line 42
    iget-object v4, p1, Lx2/a;->b:[B

    .line 43
    iget p1, p1, Lx2/a;->c:I

    .line 44
    invoke-virtual {p2, v4, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 45
    sget-object p1, Lq2/b;->h:Lx2/a;

    invoke-static {p1, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    :cond_8
    const/4 p1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_c

    sget-object v4, Lq2/b;->i:Lx2/a;

    invoke-static {v4, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    .line 46
    iget-object v4, v2, Lx2/a;->b:[B

    .line 47
    iget v5, v2, Lx2/a;->c:I

    .line 48
    invoke-virtual {p2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    sget-object v4, Lq2/b;->h:Lx2/a;

    invoke-static {v4, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/b;

    .line 50
    iget-object v5, v4, Lv2/c;->b:Lv2/d;

    .line 51
    iget-object v5, v5, Lv2/d;->c:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw2/a;

    invoke-interface {v6}, Lw2/a;->a()Lx2/b;

    move-result-object v6

    .line 53
    instance-of v7, v6, Lx2/a;

    if-eqz v7, :cond_9

    check-cast v6, Lx2/a;

    invoke-static {v6, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    goto :goto_5

    :cond_9
    invoke-interface {v6}, Lx2/b;->a()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 54
    :goto_5
    sget-object v6, Lq2/b;->h:Lx2/a;

    invoke-static {v6, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    goto :goto_4

    :cond_a
    sget-object v5, Lq2/b;->h:Lx2/a;

    invoke-static {v5, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_b

    sget-object v6, Lr0/e;->o:Lr0/e;

    .line 55
    iget-object v4, v4, Lv2/c;->a:Lv2/a;

    .line 56
    invoke-virtual {v6, v4, p2}, Lr0/e;->l(Lv2/a;Ljava/io/OutputStream;)V

    .line 57
    :cond_b
    iget-object v4, v5, Lx2/a;->b:[B

    .line 58
    iget v5, v5, Lx2/a;->c:I

    .line 59
    invoke-virtual {p2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 60
    :cond_c
    sget-object p1, Lq2/b;->i:Lx2/a;

    invoke-static {p1, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    .line 61
    iget-object p3, v2, Lx2/a;->b:[B

    .line 62
    iget v0, v2, Lx2/a;->c:I

    .line 63
    invoke-virtual {p2, p3, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 64
    iget-object p3, p1, Lx2/a;->b:[B

    .line 65
    iget p1, p1, Lx2/a;->c:I

    .line 66
    invoke-virtual {p2, p3, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    sget-object p1, Lq2/b;->h:Lx2/a;

    invoke-static {p1, p2}, Lq2/b;->i(Lx2/a;Ljava/io/OutputStream;)V

    .line 68
    iget-object p3, p0, Lv2/f;->c:Ljava/lang/String;

    if-nez p3, :cond_d

    iget-object p3, p0, Lv2/f;->b:Lx2/b;

    invoke-static {p3}, Ld1/a;->q(Lx2/b;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lv2/f;->c:Ljava/lang/String;

    :cond_d
    iget-object p3, p0, Lv2/f;->c:Ljava/lang/String;

    if-eqz p3, :cond_e

    .line 69
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v1, p3}, Lq2/b;->h(Ljava/nio/charset/Charset;Ljava/lang/String;)Lx2/a;

    move-result-object p3

    .line 70
    iget-object v0, p3, Lx2/a;->b:[B

    .line 71
    iget p3, p3, Lx2/a;->c:I

    .line 72
    invoke-virtual {p2, v0, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 73
    iget-object p3, p1, Lx2/a;->b:[B

    .line 74
    iget p1, p1, Lx2/a;->c:I

    .line 75
    invoke-virtual {p2, p3, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    :cond_e
    :goto_6
    return-void

    .line 76
    :cond_f
    throw v4
.end method
