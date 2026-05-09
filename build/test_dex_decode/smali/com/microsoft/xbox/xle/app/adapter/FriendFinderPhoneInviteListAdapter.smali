.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string p1, "This isn\'t supported yet."

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_phone_invite_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$1;)V

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_phone_invite_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$102(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_phone_invite_name_onxbox:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$202(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_phone_invite_checkbox:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$302(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;

    :goto_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p3, Lcom/microsoft/xboxtcui/R$color;->XboxOneGreen:I

    goto :goto_1

    :cond_1
    const p3, 0x106000d

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object p3

    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->displayName:Ljava/lang/String;

    invoke-static {p3, v3, v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object p3

    iget-boolean v2, v2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->isOnXbox:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object p3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x4

    :goto_3
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-object p2
.end method
