.class public final Lq2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final e:[C


# instance fields
.field public final a:Lorg/apache/http/message/BasicHeader;

.field public volatile b:Z

.field public c:J

.field public final d:Lq2/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lq2/e;->e:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq2/b;

    invoke-direct {v0}, Lq2/b;-><init>()V

    iput-object v0, p0, Lq2/e;->d:Lq2/b;

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "multipart/form-data; boundary="

    .line 2
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    sget-object v6, Lq2/e;->e:[C

    array-length v7, v6

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    .line 4
    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lq2/e;->a:Lorg/apache/http/message/BasicHeader;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lq2/e;->b:Z

    new-instance v3, Lv2/e;

    invoke-direct {v3}, Lv2/e;-><init>()V

    new-instance v5, Lv2/d;

    invoke-direct {v5}, Lv2/d;-><init>()V

    .line 5
    iput-object v5, v3, Lv2/c;->b:Lv2/d;

    .line 6
    iget-object v5, p0, Lq2/e;->d:Lq2/b;

    invoke-virtual {v5, v3}, Lv2/f;->c(Lv2/c;)V

    iget-object v5, p0, Lq2/e;->d:Lq2/b;

    .line 7
    iput v1, v5, Lq2/b;->g:I

    .line 8
    iget-object v1, v3, Lv2/c;->b:Lv2/d;

    .line 9
    invoke-virtual {v0}, Lorg/apache/http/message/BasicHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    sget v3, Lt2/i;->a:I

    .line 10
    sget-object v3, Lt2/e;->f:Lt2/e$a;

    const-string v5, ": "

    .line 11
    invoke-static {v2, v5, v0}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    sget v5, Lx2/d;->a:I

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v5, 0x0

    const/16 v7, 0x4c

    if-gt v6, v7, :cond_1

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v4}, Lx2/d;->a(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ne v8, v5, :cond_2

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    :goto_2
    invoke-static {v2}, Ld1/a;->v(Ljava/lang/String;)Lx2/b;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Lt2/e;

    invoke-direct {v3, v0, v2}, Lt2/e;-><init>(Ljava/lang/String;Lx2/b;)V

    .line 16
    invoke-virtual {v1, v3}, Lv2/d;->A(Lw2/a;)V

    return-void

    :cond_2
    add-int/lit8 v10, v8, 0x1

    .line 17
    invoke-static {v2, v10}, Lx2/d;->a(Ljava/lang/String;I)I

    move-result v10

    sub-int v11, v10, v9

    if-le v11, v7, :cond_3

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v8

    :cond_3
    move v8, v10

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lr2/a;)V
    .registers 5

    iget-object v0, p0, Lq2/e;->d:Lq2/b;

    new-instance v1, Lq2/a;

    invoke-direct {v1, p1, p2}, Lq2/a;-><init>(Ljava/lang/String;Lr2/a;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object p1, v0, Lv2/f;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lq2/e;->b:Z

    return-void
.end method

.method public final consumeContent()V
    .registers 3

    invoke-virtual {p0}, Lq2/e;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .registers 14

    iget-boolean v0, p0, Lq2/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq2/e;->d:Lq2/b;

    .line 1
    invoke-virtual {v0}, Lv2/f;->f()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const-wide/16 v9, -0x1

    if-ge v5, v8, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/b;

    .line 2
    iget-object v8, v8, Lv2/c;->a:Lv2/a;

    .line 3
    instance-of v11, v8, Lr2/a;

    if-eqz v11, :cond_1

    check-cast v8, Lr2/a;

    invoke-interface {v8}, Lr2/a;->getContentLength()J

    move-result-wide v11

    cmp-long v8, v11, v2

    if-ltz v8, :cond_1

    add-long/2addr v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget v2, v0, Lq2/b;->g:I

    invoke-virtual {v0, v2, v1, v4}, Lq2/b;->g(ILjava/io/OutputStream;Z)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    add-long v9, v6, v0

    .line 4
    :catch_0
    :cond_1
    iput-wide v9, p0, Lq2/e;->c:J

    iput-boolean v4, p0, Lq2/e;->b:Z

    :cond_2
    iget-wide v0, p0, Lq2/e;->c:J

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .registers 2

    iget-object v0, p0, Lq2/e;->a:Lorg/apache/http/message/BasicHeader;

    return-object v0
.end method

.method public final isChunked()Z
    .registers 2

    invoke-virtual {p0}, Lq2/e;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .registers 7

    iget-object v0, p0, Lq2/e;->d:Lq2/b;

    invoke-virtual {v0}, Lv2/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2/a;

    .line 1
    iget-object v1, v1, Lv2/c;->a:Lv2/a;

    .line 2
    check-cast v1, Lr2/a;

    invoke-interface {v1}, Lr2/a;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    invoke-virtual {p0}, Lq2/e;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 5

    iget-object v0, p0, Lq2/e;->d:Lq2/b;

    iget v1, v0, Lq2/b;->g:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lq2/b;->g(ILjava/io/OutputStream;Z)V

    return-void
.end method
