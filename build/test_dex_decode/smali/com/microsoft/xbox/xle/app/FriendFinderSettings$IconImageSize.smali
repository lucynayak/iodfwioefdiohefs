.class public final enum Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

.field public static final enum LARGE:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

.field public static final enum MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

.field public static final enum SMALL:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->UNKNOWN:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    new-instance v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const-string v3, "SMALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->SMALL:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    new-instance v3, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const-string v5, "MEDIUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    new-instance v5, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const-string v7, "LARGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->LARGE:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->$VALUES:[Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->$VALUES:[Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    return-object v0
.end method
