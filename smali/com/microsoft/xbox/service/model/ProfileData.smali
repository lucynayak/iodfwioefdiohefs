.class public Lcom/microsoft/xbox/service/model/ProfileData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

.field private shareRealName:Z

.field private shareRealNameStatus:Ljava/lang/String;

.field private sharingRealNameTransitively:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;ZLjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/microsoft/xbox/service/model/ProfileData;->sharingRealNameTransitively:Z

    return-void
.end method


# virtual methods
.method public getProfileResult()Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    return-object v0
.end method

.method public getShareRealName()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    return v0
.end method

.method public getShareRealNameStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingRealNameTransitively()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->sharingRealNameTransitively:Z

    return v0
.end method
