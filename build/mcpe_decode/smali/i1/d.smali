.class public final Li1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/u$c;


# instance fields
.field public final synthetic a:Li1/e;


# direct methods
.method public constructor <init>(Li1/e;)V
    .locals 0

    iput-object p1, p0, Li1/d;->a:Li1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le1/y;)V
    .locals 3

    .line 1
    iget-object v0, p1, Le1/y;->b:Le1/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Li1/d;->a:Li1/e;

    .line 3
    iget-object v0, v0, Le1/o;->h:Le1/m;

    .line 4
    invoke-static {p1, v0}, Li1/e;->b0(Li1/e;Le1/m;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p1, Le1/y;->c:Lorg/json/JSONObject;

    .line 6
    new-instance v0, Li1/e$b;

    invoke-direct {v0}, Li1/e$b;-><init>()V

    :try_start_0
    const-string v1, "user_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Li1/e$b;->e:Ljava/lang/String;

    const-string v1, "code"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v0, Li1/e$b;->d:Ljava/lang/String;

    const-string v1, "interval"

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 11
    iput-wide v1, v0, Li1/e$b;->b:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object p1, p0, Li1/d;->a:Li1/e;

    .line 13
    invoke-virtual {p1, v0}, Li1/e;->g0(Li1/e$b;)V

    return-void

    :catch_0
    move-exception p1

    .line 14
    iget-object v0, p0, Li1/d;->a:Li1/e;

    new-instance v1, Le1/m;

    invoke-direct {v1, p1}, Le1/m;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Li1/e;->b0(Li1/e;Le1/m;)V

    return-void
.end method
