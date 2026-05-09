.class public Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ApplicationIDLabel:Ljava/lang/String; = "appid"

.field private static final BinaryVersionLabel:Ljava/lang/String; = "bver"

.field private static final CurrentTimeLabel:Ljava/lang/String; = "ct"

.field private static final DATokenLabel:Ljava/lang/String; = "da"

.field private static final HashAlgorithmLabel:Ljava/lang/String; = "hashalg"

.field private static final HashAlgorithmValue:Ljava/lang/String; = "SHA256"

.field private static final HashLabel:Ljava/lang/String; = "hash"

.field private static final HmacSha256Algorithm:Ljava/lang/String; = "HmacSHA256"

.field private static final NonceLabel:Ljava/lang/String; = "nonce"


# instance fields
.field private final _currentServerTime:Ljava/util/Date;

.field private final _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private final _secureRandom:Ljava/security/SecureRandom;

.field private final _sharedKeyGenerator:Lcom/microsoft/onlineid/sts/SharedKeyGenerator;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/DAToken;Ljava/util/Date;Ljava/security/SecureRandom;Lcom/microsoft/onlineid/sts/SharedKeyGenerator;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_currentServerTime:Ljava/util/Date;

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_secureRandom:Ljava/security/SecureRandom;

    iput-object p4, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_sharedKeyGenerator:Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/microsoft/onlineid/sts/DAToken;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_currentServerTime:Ljava/util/Date;

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_secureRandom:Ljava/security/SecureRandom;

    new-instance p1, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/DAToken;->getSessionKey()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;-><init>([B)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_sharedKeyGenerator:Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    return-void
.end method


# virtual methods
.method public generateOneTimeSignedCredential(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_currentServerTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ct"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "hashalg"

    const-string v3, "SHA256"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "bver"

    const-string v3, "11"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/DAToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "da"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nonce"

    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_sharedKeyGenerator:Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    sget-object v4, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->CredentialSignature:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    invoke-virtual {v3, v4, v0}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->generateKey(Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;[B)[B

    move-result-object v0

    const-string v3, "HmacSHA256"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacSha256Digester(Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
