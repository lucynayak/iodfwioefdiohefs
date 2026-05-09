.class public final Lw1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lw1/d;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lw1/d$c;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lw1/d$b;


# direct methods
.method public constructor <init>(Lw1/d;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lw1/e;->b:Lw1/d;

    iput-object p2, p0, Lw1/e;->e:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lw1/e;->f:Lw1/d$b;

    iput-object p3, p0, Lw1/e;->c:Landroid/os/Handler;

    iput-object p1, p0, Lw1/e;->d:Lw1/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lw1/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/h;

    :try_start_0
    iget-object v3, p0, Lw1/e;->b:Lw1/d;

    invoke-virtual {v3, v2}, Lw1/d;->c(Lw1/h;)V

    new-instance v3, Lw1/f;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object v2, v2, Lw1/h;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lw1/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lw1/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    iget-object v2, v2, Lw1/b;->b:Lw1/f;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw1/e;->b:Lw1/d;

    invoke-virtual {v1}, Lw1/d;->d()V

    iget-object v1, p0, Lw1/e;->b:Lw1/d;

    iget-boolean v1, v1, Lw1/d;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lw1/e;->f:Lw1/d$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw1/e;->c:Landroid/os/Handler;

    new-instance v2, Lw1/e$a;

    invoke-direct {v2, p0, v0}, Lw1/e$a;-><init>(Lw1/e;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lw1/e;->b:Lw1/d;

    iget-boolean v1, v1, Lw1/d;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lw1/e;->d:Lw1/d$c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw1/e;->c:Landroid/os/Handler;

    new-instance v2, Lw1/e$b;

    invoke-direct {v2, p0, v0}, Lw1/e$b;-><init>(Lw1/e;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
