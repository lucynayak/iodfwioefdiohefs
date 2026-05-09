.class public final enum Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkedAccountTokenStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

.field public static final enum OK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

.field public static final enum TokenRenewalRequired:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

.field public static final enum Unset:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const-string v3, "Unset"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->Unset:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    new-instance v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const-string v5, "OK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->OK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    new-instance v5, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const-string v7, "TokenRenewalRequired"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->TokenRenewalRequired:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

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

.method public static getTokenStatus(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    .locals 5

    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->values()[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    return-object v0
.end method
