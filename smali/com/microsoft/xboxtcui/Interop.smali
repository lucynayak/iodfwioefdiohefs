.class public Lcom/microsoft/xboxtcui/Interop;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Interop"

.field private static final detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/xboxtcui/Interop$1;

    invoke-direct {v0}, Lcom/microsoft/xboxtcui/Interop$1;-><init>()V

    sput-object v0, Lcom/microsoft/xboxtcui/Interop;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowAddFriends(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowAddFriends"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showAddFriends(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void

    :cond_0
    const/4 p0, 0x1

    goto :goto_0
.end method

.method public static ShowFriendFinder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCUI- ShowFriendFinder - meXuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCUI- ShowFriendFinder: privileges:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "255"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putMeXuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putPrivileges(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/xboxtcui/Interop$3;

    invoke-direct {p1, p0, v0}, Lcom/microsoft/xboxtcui/Interop$3;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void
.end method

.method public static ShowProfileCardUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCUI- ShowProfileCardUI: meXuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCUI- ShowProfileCardUI: targeProfileXuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCUI- ShowProfileCardUI: privileges:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putMeXuid(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putSelectedProfile(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putPrivileges(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/xboxtcui/Interop$2;

    invoke-direct {p1, v0, v1}, Lcom/microsoft/xboxtcui/Interop$2;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ShowTitleAchievements(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void
.end method

.method public static ShowTitleHub(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowTitleHub"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showTitleHub(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void

    :cond_0
    const/4 p0, 0x1

    goto :goto_0
.end method

.method public static ShowUserProfile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowUserProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showUserProfile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void

    :cond_0
    const/4 p0, 0x1

    goto :goto_0
.end method

.method public static ShowUserSettings(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowUserSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showUserSettings(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void

    :cond_0
    const/4 p0, 0x1

    goto :goto_0
.end method

.method public static synthetic access$000(I)V
    .registers 1

    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void
.end method

.method public static synthetic access$100()Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;
    .registers 1

    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getForegroundActivity()Landroid/app/Activity;
    .registers 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private static native tcui_completed_callback(I)V
.end method
