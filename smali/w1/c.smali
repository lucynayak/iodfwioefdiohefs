.class public final Lw1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lw1/d;

.field public final synthetic b:Lw1/d$e;


# direct methods
.method public constructor <init>(Lw1/d;Lw1/d$e;)V
    .registers 3

    iput-object p1, p0, Lw1/c;->a:Lw1/d;

    iput-object p2, p0, Lw1/c;->b:Lw1/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    iget-boolean v0, p1, Lw1/d;->d:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget v0, Lb1/a$a;->a:I

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 1
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lb1/a;

    if-eqz v1, :cond_2

    move-object p2, v0

    check-cast p2, Lb1/a;

    goto :goto_0

    :cond_2
    new-instance v0, Lb1/a$a$a;

    invoke-direct {v0, p2}, Lb1/a$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 2
    :goto_0
    iput-object p2, p1, Lw1/d;->h:Lb1/a;

    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    iget-object p1, p1, Lw1/d;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lw1/c;->a:Lw1/d;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lw1/c;->a:Lw1/d;

    iget-object p2, p2, Lw1/d;->h:Lb1/a;

    const-string v0, "inapp"

    invoke-interface {p2, p1, v0}, Lb1/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Lw1/c;->b:Lw1/d$e;

    if-eqz p1, :cond_3

    new-instance v1, Lw1/f;

    const-string v2, "Error checking for billing v3 support."

    invoke-direct {v1, p2, v2}, Lw1/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lw1/d$e;->onIabSetupFinished(Lw1/f;)V

    :cond_3
    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    iput-boolean v0, p1, Lw1/d;->l:Z

    return-void

    :cond_4
    iget-object p2, p0, Lw1/c;->a:Lw1/d;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lw1/c;->a:Lw1/d;

    iget-object p2, p2, Lw1/d;->h:Lb1/a;

    const-string v1, "subs"

    invoke-interface {p2, p1, v1}, Lb1/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    iput-boolean p2, p1, Lw1/d;->l:Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    iput-boolean p2, p1, Lw1/d;->j:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lw1/c;->b:Lw1/d$e;

    if-eqz p1, :cond_6

    new-instance p2, Lw1/f;

    const-string v1, "Setup successful."

    invoke-direct {p2, v0, v1}, Lw1/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lw1/d$e;->onIabSetupFinished(Lw1/f;)V

    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lw1/c;->b:Lw1/d$e;

    if-eqz p2, :cond_7

    new-instance v0, Lw1/f;

    const/16 v1, -0x3e9

    const-string v2, "RemoteException while setting up in-app billing."

    invoke-direct {v0, v1, v2}, Lw1/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lw1/d$e;->onIabSetupFinished(Lw1/f;)V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lw1/c;->a:Lw1/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lw1/d;->h:Lb1/a;

    return-void
.end method
