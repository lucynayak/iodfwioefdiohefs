.class public final Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/i;
.implements Lr1/n;


# static fields
.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ly1/a;->b:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ly1/a;->c:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f030040

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Ly1/a;->d:[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Ly1/a;->e:[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    sput-object v2, Ly1/a;->f:[I

    new-array v0, v0, [I

    const v2, 0x7f030043

    aput v2, v0, v3

    sput-object v0, Ly1/a;->g:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Ly1/a;->h:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Ly1/a;->i:[I

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_6

    sput-object v0, Ly1/a;->j:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030187
        0x7f030188
    .end array-data

    :array_1
    .array-data 4
        0x7f030041
        0x7f030042
        0x7f030044
        0x7f030045
    .end array-data

    :array_2
    .array-data 4
        0x1010109
        0x1010200
        0x7f030118
    .end array-data

    :array_3
    .array-data 4
        0x10101b7
        0x10101b8
        0x10101b9
        0x10101ba
        0x7f03003a
        0x7f03003b
        0x7f0300b4
        0x7f03012a
        0x7f03012c
        0x7f03012d
        0x7f03012e
        0x7f030130
        0x7f030131
        0x7f0301ec
        0x7f030214
        0x7f030215
    .end array-data

    :array_4
    .array-data 4
        0x101011f
        0x7f0300df
        0x7f03019d
    .end array-data

    :array_5
    .array-data 4
        0x1010034
        0x7f0300e0
        0x7f0300e1
    .end array-data

    :array_6
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 15

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    .line 1
    sget-object v1, Ly1/a;->j:[B

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x4

    .line 2
    div-int/2addr v2, v3

    const/4 v4, 0x2

    add-int/2addr v2, v4

    new-array v2, v2, [B

    new-array v3, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x3d

    const/4 v10, 0x1

    if-ge v6, v0, :cond_9

    add-int/lit8 v11, v6, 0x0

    aget-byte v12, p0, v11

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v12, v12

    aget-byte v13, v1, v12

    const/4 v14, -0x5

    if-lt v13, v14, :cond_8

    const/4 v11, -0x1

    if-lt v13, v11, :cond_7

    if-ne v12, v9, :cond_5

    sub-int v11, v0, v6

    add-int/lit8 v12, v0, -0x1

    add-int/2addr v12, v5

    aget-byte p0, p0, v12

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    if-eqz v7, :cond_4

    if-eq v7, v10, :cond_4

    const/4 v12, 0x3

    if-ne v7, v12, :cond_0

    if-gt v11, v4, :cond_1

    :cond_0
    const/4 v4, 0x4

    if-ne v7, v4, :cond_2

    if-gt v11, v10, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lw1/a;

    const-string v0, "padding byte \'=\' falsely signals end of encoded value at offset "

    .line 3
    invoke-static {v0, v6}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lw1/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eq p0, v9, :cond_9

    const/16 v4, 0xa

    if-ne p0, v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Lw1/a;

    const-string v0, "encoded value has invalid trailing byte"

    invoke-direct {p0, v0}, Lw1/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lw1/a;

    const-string v0, "invalid padding byte \'=\' at byte offset "

    .line 5
    invoke-static {v0, v6}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lw1/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 v9, v7, 0x1

    aput-byte v12, v3, v7

    const/4 v7, 0x4

    if-ne v9, v7, :cond_6

    invoke-static {v3, v2, v8, v1}, Ly1/a;->b([B[BI[B)I

    move-result v7

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move v8, v7

    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    move v7, v9

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    new-instance v0, Lw1/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Base64 input character at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p0, v11

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(decimal)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lw1/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    if-eqz v7, :cond_b

    if-eq v7, v10, :cond_a

    aput-byte v9, v3, v7

    invoke-static {v3, v2, v8, v1}, Ly1/a;->b([B[BI[B)I

    move-result p0

    add-int/2addr v8, p0

    goto :goto_4

    :cond_a
    new-instance p0, Lw1/a;

    const-string v1, "single trailing character at offset "

    .line 7
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr v0, v10

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lw1/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    new-array p0, v8, [B

    invoke-static {v2, v5, p0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static b([B[BI[B)I
    .locals 6

    const/4 v0, 0x2

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_0

    aget-byte v0, p0, v3

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    aget-byte p0, p0, v2

    aget-byte p0, p3, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v2

    :cond_0
    const/4 v1, 0x3

    aget-byte v5, p0, v1

    if-ne v5, v4, :cond_1

    aget-byte v1, p0, v3

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    aget-byte v3, p0, v2

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    aget-byte p0, p0, v0

    aget-byte p0, p3, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x12

    or-int/2addr p0, v1

    ushr-int/lit8 p3, p0, 0x10

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    add-int/2addr p2, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v0

    :cond_1
    aget-byte v3, p0, v3

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x6

    aget-byte v2, p0, v2

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v3

    aget-byte v3, p0, v0

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x12

    or-int/2addr v2, v3

    aget-byte p0, p0, v1

    aget-byte p0, p3, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v2

    shr-int/lit8 p3, p0, 0x10

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    add-int/lit8 p3, p2, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, p3

    add-int/2addr p2, v0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v1
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public e(Ljava/lang/Class;)Le3/k;
    .locals 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, Le3/b;

    invoke-direct {p1, v1}, Le3/b;-><init>(I)V

    return-object p1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Le3/c;

    invoke-direct {p1, v2}, Le3/c;-><init>(I)V

    return-object p1

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    new-instance p1, Le3/b;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Le3/b;-><init>(I)V

    return-object p1

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    new-instance p1, Le3/c;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Le3/c;-><init>(I)V

    return-object p1

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    new-instance p1, Le3/c;

    invoke-direct {p1, v1}, Le3/c;-><init>(I)V

    return-object p1

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    new-instance p1, Le3/b;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Le3/b;-><init>(I)V

    return-object p1

    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    new-instance p1, Le3/d;

    invoke-direct {p1, v2}, Le3/d;-><init>(I)V

    return-object p1

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    new-instance p1, Le3/c;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Le3/c;-><init>(I)V

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
