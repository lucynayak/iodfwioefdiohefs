.class public Lcom/microsoft/onlineid/sts/SharedKeyGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
    }
.end annotation


# static fields
.field public static final NonceLengthBytes:I = 0x20


# instance fields
.field private final _sessionKey:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->_sessionKey:[B

    return-void
.end method

.method public static deriveSP800108HmacSHA256Key(I[BLjava/lang/String;[B)[B
    .registers 11

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacSha256Digester(Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    if-ge v3, p0, :cond_1

    invoke-virtual {p1}, Ljavax/crypto/Mac;->reset()V

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    sget-object v3, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavax/crypto/Mac;->update([B)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual {p1, p3}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    mul-int/lit8 v4, p0, 0x8

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    :cond_0
    invoke-virtual {v0, v4, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateKey(Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;[B)[B
    .registers 5

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->getKeyLengthBytes()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->_sessionKey:[B

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->deriveSP800108HmacSHA256Key(I[BLjava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method
