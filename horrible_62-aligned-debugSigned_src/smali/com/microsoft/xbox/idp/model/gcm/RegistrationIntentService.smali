.class public Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final REGISTRATION_MODE:Ljava/lang/String; = "com.microsoft.xbox.idp.model.gcm"

.field private static final REGISTRATION_TOKEN_FIELD:Ljava/lang/String; = "registrationToken"

.field private static final SENDER_ID:Ljava/lang/String; = "86584527366"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;

    const-string v0, "RegistrationIntentService"

    sput-object v0, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "XSAPI.Android"

    const-string v1, "com.microsoft.xbox.idp.model.gcm"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "registrationToken"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v6, Lcom/microsoft/xbox/idp/model/gcm/NotificationInstanceIDListenerService;->REFRESH_FLAG:Ljava/lang/String;

    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    goto :goto_4

    .line 1
    :cond_3
    :goto_2
    invoke-static {p0, v4}, Lo1/a;->b(Landroid/content/Context;Landroid/os/Bundle;)Lo1/a;

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne p1, v6, :cond_4

    new-instance p1, Ljava/io/IOException;

    const-string v4, "MAIN_THREAD"

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    .line 3
    :cond_4
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_4
    invoke-static {v5, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->NotificationRegisterCallback(Ljava/lang/String;Z)V

    return-void
.end method
