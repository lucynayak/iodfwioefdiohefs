.class Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le1/j<",
        "Li1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookLoginCancel(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loadPeopleHubFriendFinderState()V

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->resetFacebookToken(Z)V

    return-void
.end method

.method public onError(Le1/m;)V
    .registers 3

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loadPeopleHubFriendFinderState()V

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->resetFacebookToken(Z)V

    return-void
.end method

.method public onSuccess(Li1/s;)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .line 1
    iget-object p1, p1, Li1/s;->a:Le1/a;

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$002(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Le1/a;)Le1/a;

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$000(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Le1/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$100(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$102(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Z)Z

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$000(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Le1/a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le1/a;->h:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$202(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$300(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Li1/s;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->onSuccess(Li1/s;)V

    return-void
.end method
