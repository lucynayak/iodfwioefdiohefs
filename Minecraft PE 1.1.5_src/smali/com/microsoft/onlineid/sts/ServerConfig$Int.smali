.class public final enum Lcom/microsoft/onlineid/sts/ServerConfig$Int;
.super Ljava/lang/Enum;
.source "ServerConfig.java"

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
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/sts/ServerConfig$Int;",
        ">;",
        "Lcom/microsoft/onlineid/internal/configuration/ISetting",
        "<",
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
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 118
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "ConnectTimeout"

    const-string v2, "ConnectTimeout"

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ConnectTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 124
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "SendTimeout"

    const-string v2, "SendTimeout"

    const/16 v3, 0x7530

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->SendTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 130
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "ReceiveTimeout"

    const-string v2, "ReceiveTimeout"

    const/16 v3, 0x7530

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ReceiveTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 135
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "BackupSlaveCount"

    const-string v2, "BackupSlaveCount"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->BackupSlaveCount:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 140
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "MaxSecondsBetweenBackups"

    const-string v2, "MaxSecondsBetweenBackups"

    const v3, 0x3f480

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxSecondsBetweenBackups:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 145
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "MinSecondsBetweenConfigDownloads"

    const/4 v2, 0x5

    const-string v3, "MinSecondsBetweenConfigDownloads"

    const/16 v4, 0x7080

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MinSecondsBetweenConfigDownloads:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 150
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "MaxTriesForSsoRequestToSingleService"

    const/4 v2, 0x6

    const-string v3, "MaxTriesForSsoRequestToSingleService"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestToSingleService:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 155
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    const-string v1, "MaxTriesForSsoRequestWithFallback"

    const/4 v2, 0x7

    const-string v3, "MaxTriesForSsoRequestWithFallback"

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestWithFallback:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ConnectTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v1, v0, v8

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->SendTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v1, v0, v9

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ReceiveTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->BackupSlaveCount:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxSecondsBetweenBackups:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MinSecondsBetweenConfigDownloads:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestToSingleService:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestWithFallback:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6
    .param p3, "settingName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->_settingName:Ljava/lang/String;

    .line 171
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->_defaultValue:Ljava/lang/Integer;

    .line 172
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Int;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/ServerConfig$Int;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/ServerConfig$Int;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->_defaultValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->getDefaultValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSettingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->_settingName:Ljava/lang/String;

    return-object v0
.end method
