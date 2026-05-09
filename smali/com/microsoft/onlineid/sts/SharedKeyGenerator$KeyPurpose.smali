.class public final enum Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/SharedKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyPurpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

.field public static final enum CredentialSignature:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

.field public static final enum STSDigest:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;


# instance fields
.field private final _keyLengthBytes:I

.field private final _label:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    const-string v1, "CredentialSignature"

    const/4 v2, 0x0

    const/16 v3, 0x20

    const-string v4, "WS-SecureConversation"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->CredentialSignature:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    new-instance v1, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    const-string v4, "STSDigest"

    const/4 v5, 0x1

    const-string v6, "WS-SecureConversationWS-SecureConversation"

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->STSDigest:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    sput-object v3, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->$VALUES:[Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->_keyLengthBytes:I

    iput-object p4, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->_label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->$VALUES:[Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    return-object v0
.end method


# virtual methods
.method public getKeyLengthBytes()I
    .registers 2

    iget v0, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->_keyLengthBytes:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->_label:Ljava/lang/String;

    return-object v0
.end method
