.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;)I
    .locals 0

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->displayName:Ljava/lang/String;

    iget-object p2, p2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    check-cast p2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;->compare(Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;)I

    move-result p1

    return p1
.end method
