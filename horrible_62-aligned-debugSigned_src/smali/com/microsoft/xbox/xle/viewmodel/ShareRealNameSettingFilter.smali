.class public final enum Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum Everyone:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum FriendCategoryShareIdentity:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum PeopleOnMyList:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "Blocked"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    new-instance v1, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v3, "Everyone"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Everyone:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    new-instance v3, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v5, "PeopleOnMyList"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->PeopleOnMyList:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    new-instance v5, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v7, "FriendCategoryShareIdentity"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    return-object v0
.end method
