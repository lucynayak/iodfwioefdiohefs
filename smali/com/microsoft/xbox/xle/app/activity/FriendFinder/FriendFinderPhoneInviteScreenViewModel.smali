.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;
    }
.end annotation


# instance fields
.field private contactComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private contactsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private isUploadingContacts:Z

.field private uploadContactsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->contactsList:Ljava/util/ArrayList;

    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->contactComparator:Ljava/util/Comparator;

    const-string p1, "This isn\'t supported yet."

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->onUploadContactsTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->isUploadingContacts:Z

    return p1
.end method

.method private cancelActiveTasks()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;

    :cond_0
    return-void
.end method

.method private onUploadContactsTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->isUploadingContacts:Z

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getContacts()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->contactsList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->contactComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter()V

    return-void
.end method


# virtual methods
.method public addContacts(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->contactsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "smsto:"

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Message:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sms_body"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderDone(Z)V

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getContacts()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->contactsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBusy()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->isUploadingContacts:Z

    return v0
.end method

.method public load(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->cancelActiveTasks()V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->isXboxContactsUpdated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getContacts()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->contactsList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->contactComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_0
    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$UploadContactsAsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->load(Z)V

    return-void
.end method

.method public onBackButtonPressed()Z
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onRehydrate()V
    .registers 2

    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public onStartOverride()V
    .registers 1

    return-void
.end method

.method public onStopOverride()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->cancelActiveTasks()V

    return-void
.end method
