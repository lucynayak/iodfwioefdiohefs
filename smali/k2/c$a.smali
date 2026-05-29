.class public final Lk2/c$a;
.super Lorg/mozilla/javascript/ImporterTopLevel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>()V

    return-void
.end method


# virtual methods
.method public Common_setGameVersionStringNet(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "Common_setGameVersionStringNet"
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/Api;->sendStringValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addFriend(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "addFriend"
    .end annotation

    invoke-static {p1}, Lc2/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "BlockHostObject"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getContext"
    .end annotation

    sget-object v0, Lk2/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method public getFriends()[Ljava/lang/String;
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getFriends"
    .end annotation

    .line 1
    sget-object v0, Lc2/a;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getScreenName"
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isFriend(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isFriend"
    .end annotation

    invoke-static {p1}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public preventDefault()V
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "preventDefault"
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->preventDefault()V

    :cond_0
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "print"
    .end annotation

    .line 1
    sget-object v0, Lk2/c;->d:Landroid/content/Context;

    .line 2
    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lx1/f;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lx1/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFriend(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "removeFriend"
    .end annotation

    sget-object v0, Lc2/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
