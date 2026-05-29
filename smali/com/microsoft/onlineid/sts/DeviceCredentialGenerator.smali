.class public Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LegalPasswordCharacters:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{}/?;:\'\",.<>`~"

.field public static final LegalUsernameCharacters:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field public static final LogicalDevicePrefix:Ljava/lang/String; = "02"

.field public static final PasswordLength:I = 0x10

.field public static final UsernameLength:I = 0x14


# instance fields
.field private final _randomNumberGenerator:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->_randomNumberGenerator:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->_randomNumberGenerator:Ljava/security/SecureRandom;

    return-void
.end method

.method private generateRandomString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    new-array v0, p2, [C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->_randomNumberGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public generate()Lcom/microsoft/onlineid/sts/DeviceCredentials;
    .registers 5

    new-instance v0, Lcom/microsoft/onlineid/sts/DeviceCredentials;

    const-string v1, "02"

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "abcdefghijklmnopqrstuvwxyz"

    const/16 v3, 0x12

    .line 2
    invoke-direct {p0, v2, v3}, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->generateRandomString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{}/?;:\'\",.<>`~"

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->generateRandomString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/DeviceCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
