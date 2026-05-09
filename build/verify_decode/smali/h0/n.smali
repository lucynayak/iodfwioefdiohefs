.class public final Lh0/n;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lh0/i$e;


# direct methods
.method public constructor <init>(Lh0/i$e;)V
    .locals 0

    iput-object p1, p0, Lh0/n;->a:Lh0/i$e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lh0/n;->a:Lh0/i$e;

    iget-object p2, p1, Lh0/i$e;->a:Lh0/r;

    invoke-virtual {p2}, Lh0/r;->b()Z

    move-result p2

    iget-boolean v0, p1, Lh0/i$e;->b:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p1, Lh0/i$e;->b:Z

    iget-object p1, p1, Lh0/i$e;->e:Lh0/i;

    invoke-virtual {p1}, Lh0/i;->d()Z

    :cond_0
    return-void
.end method
