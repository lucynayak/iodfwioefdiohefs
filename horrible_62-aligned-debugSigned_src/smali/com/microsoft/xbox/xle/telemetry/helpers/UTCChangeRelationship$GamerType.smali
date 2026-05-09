.class public final enum Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GamerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public static final enum FACEBOOK:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public static final enum NORMAL:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public static final enum SUGGESTED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->UNKNOWN:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    new-instance v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->NORMAL:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    new-instance v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    const-string v5, "FACEBOOK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->FACEBOOK:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    new-instance v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    const-string v7, "SUGGESTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->SUGGESTED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->$VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

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

    iput p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->$VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->value:I

    return v0
.end method
