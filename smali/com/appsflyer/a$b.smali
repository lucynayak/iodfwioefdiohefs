.class public final Lcom/appsflyer/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/concurrent/ExecutorService;

.field public g:Z

.field public h:Ljava/lang/String;

.field public final synthetic i:Lcom/appsflyer/a;


# direct methods
.method public constructor <init>(Lcom/appsflyer/a;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .registers 7

    iput-object p1, p0, Lcom/appsflyer/a$b;->i:Lcom/appsflyer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appsflyer/a$b;->c:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/appsflyer/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/a$b;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsflyer/a$b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/appsflyer/a$b;->h:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appsflyer/a$b;->g:Z

    iput-object p6, p0, Lcom/appsflyer/a$b;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget-object v9, p0, Lcom/appsflyer/a$b;->i:Lcom/appsflyer/a;

    iget-object v0, p0, Lcom/appsflyer/a$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/a$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/a$b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/a$b;->h:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/appsflyer/a$b;->g:Z

    .line 1
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v10, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v10, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 3
    sget-object v0, Lc1/g;->c:Lc1/g;

    .line 4
    invoke-virtual {v0, v7}, Lc1/g;->f(Landroid/content/SharedPreferences;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendTrackingWithEvent from activity: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld1/a;->g(Ljava/lang/String;)V

    if-nez v3, :cond_1

    const/4 v0, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    move-object v0, v9

    move-object v1, v10

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/appsflyer/a;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/HashMap;

    const-string v0, "appsflyerKey"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "AppsFlyerLib.sendTrackingWithEvent"

    invoke-static {v0}, Ld1/a;->g(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_3

    sget-object v1, Lcom/appsflyer/a;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/appsflyer/a;->e:Ljava/lang/String;

    :goto_1
    new-instance v7, Lcom/appsflyer/a$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v9

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/a$c;-><init>(Lcom/appsflyer/a;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLc1/f;)V

    invoke-virtual {v7}, Lcom/appsflyer/a$c;->run()V

    goto :goto_3

    :cond_4
    :goto_2
    const-string v0, "Not sending data yet, waiting for dev key"

    invoke-static {v0}, Ld1/a;->f(Ljava/lang/String;)V

    .line 5
    :goto_3
    iget-object v0, p0, Lcom/appsflyer/a$b;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
