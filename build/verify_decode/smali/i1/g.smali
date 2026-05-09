.class public final Li1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/u$c;


# instance fields
.field public final synthetic a:Li1/e;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li1/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Li1/g;->a:Li1/e;

    iput-object p2, p0, Li1/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le1/y;)V
    .locals 10

    iget-object v0, p0, Li1/g;->a:Li1/e;

    .line 1
    iget-object v0, v0, Li1/e;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Le1/y;->b:Le1/o;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Li1/g;->a:Li1/e;

    .line 5
    iget-object v0, v0, Le1/o;->h:Le1/m;

    .line 6
    invoke-static {p1, v0}, Li1/e;->b0(Li1/e;Le1/m;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    iget-object p1, p1, Le1/y;->c:Lorg/json/JSONObject;

    const-string v0, "id"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lh1/x;->p(Lorg/json/JSONObject;)Lh1/x$f;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Li1/g;->a:Li1/e;

    .line 9
    iget-object v0, v0, Li1/e;->i0:Li1/h;

    .line 10
    iget-object v2, p0, Li1/g;->b:Ljava/lang/String;

    sget-object v1, Le1/r;->a:Ljava/lang/Object;

    .line 11
    invoke-static {}, Lr0/e;->k()V

    sget-object v3, Le1/r;->d:Ljava/lang/String;

    .line 12
    iget-object v5, p1, Lh1/x$f;->b:Ljava/util/List;

    .line 13
    iget-object v6, p1, Lh1/x$f;->a:Ljava/util/List;

    .line 14
    sget-object v7, Le1/e;->e:Le1/e;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p1, Le1/a;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Le1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Le1/e;Ljava/util/Date;Ljava/util/Date;)V

    iget-object v1, v0, Li1/r;->b:Li1/n;

    .line 16
    iget-object v1, v1, Li1/n;->j:Li1/n$d;

    .line 17
    invoke-static {v1, p1}, Li1/n$e;->c(Li1/n$d;Le1/a;)Li1/n$e;

    move-result-object p1

    iget-object v0, v0, Li1/r;->b:Li1/n;

    invoke-virtual {v0, p1}, Li1/n;->d(Li1/n$e;)V

    .line 18
    iget-object p1, p0, Li1/g;->a:Li1/e;

    .line 19
    iget-object p1, p1, Li1/e;->j0:Landroid/app/Dialog;

    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Li1/g;->a:Li1/e;

    new-instance v1, Le1/m;

    invoke-direct {v1, p1}, Le1/m;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Li1/e;->b0(Li1/e;Le1/m;)V

    return-void
.end method
