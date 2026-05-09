.class public abstract Lh1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh1/t$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Lh1/s;

.field public d:Lh1/t$a;

.field public final e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lh1/t;->b:Landroid/content/Context;

    const/high16 p1, 0x10000

    iput p1, p0, Lh1/t;->g:I

    const p1, 0x10001

    iput p1, p0, Lh1/t;->f:I

    iput-object p2, p0, Lh1/t;->a:Ljava/lang/String;

    const p1, 0x133060d

    iput p1, p0, Lh1/t;->e:I

    new-instance p1, Lh1/s;

    invoke-direct {p1, p0}, Lh1/s;-><init>(Lh1/t;)V

    iput-object p1, p0, Lh1/t;->c:Lh1/s;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 9

    iget-boolean v0, p0, Lh1/t;->h:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lh1/t;->h:Z

    iget-object v1, p0, Lh1/t;->d:Lh1/t$a;

    if-eqz v1, :cond_c

    check-cast v1, Li1/j$a;

    .line 1
    iget-object v2, v1, Li1/j$a;->a:Li1/j;

    iget-object v1, v1, Li1/j$a;->b:Li1/n$d;

    .line 2
    iget-object v3, v2, Li1/j;->d:Li1/i;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3
    iput-object v4, v3, Lh1/t;->d:Lh1/t$a;

    .line 4
    :cond_1
    iput-object v4, v2, Li1/j;->d:Li1/i;

    iget-object v3, v2, Li1/r;->b:Li1/n;

    .line 5
    iget-object v3, v3, Li1/n;->b:Li1/n$b;

    const v4, 0x7f09003b

    if-eqz v3, :cond_2

    check-cast v3, Li1/o$b;

    .line 6
    iget-object v3, v3, Li1/o$b;->a:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_b

    const-string v3, "com.facebook.platform.extra.PERMISSIONS"

    .line 7
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 8
    iget-object v5, v1, Li1/n$d;->h:Ljava/util/Set;

    if-eqz v3, :cond_7

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    const-string v3, "com.facebook.platform.extra.USER_ID"

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1, p1}, Li1/j;->j(Li1/n$d;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    :goto_0
    iget-object v3, v2, Li1/r;->b:Li1/n;

    .line 11
    iget-object v3, v3, Li1/n;->b:Li1/n$b;

    if-eqz v3, :cond_6

    check-cast v3, Li1/o$b;

    .line 12
    iget-object v3, v3, Li1/o$b;->a:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const-string v0, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Li1/k;

    invoke-direct {v3, v2, p1, v1}, Li1/k;-><init>(Li1/j;Landroid/os/Bundle;Li1/n$d;)V

    invoke-static {v0, v3}, Lh1/x;->l(Ljava/lang/String;Lh1/x$d;)V

    goto :goto_2

    .line 14
    :cond_7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "new_permissions"

    invoke-virtual {v2, v3, v0}, Li1/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    const-string v0, "permissions"

    .line 15
    invoke-static {p1, v0}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Li1/n$d;->h:Ljava/util/Set;

    .line 16
    :cond_b
    iget-object p1, v2, Li1/r;->b:Li1/n;

    invoke-virtual {p1}, Li1/n;->j()V

    :cond_c
    :goto_2
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lh1/t;->i:Landroid/os/Messenger;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lh1/t;->a:Ljava/lang/String;

    const-string v0, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lh1/t;->g:I

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    iget v1, p0, Lh1/t;->e:I

    iput v1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Messenger;

    iget-object v1, p0, Lh1/t;->c:Lh1/s;

    invoke-direct {p1, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object p1, p0, Lh1/t;->i:Landroid/os/Messenger;

    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v0}, Lh1/t;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 p1, 0x0

    iput-object p1, p0, Lh1/t;->i:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lh1/t;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0, p1}, Lh1/t;->a(Landroid/os/Bundle;)V

    return-void
.end method
