.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFriendFinderView(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field public final synthetic val$currentUserXuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;->val$currentUserXuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;->val$currentUserXuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;->val$activityTitle:Ljava/lang/CharSequence;

    const-string v1, "Friend Finder - View"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
