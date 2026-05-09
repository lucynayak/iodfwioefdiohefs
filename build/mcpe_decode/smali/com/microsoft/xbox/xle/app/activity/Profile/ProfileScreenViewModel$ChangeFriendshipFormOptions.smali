.class public final enum Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeFriendshipFormOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldRemoveUserFromFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v1, "ShouldAddUserToFriendList"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v3, "ShouldRemoveUserFromFriendList"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    new-instance v3, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v5, "ShouldAddUserToFavoriteList"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    new-instance v5, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v7, "ShouldRemoveUserFromFavoriteList"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    new-instance v7, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v9, "ShouldAddUserToShareIdentityList"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    new-instance v9, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v11, "ShouldRemoveUserFromShareIdentityList"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->$VALUES:[Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->$VALUES:[Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    return-object v0
.end method
