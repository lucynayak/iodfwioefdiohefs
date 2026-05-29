.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookLinkAccountView(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$3;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->access$100()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$3;->val$activityTitle:Ljava/lang/CharSequence;

    const-string v1, "Friend Finder Facebook -  Link View"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
