.class public final enum Lcom/microsoft/onlineid/internal/ApiResult$Extras;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ApiResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/ApiResult$Extras;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ApiResult$Extras;

.field public static final enum Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

.field public static final enum UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

.field public static final enum WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

.field public static final enum WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const-string v1, "Exception"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const-string v3, "UINeededIntent"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    new-instance v3, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const-string v5, "WebFlowTelemetryEvents"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    new-instance v5, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const-string v7, "WebFlowTelemetryAllEventsCaptured"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult$Extras;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ApiResult$Extras;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ApiResult$Extras;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 3

    const-string v0, "com.microsoft.msa.authenticator."

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
