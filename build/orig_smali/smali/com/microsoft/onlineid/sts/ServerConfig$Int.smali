.class public final enum Lcom/microsoft/onlineid/sts/ServerConfig$Int;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/internal/configuration/ISetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Int"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/sts/ServerConfig$Int;",
        ">;",
        "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Int;

.field public static final enum BackupSlaveCount:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

.field public static final enum ConnectTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

.field public static final enum MaxSecondsBetweenBackups:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

.field public static final enum MaxTriesForSsoRequestToSingleService:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

.field public static final enum MaxTriesForSsoRequestWithFallback:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

.field public static final enum MinSecondsBetweenConfigDownloads:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

.field public static final enum ReceiveTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

.field public static final enum SendTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;


# instance fields
.field private final _defaultValue:Ljava/lang/Integer;

.field private final _settingName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "ConnectTimeout"

    const/4 v2, 0x0

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ConnectTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    new-instance v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v3, "SendTimeout"

    const/4 v4, 0x1

    const/16 v5, 0x7530

    invoke-direct {v1, v3, v4, v3, v5}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->SendTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    new-instance v3, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v6, "ReceiveTimeout"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v6, v5}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ReceiveTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    new-instance v5, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v6, "BackupSlaveCount"

    const/4 v8, 0x3

    invoke-direct {v5, v6, v8, v6, v8}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->BackupSlaveCount:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    new-instance v6, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v9, "MaxSecondsBetweenBackups"

    const/4 v10, 0x4

    const v11, 0x3f480

    invoke-direct {v6, v9, v10, v9, v11}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxSecondsBetweenBackups:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    new-instance v9, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v11, "MinSecondsBetweenConfigDownloads"

    const/4 v12, 0x5

    const/16 v13, 0x7080

    invoke-direct {v9, v11, v12, v11, v13}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MinSecondsBetweenConfigDownloads:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    new-instance v11, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v13, "MaxTriesForSsoRequestToSingleService"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13, v7}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestToSingleService:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    new-instance v13, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v15, "MaxTriesForSsoRequestWithFallback"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15, v10}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestWithFallback:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v7

    aput-object v5, v15, v8

    aput-object v6, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->_settingName:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->_defaultValue:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Int;
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/ServerConfig$Int;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/ServerConfig$Int;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->_defaultValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->getDefaultValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSettingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->_settingName:Ljava/lang/String;

    return-object v0
.end method
