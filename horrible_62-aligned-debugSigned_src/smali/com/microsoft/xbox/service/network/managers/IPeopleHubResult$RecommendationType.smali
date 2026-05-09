.class public final enum Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecommendationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Dummy:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum FriendOfFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum VIP:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    new-instance v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v3, "Dummy"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Dummy:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    new-instance v3, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v5, "Follower"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    new-instance v5, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v7, "FacebookFriend"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    new-instance v7, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v9, "PhoneContact"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    new-instance v9, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v11, "FriendOfFriend"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FriendOfFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    new-instance v11, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v13, "VIP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->VIP:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->$VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

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

.method public static getRecommendationType(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .registers 6

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->values()[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->$VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-object v0
.end method
