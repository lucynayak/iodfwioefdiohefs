.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$2;
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
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$2;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$2;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsSendInvite(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    const-class v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreen;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
