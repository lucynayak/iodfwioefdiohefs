.class public final Lt0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lq0/a;

.field public final synthetic d:Lt0/g;

.field public final synthetic e:Lt0/c;


# direct methods
.method public constructor <init>(Lt0/c;Ljava/lang/Object;Lq0/a;)V
    .registers 4

    iput-object p1, p0, Lt0/b;->e:Lt0/c;

    iput-object p2, p0, Lt0/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lt0/b;->c:Lq0/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lt0/b;->d:Lt0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const-string v0, "c"

    iget-object v1, p0, Lt0/b;->e:Lt0/c;

    .line 1
    iget-object v1, v1, Lt0/c;->b:Lt0/f;

    .line 2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iget-object v1, v1, Lt0/f;->a:Ljava/util/HashMap;

    const-string v3, "notifyListenerResult"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object v1, p0, Lt0/b;->b:Ljava/lang/Object;

    instance-of v2, v1, La1/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lt0/b;->c:Lq0/a;

    check-cast v1, La1/b;

    invoke-interface {v2, v1}, Lq0/a;->onProductDataResponse(La1/b;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, La1/f;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lt0/b;->c:Lq0/a;

    check-cast v1, La1/f;

    invoke-interface {v2, v1}, Lq0/a;->onUserDataResponse(La1/f;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, La1/d;

    if-eqz v2, :cond_3

    check-cast v1, La1/d;

    iget-object v2, p0, Lt0/b;->c:Lq0/a;

    invoke-interface {v2, v1}, Lq0/a;->onPurchaseUpdatesResponse(La1/d;)V

    iget-object v2, p0, Lt0/b;->e:Lt0/c;

    .line 5
    iget-object v2, v2, Lt0/c;->b:Lt0/f;

    const-string v4, "newCursor"

    .line 6
    iget-object v2, v2, Lt0/f;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 7
    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    throw v1

    :cond_3
    instance-of v2, v1, La1/c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lt0/b;->c:Lq0/a;

    check-cast v1, La1/c;

    invoke-interface {v2, v1}, Lq0/a;->onPurchaseResponse(La1/c;)V

    goto :goto_0

    :cond_4
    sget v1, Lt0/c;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown response type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lt0/b;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La3/r0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lt0/b;->e:Lt0/c;

    .line 8
    iget-object v1, v1, Lt0/c;->b:Lt0/f;

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    iget-object v1, v1, Lt0/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 11
    sget v2, Lt0/c;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La3/r0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lt0/b;->d:Lt0/g;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lt0/g;->b()V

    :cond_6
    return-void
.end method
