.class public final Lh0/i$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public a:Lh0/r;

.field public b:Z

.field public c:Lh0/n;

.field public d:Landroid/content/IntentFilter;

.field public final synthetic e:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;Lh0/r;)V
    .registers 3

    iput-object p1, p0, Lh0/i$e;->e:Lh0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh0/i$e;->a:Lh0/r;

    invoke-virtual {p2}, Lh0/r;->b()Z

    move-result p1

    iput-boolean p1, p0, Lh0/i$e;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lh0/i$e;->c:Lh0/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh0/i$e;->e:Lh0/i;

    iget-object v1, v1, Lh0/i;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh0/i$e;->c:Lh0/n;

    :cond_0
    return-void
.end method
