.class public Lorg/fmod/MediaCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private mChannelCount:I

.field private mCodecPtr:J

.field private mCurrentOutputBufferIndex:I

.field private mDataSourceProxy:Ljava/lang/Object;

.field private mDecoder:Landroid/media/MediaCodec;

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mInputFinished:Z

.field private mLength:J

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputFinished:Z

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/fmod/MediaCodec;->mCodecPtr:J

    iput-wide v0, p0, Lorg/fmod/MediaCodec;->mLength:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    iput v0, p0, Lorg/fmod/MediaCodec;->mChannelCount:I

    iput-boolean v0, p0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    iput-boolean v0, p0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    iput-object v0, p0, Lorg/fmod/MediaCodec;->mDataSourceProxy:Ljava/lang/Object;

    iput-object v0, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    iput-object v0, p0, Lorg/fmod/MediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    return-void
.end method

.method private static native fmodGetSize(J)J
.end method

.method private static native fmodReadAt(JJ[BI)I
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    :cond_0
    iget-object v0, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    :cond_1
    return-void
.end method

.method public getChannelCount()I
    .registers 2

    iget v0, p0, Lorg/fmod/MediaCodec;->mChannelCount:I

    return v0
.end method

.method public getLength()J
    .registers 3

    iget-wide v0, p0, Lorg/fmod/MediaCodec;->mLength:J

    return-wide v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    return v0
.end method

.method public init(J)Z
    .registers 11

    const-string v0, "MediaCodec::init : "

    const-string v1, "fmod"

    iput-wide p1, p0, Lorg/fmod/MediaCodec;->mCodecPtr:J

    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "android.media.DataSource"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v2, "android.media.MediaExtractor"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDataSource"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p2, v5, p1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p2, v5, p1

    invoke-static {v3, v5, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/fmod/MediaCodec;->mDataSourceProxy:Ljava/lang/Object;

    iget-object v3, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, p1

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p2, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    iget-object v3, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v5, "mime"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaCodec::init : Format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_1
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p2, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    invoke-virtual {p2, v3, v0, v0, p1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    iget-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/fmod/MediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    const-string p2, "encoder-delay"

    invoke-virtual {v3, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    const-string v0, "encoder-padding"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    :cond_1
    const-string v0, "durationUs"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "channel-count"

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/fmod/MediaCodec;->mChannelCount:I

    const-string v2, "sample-rate"

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf423f

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr v1, p2

    sub-int/2addr v1, p1

    int-to-long p1, v1

    iput-wide p1, p0, Lorg/fmod/MediaCodec;->mLength:J

    return v4

    :catch_0
    move-exception p2

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return p1

    :catch_1
    move-exception p2

    .line 3
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_2
    move-exception p2

    .line 5
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_3
    move-exception p2

    .line 7
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_4
    move-exception p2

    .line 9
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "readAt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-wide v1, p0, Lorg/fmod/MediaCodec;->mCodecPtr:J

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 p1, 0x1

    aget-object p1, p3, p1

    move-object v5, p1

    check-cast v5, [B

    const/4 p1, 0x2

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lorg/fmod/MediaCodec;->fmodReadAt(JJ[BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getSize"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lorg/fmod/MediaCodec;->mCodecPtr:J

    invoke-static {p1, p2}, Lorg/fmod/MediaCodec;->fmodGetSize(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "close"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MediaCodec::invoke : Unrecognised method found: "

    .line 1
    invoke-static {p1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fmod"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public read([BI)I
    .registers 18

    move-object v0, p0

    iget-boolean v1, v0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    if-ne v1, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v4, v0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    const/4 v5, 0x1

    if-nez v4, :cond_2

    iget-object v4, v0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_2

    iget-object v4, v0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v6, v0, Lorg/fmod/MediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v9

    invoke-virtual {v4, v6, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    iget-object v8, v0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    if-ltz v11, :cond_1

    iget-object v4, v0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v4, v0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-boolean v5, v0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    goto :goto_0

    :cond_2
    iget-boolean v4, v0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    if-nez v4, :cond_7

    iget v4, v0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    if-ne v4, v3, :cond_7

    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v6, v0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v4, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    if-ltz v6, :cond_3

    iput v6, v0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    iget-object v7, v0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v6

    iget v8, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v7, v0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v7, v6

    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_3
    const/4 v7, -0x3

    if-ne v6, v7, :cond_4

    iget-object v6, v0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_4
    const/4 v7, -0x2

    const-string v8, "fmod"

    if-ne v6, v7, :cond_5

    const-string v6, "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned MediaCodec.INFO_OUTPUT_FORMAT_CHANGED "

    .line 1
    invoke-static {v6}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2
    iget-object v7, v0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    if-ne v6, v3, :cond_6

    const-string v6, "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned MediaCodec.INFO_TRY_AGAIN_LATER."

    :goto_1
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    iput-boolean v5, v0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    :cond_7
    iget v4, v0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    if-eq v4, v3, :cond_9

    iget-object v1, v0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move/from16 v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v5, p1

    invoke-virtual {v1, v5, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v1, v0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    iget v5, v0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    invoke-virtual {v1, v5, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v3, v0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    :cond_8
    move v1, v4

    :cond_9
    return v1
.end method

.method public seek(I)V
    .registers 11

    iget v0, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iput v1, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    iput-boolean v0, p0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    iget-object v1, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V

    int-to-long v1, p1

    const-wide/32 v3, 0xf4240

    mul-long v5, v1, v3

    iget v7, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    int-to-long v7, v7

    div-long/2addr v5, v7

    iget-object v7, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v5, v6, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v0, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iget v0, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    int-to-long v7, v0

    mul-long v5, v5, v7

    const-wide/32 v7, 0xf423f

    add-long/2addr v5, v7

    div-long/2addr v5, v3

    const-wide/16 v3, 0x2

    sub-long/2addr v1, v5

    iget v0, p0, Lorg/fmod/MediaCodec;->mChannelCount:I

    int-to-long v7, v0

    mul-long v1, v1, v7

    mul-long v1, v1, v3

    long-to-int v0, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaCodec::seek : Seek to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resulted in position "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fmod"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/16 p1, 0x400

    new-array v1, p1, [B

    :goto_0
    if-lez v0, :cond_2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/fmod/MediaCodec;->read([BI)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
