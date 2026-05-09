.class public final enum Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealNameStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum EXISTINGNOTSHARED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum EXISTINGSHARED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum SHARINGOFF:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum SHARINGON:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->UNKNOWN:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    new-instance v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v3, "SHARINGON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    new-instance v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v5, "SHARINGOFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGOFF:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    new-instance v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v7, "EXISTINGSHARED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGSHARED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    new-instance v7, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v9, "EXISTINGNOTSHARED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGNOTSHARED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->$VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

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

    iput p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->$VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->value:I

    return v0
.end method
