.class public final enum Lcom/microsoft/onlineid/internal/ApiRequest$Extras;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/ApiRequest$Extras;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "AccountName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v3, "AccountPuid"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v3, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v5, "ClientPackageName"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v5, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v7, "ClientStateBundle"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v7, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v9, "CobrandingId"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v9, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v11, "Continuation"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v11, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v13, "FlowToken"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v13, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v15, "IsSdkRequest"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v15, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v14, "ResultReceiver"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v14, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v12, "Scope"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    new-instance v12, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v10, "WebFlowTelemetryRequested"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest$Extras;
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ApiRequest$Extras;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

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
