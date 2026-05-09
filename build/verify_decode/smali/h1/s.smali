.class public final Lh1/s;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lh1/t;


# direct methods
.method public constructor <init>(Lh1/t;)V
    .locals 0

    iput-object p1, p0, Lh1/s;->a:Lh1/t;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lh1/s;->a:Lh1/t;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, v0, Lh1/t;->f:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lh1/t;->a(Landroid/os/Bundle;)V

    iget-object p1, v0, Lh1/t;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method
