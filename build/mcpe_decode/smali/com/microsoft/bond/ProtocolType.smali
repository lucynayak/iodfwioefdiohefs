.class public final enum Lcom/microsoft/bond/ProtocolType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/bond/ProtocolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/ProtocolType;

.field public static final enum COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum MAFIA_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum MARSHALED_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum PRETTY_JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum SIMPLE_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum __INVALID_ENUM_VALUE:Lcom/microsoft/bond/ProtocolType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/microsoft/bond/ProtocolType;

    const-string v1, "MARSHALED_PROTOCOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->MARSHALED_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    new-instance v1, Lcom/microsoft/bond/ProtocolType;

    const-string v3, "MAFIA_PROTOCOL"

    const/4 v4, 0x1

    const/16 v5, 0x464d

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/bond/ProtocolType;->MAFIA_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    new-instance v3, Lcom/microsoft/bond/ProtocolType;

    const-string v5, "COMPACT_PROTOCOL"

    const/4 v6, 0x2

    const/16 v7, 0x4243

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/bond/ProtocolType;->COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    new-instance v5, Lcom/microsoft/bond/ProtocolType;

    const-string v7, "JSON_PROTOCOL"

    const/4 v8, 0x3

    const/16 v9, 0x534a

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/bond/ProtocolType;->JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    new-instance v7, Lcom/microsoft/bond/ProtocolType;

    const-string v9, "PRETTY_JSON_PROTOCOL"

    const/4 v10, 0x4

    const/16 v11, 0x504a

    invoke-direct {v7, v9, v10, v11}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/bond/ProtocolType;->PRETTY_JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    new-instance v9, Lcom/microsoft/bond/ProtocolType;

    const-string v11, "SIMPLE_PROTOCOL"

    const/4 v12, 0x5

    const/16 v13, 0x5053

    invoke-direct {v9, v11, v12, v13}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/microsoft/bond/ProtocolType;->SIMPLE_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    new-instance v11, Lcom/microsoft/bond/ProtocolType;

    const-string v13, "__INVALID_ENUM_VALUE"

    const/4 v14, 0x6

    const/16 v15, 0x534b

    invoke-direct {v11, v13, v14, v15}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/microsoft/bond/ProtocolType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/ProtocolType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/microsoft/bond/ProtocolType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/microsoft/bond/ProtocolType;->$VALUES:[Lcom/microsoft/bond/ProtocolType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/bond/ProtocolType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/microsoft/bond/ProtocolType;
    .locals 1

    if-eqz p0, :cond_5

    const/16 v0, 0x4243

    if-eq p0, v0, :cond_4

    const/16 v0, 0x464d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x504a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5053

    if-eq p0, v0, :cond_1

    const/16 v0, 0x534a

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/microsoft/bond/ProtocolType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/ProtocolType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/bond/ProtocolType;->JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/microsoft/bond/ProtocolType;->SIMPLE_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/microsoft/bond/ProtocolType;->PRETTY_JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/microsoft/bond/ProtocolType;->MAFIA_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/microsoft/bond/ProtocolType;->COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    return-object p0

    :cond_5
    sget-object p0, Lcom/microsoft/bond/ProtocolType;->MARSHALED_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/ProtocolType;
    .locals 1

    const-class v0, Lcom/microsoft/bond/ProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/bond/ProtocolType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/bond/ProtocolType;
    .locals 1

    sget-object v0, Lcom/microsoft/bond/ProtocolType;->$VALUES:[Lcom/microsoft/bond/ProtocolType;

    invoke-virtual {v0}, [Lcom/microsoft/bond/ProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/ProtocolType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/ProtocolType;->value:I

    return v0
.end method
