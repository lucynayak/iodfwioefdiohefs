.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackShareFacebookLinkToFeed(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->shareToFacebook()V

    return-void
.end method
