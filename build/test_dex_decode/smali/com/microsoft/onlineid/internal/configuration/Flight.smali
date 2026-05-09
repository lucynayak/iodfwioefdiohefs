.class public final enum Lcom/microsoft/onlineid/internal/configuration/Flight;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/configuration/Flight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/configuration/Flight;

.field public static final enum QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;


# instance fields
.field private final _flightID:I

.field private final _flightName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Flight;

    const-string v1, "QRCode"

    const/4 v2, 0x0

    const/16 v3, 0xb

    const-string v4, "qr_code"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/internal/configuration/Flight;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Flight;->QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/onlineid/internal/configuration/Flight;

    aput-object v0, v1, v2

    sput-object v1, Lcom/microsoft/onlineid/internal/configuration/Flight;->$VALUES:[Lcom/microsoft/onlineid/internal/configuration/Flight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/onlineid/internal/configuration/Flight;->_flightID:I

    iput-object p4, p0, Lcom/microsoft/onlineid/internal/configuration/Flight;->_flightName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/Flight;
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/internal/configuration/Flight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/configuration/Flight;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/configuration/Flight;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/configuration/Flight;->$VALUES:[Lcom/microsoft/onlineid/internal/configuration/Flight;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/configuration/Flight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/configuration/Flight;

    return-object v0
.end method


# virtual methods
.method public getFlightID()I
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/internal/configuration/Flight;->_flightID:I

    return v0
.end method

.method public getFlightName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Flight;->_flightName:Ljava/lang/String;

    return-object v0
.end method
