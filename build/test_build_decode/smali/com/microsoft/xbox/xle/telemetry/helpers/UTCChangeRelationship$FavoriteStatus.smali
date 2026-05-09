.class public final enum Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FavoriteStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field public static final enum EXISTINGFAVORITE:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field public static final enum EXISTINGNOTFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field public static final enum FAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field public static final enum NOTFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field public static final enum UNFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->UNKNOWN:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    new-instance v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    const-string v3, "FAVORITED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->FAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    new-instance v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    const-string v5, "UNFAVORITED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->UNFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    new-instance v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    const-string v7, "NOTFAVORITED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->NOTFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    new-instance v7, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    const-string v9, "EXISTINGFAVORITE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->EXISTINGFAVORITE:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    new-instance v9, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    const-string v11, "EXISTINGNOTFAVORITED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->EXISTINGNOTFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->$VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

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

    iput p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->$VALUES:[Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->value:I

    return v0
.end method
