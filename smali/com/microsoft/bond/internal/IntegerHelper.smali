.class public final Lcom/microsoft/bond/internal/IntegerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_BYTES_VARINT16:I = 0x3

.field public static final MAX_BYTES_VARINT32:I = 0x5

.field public static final MAX_BYTES_VARINT64:I = 0xa

.field public static final MAX_VARINT_SIZE_BYTES:I = 0xa

.field public static final SIZEOF_BYTE:I = 0x1

.field public static final SIZEOF_INT:I = 0x4

.field public static final SIZEOF_LONG:I = 0x8

.field public static final SIZEOF_SHORT:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeVarInt16(Lcom/microsoft/bond/io/BondInputStream;)S
    .registers 3

    invoke-static {p0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I
    .registers 3

    invoke-static {p0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method

.method public static decodeZigzag16(S)S
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static decodeZigzag32(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static decodeZigzag64(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static encodeVarUInt16(S[BI)I
    .registers 6

    const v0, 0xff80

    and-int v1, p0, v0

    if-eqz v1, :cond_1

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 v2, p0, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    ushr-int/lit8 p0, p0, 0x7

    int-to-short p0, p0

    and-int p2, p0, v0

    if-eqz p2, :cond_0

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 v0, p0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    ushr-int/lit8 p0, p0, 0x7

    int-to-short p0, p0

    goto :goto_0

    :cond_0
    move p2, v1

    :cond_1
    :goto_0
    add-int/lit8 v0, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v0
.end method

.method public static encodeVarUInt16([BS)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt16(S[BI)I

    move-result p0

    return p0
.end method

.method public static encodeVarUInt32(I[B)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt32(I[BI)I

    move-result p0

    return p0
.end method

.method public static encodeVarUInt32(I[BI)I
    .registers 5

    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    ushr-int/lit8 p0, p0, 0x7

    and-int/lit8 p2, p0, -0x80

    if-eqz p2, :cond_0

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x7

    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    ushr-int/lit8 p0, p0, 0x7

    and-int/lit8 p2, p0, -0x80

    if-eqz p2, :cond_0

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x7

    goto :goto_0

    :cond_0
    move p2, v0

    :cond_1
    :goto_0
    add-int/lit8 v0, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v0
.end method

.method public static encodeVarUInt64(J[B)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt64(J[BI)I

    move-result p0

    return p0
.end method

.method public static encodeVarUInt64(J[BI)I
    .registers 16

    const-wide/16 v0, -0x80

    and-long v2, p0, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7f

    cmp-long v8, v2, v4

    if-eqz v8, :cond_2

    add-int/lit8 v2, p3, 0x1

    and-long v8, p0, v6

    const-wide/16 v10, 0x80

    or-long/2addr v8, v10

    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    const/4 p3, 0x7

    ushr-long/2addr p0, p3

    and-long v8, p0, v0

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    and-long v8, p0, v6

    or-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p2, v2

    ushr-long/2addr p0, p3

    and-long v8, p0, v0

    cmp-long v2, v8, v4

    if-eqz v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    and-long v8, p0, v6

    or-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p2, v3

    ushr-long/2addr p0, p3

    and-long v8, p0, v0

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    and-long v8, p0, v6

    or-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p2, v2

    ushr-long/2addr p0, p3

    and-long v8, p0, v0

    cmp-long v2, v8, v4

    if-eqz v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    and-long v8, p0, v6

    or-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p2, v3

    ushr-long/2addr p0, p3

    and-long v8, p0, v0

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    and-long v8, p0, v6

    or-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p2, v2

    ushr-long/2addr p0, p3

    and-long v8, p0, v0

    cmp-long v2, v8, v4

    if-eqz v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    and-long v8, p0, v6

    or-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p2, v3

    ushr-long/2addr p0, p3

    and-long v8, p0, v0

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    and-long v8, p0, v6

    or-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p2, v2

    ushr-long/2addr p0, p3

    and-long/2addr v0, p0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    add-int/lit8 v0, v3, 0x1

    and-long v1, p0, v6

    or-long/2addr v1, v10

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v3

    ushr-long/2addr p0, p3

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v2

    :cond_2
    :goto_0
    add-int/lit8 v0, p3, 0x1

    and-long/2addr p0, v6

    long-to-int p1, p0

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    return v0
.end method

.method public static encodeZigzag16(S)S
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0xf

    xor-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static encodeZigzag32(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static encodeZigzag64(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static getVarUInt16Size(S)I
    .registers 2

    const v0, 0xff80

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    const v0, 0xc000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getVarUInt32Size(I)I
    .registers 2

    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_3

    and-int/lit16 p0, p0, -0x4000

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static getVarUInt64Size(J)I
    .registers 7

    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_4

    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, v2, p0

    if-eqz v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    const-wide v0, -0x40000000000L

    and-long/2addr p0, v0

    cmp-long v0, v2, p0

    if-eqz v0, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    :cond_4
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_6

    const-wide/32 v0, -0x10000000

    and-long/2addr p0, v0

    cmp-long v0, v2, p0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0

    :cond_6
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_8

    const-wide/16 v0, -0x4000

    and-long/2addr p0, v0

    cmp-long v0, v2, p0

    if-eqz v0, :cond_7

    const/4 p0, 0x3

    return p0

    :cond_7
    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public static readBigEndianInt32([B)I
    .registers 3

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static writeBigEndianInt32(I[B)V
    .registers 4

    int-to-byte v0, p0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v0, 0x0

    aput-byte p0, p1, v0

    return-void
.end method
