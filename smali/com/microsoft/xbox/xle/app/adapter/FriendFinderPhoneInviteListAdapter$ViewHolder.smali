.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private checkTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private contactNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private onXboxTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->contactNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->contactNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->onXboxTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->onXboxTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->checkTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->checkTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p1
.end method
