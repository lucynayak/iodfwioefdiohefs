.class public final Li1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/u$c;


# instance fields
.field public final synthetic a:Li1/e;


# direct methods
.method public constructor <init>(Li1/e;)V
    .registers 2

    iput-object p1, p0, Li1/f;->a:Li1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le1/y;)V
    .registers 4

    iget-object v0, p0, Li1/f;->a:Li1/e;

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

    if-eqz v0, :cond_2

    .line 4
    iget p1, v0, Le1/o;->j:I

    const v1, 0x149620

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 5
    iget-object p1, p0, Li1/f;->a:Li1/e;

    .line 6
    iget-object v0, v0, Le1/o;->h:Le1/m;

    .line 7
    invoke-static {p1, v0}, Li1/e;->b0(Li1/e;Le1/m;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Li1/f;->a:Li1/e;

    .line 8
    invoke-virtual {p1}, Li1/e;->f0()V

    return-void

    .line 9
    :cond_1
    :pswitch_1
    iget-object p1, p0, Li1/f;->a:Li1/e;

    .line 10
    invoke-virtual {p1}, Li1/e;->d0()V

    return-void

    .line 11
    :cond_2
    :try_start_0
    iget-object p1, p1, Le1/y;->c:Lorg/json/JSONObject;

    .line 12
    iget-object v0, p0, Li1/f;->a:Li1/e;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Li1/e;->c0(Li1/e;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Li1/f;->a:Li1/e;

    new-instance v1, Le1/m;

    invoke-direct {v1, p1}, Le1/m;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Li1/e;->b0(Li1/e;Le1/m;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x149634
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
