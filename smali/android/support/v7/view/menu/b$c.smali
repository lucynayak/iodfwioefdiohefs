.class public final Landroid/support/v7/view/menu/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v7/view/menu/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/b;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/b$c;->b:Landroid/support/v7/view/menu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v7/view/menu/b$c;->b:Landroid/support/v7/view/menu/b;

    iget-object v0, v0, Landroid/support/v7/view/menu/b;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/b$c;->b:Landroid/support/v7/view/menu/b;

    iget-object v0, v0, Landroid/support/v7/view/menu/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroid/support/v7/view/menu/b$c;->b:Landroid/support/v7/view/menu/b;

    iget-object v4, v4, Landroid/support/v7/view/menu/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/b$d;

    iget-object v4, v4, Landroid/support/v7/view/menu/b$d;->b:Landroid/support/v7/view/menu/e;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Landroid/support/v7/view/menu/b$c;->b:Landroid/support/v7/view/menu/b;

    iget-object v0, v0, Landroid/support/v7/view/menu/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/menu/b$c;->b:Landroid/support/v7/view/menu/b;

    iget-object v0, v0, Landroid/support/v7/view/menu/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/view/menu/b$d;

    :cond_3
    new-instance v0, Landroid/support/v7/view/menu/b$c$a;

    invoke-direct {v0, p0, v1, p2, p1}, Landroid/support/v7/view/menu/b$c$a;-><init>(Landroid/support/v7/view/menu/b$c;Landroid/support/v7/view/menu/b$d;Landroid/view/MenuItem;Landroid/support/v7/view/menu/e;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iget-object p2, p0, Landroid/support/v7/view/menu/b$c;->b:Landroid/support/v7/view/menu/b;

    iget-object p2, p2, Landroid/support/v7/view/menu/b;->h:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)V
    .registers 3

    iget-object p2, p0, Landroid/support/v7/view/menu/b$c;->b:Landroid/support/v7/view/menu/b;

    iget-object p2, p2, Landroid/support/v7/view/menu/b;->h:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
