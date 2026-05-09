.class public Lcom/microsoft/onlineid/sts/Cryptography;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AesAlgorithm:Ljava/lang/String; = "AES"

.field public static final AesCbcPkcs5PaddingInitializationVectorByteCount:I = 0x10

.field public static final AesCbcPkcs5PaddingTransformation:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final ByteToBase32Lookup:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

.field public static final HmacSha1Algorithm:Ljava/lang/String; = "HmacSHA1"

.field public static final HmacSha256Algorithm:Ljava/lang/String; = "HmacSHA256"

.field public static final Sha256Algorithm:Ljava/lang/String; = "SHA256"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptWithAesCbcPcs5PaddingCipher([B[B)[B
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p1, p0, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1, v0, p1}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedDecryptionCipher(Ljava/lang/String;Ljava/security/Key;Ljavax/crypto/spec/IvParameterSpec;)Ljavax/crypto/Cipher;

    move-result-object p1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, p0, v2, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase32([B)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    const/16 v4, 0x8

    mul-int/lit8 v3, v3, 0x8

    const/4 v5, 0x5

    div-int/2addr v3, v5

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    new-array v3, v4, [B

    array-length v6, p0

    sub-int/2addr v6, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    rsub-int/lit8 v7, v6, 0x8

    add-int/lit8 v7, v7, -0x1

    invoke-static {p0, v0, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    add-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x8

    :goto_2
    add-int/lit8 v6, v6, -0x5

    const/4 v3, 0x3

    if-le v6, v3, :cond_1

    const-wide/16 v9, 0x1f

    ushr-long v11, v7, v6

    and-long/2addr v9, v11

    long-to-int v3, v9

    const-string v9, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInitializedDecryptionCipher(Ljava/lang/String;Ljava/security/Key;Ljavax/crypto/spec/IvParameterSpec;)Ljavax/crypto/Cipher;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getInitializedHmacDigester(Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getInitializedHmacSha1Digester(Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 1

    const-string v0, "HmacSHA1"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacDigester(Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static getInitializedHmacSha256Digester(Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 1

    const-string v0, "HmacSHA256"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacDigester(Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static getSha256Digester()Ljava/security/MessageDigest;
    .locals 2

    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getShaDigester()Ljava/security/MessageDigest;
    .locals 2

    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
