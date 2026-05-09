.class public Lcom/microsoft/xboxtcui/FbLoginShimActivity;
.super Lcom/microsoft/xboxtcui/FbShimActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;
    }
.end annotation


# static fields
.field public static final LOGIN_TYPE_KEY:Ljava/lang/String; = "LoginType"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xboxtcui/FbShimActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/microsoft/xboxtcui/FbShimActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "LoginType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    sget-object v0, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->READ:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    invoke-static {}, Li1/p;->b()Li1/p;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getLoginBehavior()Li1/m;

    move-result-object v0

    .line 1
    iput-object v0, p1, Li1/p;->a:Li1/m;

    .line 2
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookPermission()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Li1/p;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Le1/m;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v1

    const-string v1, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Li1/p;->a(Ljava/util/Collection;)Li1/n$d;

    move-result-object v0

    new-instance v1, Li1/p$c;

    invoke-direct {v1, p0}, Li1/p$c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v1, v0}, Li1/p;->g(Li1/t;Li1/n$d;)V

    goto :goto_4

    .line 5
    :cond_3
    sget-object v0, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->PUBLISH:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    if-ne p1, v0, :cond_7

    invoke-static {}, Li1/p;->b()Li1/p;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getLoginBehavior()Li1/m;

    move-result-object v0

    .line 6
    iput-object v0, p1, Li1/p;->a:Li1/m;

    const-string v0, "publish_actions"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Li1/p;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Le1/m;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v1

    const-string v1, "Cannot pass a read permission (%s) to a request for publish authorization"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_6
    :goto_3
    invoke-virtual {p1, v0}, Li1/p;->a(Ljava/util/Collection;)Li1/n$d;

    move-result-object v0

    new-instance v1, Li1/p$c;

    invoke-direct {v1, p0}, Li1/p$c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v1, v0}, Li1/p;->g(Li1/t;Li1/n$d;)V

    :cond_7
    :goto_4
    return-void
.end method
