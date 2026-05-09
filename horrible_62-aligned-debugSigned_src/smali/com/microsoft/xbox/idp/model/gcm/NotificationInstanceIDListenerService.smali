.class public Lcom/microsoft/xbox/idp/model/gcm/NotificationInstanceIDListenerService;
.super Lo1/b;
.source "SourceFile"


# static fields
.field public static REFRESH_FLAG:Ljava/lang/String; = "isRefresh"

.field private static final TAG:Ljava/lang/String; = "MyInstanceIDLS"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lo1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/microsoft/xbox/idp/model/gcm/NotificationInstanceIDListenerService;->REFRESH_FLAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
