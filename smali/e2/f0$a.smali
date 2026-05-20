.class public final Le2/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/f0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le2/f0;


# direct methods
.method public constructor <init>(Le2/f0;)V
    .registers 2

    iput-object p1, p0, Le2/f0$a;->b:Le2/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Le2/f0$a;->b:Le2/f0;

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/f0$a;->b:Le2/f0;

    .line 1
    iget-object v0, v0, Le2/f0;->r:Li2/e;

    .line 2
    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/f0$a;->b:Le2/f0;

    .line 3
    iget v1, v0, Le2/f0;->t:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Le2/f0;->t:I

    const/16 v2, 0x4650

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Le2/f0;->t:I

    .line 5
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
