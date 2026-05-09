.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;
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

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    sget-object p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$4;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsNext(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackSkipFacebookSharing(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderDone(Z)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
