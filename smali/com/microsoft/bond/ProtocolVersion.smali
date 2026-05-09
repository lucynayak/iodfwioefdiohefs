.class public final enum Lcom/microsoft/bond/ProtocolVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/bond/ProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/ProtocolVersion;

.field public static final enum ONE:Lcom/microsoft/bond/ProtocolVersion;

.field public static final enum TWO:Lcom/microsoft/bond/ProtocolVersion;


# instance fields
.field private value:S


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/microsoft/bond/ProtocolVersion;

    const-string v1, "ONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    new-instance v1, Lcom/microsoft/bond/ProtocolVersion;

    const-string v4, "TWO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/microsoft/bond/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    new-array v4, v5, [Lcom/microsoft/bond/ProtocolVersion;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/microsoft/bond/ProtocolVersion;->$VALUES:[Lcom/microsoft/bond/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-short p1, p3

    iput-short p1, p0, Lcom/microsoft/bond/ProtocolVersion;->value:S

    return-void
.end method

.method public static fromValue(S)Lcom/microsoft/bond/ProtocolVersion;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    return-object p0

    :cond_1
    sget-object p0, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/ProtocolVersion;
    .registers 2

    const-class v0, Lcom/microsoft/bond/ProtocolVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/bond/ProtocolVersion;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/bond/ProtocolVersion;
    .registers 1

    sget-object v0, Lcom/microsoft/bond/ProtocolVersion;->$VALUES:[Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {v0}, [Lcom/microsoft/bond/ProtocolVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/ProtocolVersion;

    return-object v0
.end method


# virtual methods
.method public getValue()S
    .registers 2

    iget-short v0, p0, Lcom/microsoft/bond/ProtocolVersion;->value:S

    return v0
.end method
