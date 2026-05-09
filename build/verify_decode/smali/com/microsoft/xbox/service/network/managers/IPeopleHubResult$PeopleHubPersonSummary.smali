.class public Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleHubPersonSummary"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public displayPicRaw:Ljava/lang/String;

.field public follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Follower;

.field public gamerScore:Ljava/lang/String;

.field public gamertag:Ljava/lang/String;

.field public isFavorite:Z

.field public isFollowedByCaller:Z

.field public isFollowingCaller:Z

.field public isIdentityShared:Z

.field public multiplayerSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$MultiplayerSummary;

.field public preferredColor:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPreferredColor;

.field public presenceState:Ljava/lang/String;

.field public presenceText:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

.field public recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

.field public titleHistory:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;

.field public titlePresence:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;

.field public titleSummaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleSummary;",
            ">;"
        }
    .end annotation
.end field

.field public useAvatar:Z

.field public xboxOneRep:Ljava/lang/String;

.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
