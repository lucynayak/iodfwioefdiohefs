.class public final enum Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Relationship"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum ADDFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum EXISTINGFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum NOTCHANGED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum REMOVEFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->UNKNOWN:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    new-instance v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v3, "ADDFRIEND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    new-instance v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v5, "REMOVEFRIEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->REMOVEFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    new-instance v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v7, "EXISTINGFRIEND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    new-instance v7, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    const-string v9, "NOTCHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->NOTCHANGED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->$VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

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

    iput p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->$VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->value:I

    return v0
.end method
