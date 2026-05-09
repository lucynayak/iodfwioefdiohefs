.class public Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendsFinderStateResult"
.end annotation


# instance fields
.field public facebookOptInStatus:Ljava/lang/String;

.field public facebookTokenStatus:Ljava/lang/String;

.field public phoneOptInStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinkedAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->facebookOptInStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->getOptedInStatus(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    return-object v0
.end method

.method public getLinkedAccountTokenStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->facebookTokenStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->getTokenStatus(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    return-object v0
.end method

.method public getPhoneAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->phoneOptInStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->getOptedInStatus(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    return-object v0
.end method

.method public isFacebookStateChanged(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountTokenStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountTokenStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPhoneStateChanged(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getPhoneAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getPhoneAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
