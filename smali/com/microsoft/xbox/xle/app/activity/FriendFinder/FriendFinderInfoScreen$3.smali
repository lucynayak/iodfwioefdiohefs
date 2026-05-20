.class synthetic Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Everyone:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->PeopleOnMyList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->values()[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    :try_start_5
    sget-object v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
