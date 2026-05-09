.class public Lcom/microsoft/xboxtcui/FbShareShimActivity;
.super Lcom/microsoft/xboxtcui/FbShimActivity;
.source "SourceFile"


# instance fields
.field private final SHARE_TO_FACEBOOK_LINK:Ljava/lang/String;

.field private shareDialog:Lm1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xboxtcui/FbShimActivity;-><init>()V

    const-string v0, "http://go.microsoft.com/fwlink/?LinkId=698852"

    iput-object v0, p0, Lcom/microsoft/xboxtcui/FbShareShimActivity;->SHARE_TO_FACEBOOK_LINK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/microsoft/xboxtcui/FbShimActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_7

    new-instance p1, Lm1/a;

    invoke-direct {p1, p0}, Lm1/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/microsoft/xboxtcui/FbShareShimActivity;->shareDialog:Lm1/a;

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xboxtcui/FbShareShimActivity;->shareDialog:Lm1/a;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->registerShareCallback(Lm1/a;)V

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerPicImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    const-class v0, Ll1/c;

    .line 1
    invoke-static {v0}, Lm1/a;->c(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 2
    invoke-static {v0}, Lm1/a;->e(Ljava/lang/Class;)Lh1/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, La3/r0;->k(Lh1/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_7

    .line 3
    new-instance v0, Ll1/c$b;

    invoke-direct {v0}, Ll1/c$b;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    iput-object p1, v0, Ll1/c$b;->d:Landroid/net/Uri;

    .line 5
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Share_Title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, v0, Ll1/c$b;->c:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Share_Description:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    iput-object p1, v0, Ll1/c$b;->b:Ljava/lang/String;

    const-string p1, "http://go.microsoft.com/fwlink/?LinkId=698852"

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 10
    iput-object p1, v0, Ll1/a$a;->a:Landroid/net/Uri;

    .line 11
    new-instance p1, Ll1/c;

    const/4 v1, 0x0

    invoke-direct {p1, v0}, Ll1/c;-><init>(Ll1/c$b;)V

    .line 12
    iget-object v0, p0, Lcom/microsoft/xboxtcui/FbShareShimActivity;->shareDialog:Lm1/a;

    .line 13
    iget-object v2, v0, Lh1/i;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lm1/a$c;

    invoke-direct {v3, v0}, Lm1/a$c;-><init>(Lm1/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lm1/a$a;

    invoke-direct {v3, v0}, Lm1/a$a;-><init>(Lm1/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lm1/a$d;

    invoke-direct {v3, v0}, Lm1/a$d;-><init>(Lm1/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iput-object v2, v0, Lh1/i;->b:Ljava/util/ArrayList;

    :cond_3
    iget-object v2, v0, Lh1/i;->b:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh1/i$a;

    invoke-virtual {v3, p1}, Lh1/i$a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    invoke-virtual {v3, p1}, Lh1/i$a;->b(Ljava/lang/Object;)Lh1/a;

    move-result-object v1
    :try_end_0
    .catch Le1/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {v0}, Lm1/a;->d()Lh1/a;

    move-result-object v1

    invoke-static {v1, p1}, La3/r0;->G(Lh1/a;Le1/m;)V

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    invoke-virtual {v0}, Lm1/a;->d()Lh1/a;

    move-result-object v1

    .line 17
    new-instance p1, Le1/m;

    const-string v2, "Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."

    invoke-direct {p1, v2}, Le1/m;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, La3/r0;->G(Lh1/a;Le1/m;)V

    .line 18
    :cond_6
    iget-object p1, v0, Lh1/i;->a:Landroid/app/Activity;

    .line 19
    iget-object v0, v1, Lh1/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 20
    iget v2, v1, Lh1/a;->a:I

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 22
    const-class p1, Lh1/a;

    monitor-enter p1

    :try_start_1
    sput-object v1, Lh1/a;->d:Lh1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_7
    :goto_3
    return-void
.end method
