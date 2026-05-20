.class public Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$MultiplayerSummary;
.super Ljava/lang/Object;
.source "IPeopleHubResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiplayerSummary"
.end annotation


# instance fields
.field public InMultiplayerSession:I

.field public InParty:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
