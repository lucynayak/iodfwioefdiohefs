.class public Lo1/b;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static ACTION:Ljava/lang/String; = "action"

.field private static zzaLH:Ljava/lang/String; = "gcm.googleapis.com/refresh"

.field private static zzaMY:Ljava/lang/String; = "google.com/iid"

.field private static zzaMZ:Ljava/lang/String; = "CMD"


# instance fields
.field public zzaMW:Lo1/c;

.field public zzaMX:Landroid/content/BroadcastReceiver;

.field public zzaNa:I

.field public zzaNb:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lo1/c;

    new-instance v1, Lo1/b$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lo1/b$a;-><init>(Lo1/b;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lo1/c;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lo1/b;->zzaMW:Lo1/c;

    new-instance v0, Lo1/b$b;

    invoke-direct {v0, p0}, Lo1/b$b;-><init>(Lo1/b;)V

    iput-object v0, p0, Lo1/b;->zzaMX:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lo1/d;)V
    .registers 2

    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method private zza(Landroid/os/Message;I)V
    .registers 4

    invoke-static {p0}, Ld1/a;->P(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    sget v0, Ld1/a;->l:I

    if-eq p2, v0, :cond_0

    sget v0, Ld1/a;->k:I

    if-eq p2, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Message from unexpected caller "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mine="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Ld1/a;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " appid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Ld1/a;->l:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InstanceID"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lo1/b;->zzp(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic zza(Lo1/b;Landroid/os/Message;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lo1/b;->zza(Landroid/os/Message;I)V

    return-void
.end method

.method public static zzaM(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.iid.InstanceID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lo1/b;->zzaMZ:Ljava/lang/String;

    const-string v2, "SYNC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.iid.InstanceID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo1/b;->zzaMW:Lo1/c;

    invoke-virtual {p1}, Lo1/c;->a()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lo1/b;->zzaMX:Landroid/content/BroadcastReceiver;

    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lo1/b;->zzaMX:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-virtual {p0, p3}, Lo1/b;->zzhl(I)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo1/b;->stop()V

    return p2

    :cond_0
    :try_start_0
    const-string p3, "com.google.android.gms.iid.InstanceID"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lo1/b;->zzp(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lo1/b;->stop()V

    const-string p3, "from"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lu/c;->a(Landroid/content/Intent;)Z

    :cond_2
    return p2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lo1/b;->stop()V

    throw p1
.end method

.method public onTokenRefresh()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lo1/b;->zzaNa:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo1/b;->zzaNa:I

    if-nez v0, :cond_0

    iget v0, p0, Lo1/b;->zzaNb:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    :cond_0
    const-string v0, "InstanceID"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InstanceID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo1/b;->zzaNa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo1/b;->zzaNb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzal(Z)V
    .registers 2

    invoke-virtual {p0}, Lo1/b;->onTokenRefresh()V

    return-void
.end method

.method public zzhl(I)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lo1/b;->zzaNa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo1/b;->zzaNa:I

    iget v0, p0, Lo1/b;->zzaNb:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lo1/b;->zzaNb:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzp(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0, v0}, Lo1/a;->b(Landroid/content/Context;Landroid/os/Bundle;)Lo1/a;

    throw v0

    .line 2
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subtype"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lo1/a;->b(Landroid/content/Context;Landroid/os/Bundle;)Lo1/a;

    throw v0
.end method
