.class public final enum Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/privacy/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrivacySettingValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum Everyone:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum FriendCategoryShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum PeopleOnMyList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v1, "NotSet"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    new-instance v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v3, "Everyone"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Everyone:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    new-instance v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v5, "PeopleOnMyList"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->PeopleOnMyList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    new-instance v5, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v7, "FriendCategoryShareIdentity"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    new-instance v7, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v9, "Blocked"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

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

.method public static getPrivacySettingValue(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    .registers 6

    invoke-static {}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

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
    sget-object p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    return-object v0
.end method
