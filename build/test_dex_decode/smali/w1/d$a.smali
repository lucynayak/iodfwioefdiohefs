.class public final Lw1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw1/d;->l(ZLjava/util/List;Lw1/d$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw1/d;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lw1/d$f;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lw1/d;ZLjava/util/List;Lw1/d$f;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lw1/d$a;->b:Lw1/d;

    iput-boolean p2, p0, Lw1/d$a;->f:Z

    iput-object p3, p0, Lw1/d$a;->e:Ljava/util/List;

    iput-object p4, p0, Lw1/d$a;->d:Lw1/d$f;

    iput-object p5, p0, Lw1/d$a;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lw1/f;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Lw1/f;-><init>(ILjava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lw1/d$a;->b:Lw1/d;

    iget-boolean v2, p0, Lw1/d$a;->f:Z

    iget-object v3, p0, Lw1/d$a;->e:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lw1/d;->k(ZLjava/util/List;)Lw1/g;

    move-result-object v1
    :try_end_0
    .catch Lw1/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1
    iget-object v0, v0, Lw1/b;->b:Lw1/f;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lw1/d$a;->b:Lw1/d;

    invoke-virtual {v2}, Lw1/d;->d()V

    iget-object v2, p0, Lw1/d$a;->b:Lw1/d;

    iget-boolean v2, v2, Lw1/d;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lw1/d$a;->d:Lw1/d$f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lw1/d$a;->c:Landroid/os/Handler;

    new-instance v3, Lw1/d$a$a;

    invoke-direct {v3, p0, v0, v1}, Lw1/d$a$a;-><init>(Lw1/d$a;Lw1/f;Lw1/g;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
