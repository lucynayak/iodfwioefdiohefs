.class public final Lk1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/u$c;


# instance fields
.field public final synthetic a:Lk1/c;


# direct methods
.method public constructor <init>(Lk1/c;)V
    .registers 2

    iput-object p1, p0, Lk1/b;->a:Lk1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le1/y;)V
    .registers 6

    .line 1
    iget-object v0, p1, Le1/y;->b:Le1/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lk1/b;->a:Lk1/c;

    .line 3
    invoke-virtual {p1, v0}, Lk1/c;->b0(Le1/o;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Le1/y;->c:Lorg/json/JSONObject;

    .line 5
    new-instance v0, Lk1/c$b;

    invoke-direct {v0}, Lk1/c$b;-><init>()V

    :try_start_0
    const-string v1, "user_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iput-object v1, v0, Lk1/c$b;->c:Ljava/lang/String;

    const-string v1, "expires_in"

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 8
    iput-wide v1, v0, Lk1/c$b;->b:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object p1, p0, Lk1/b;->a:Lk1/c;

    .line 10
    invoke-virtual {p1, v0}, Lk1/c;->c0(Lk1/c$b;)V

    return-void

    .line 11
    :catch_0
    iget-object p1, p0, Lk1/b;->a:Lk1/c;

    new-instance v0, Le1/o;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "Malformed server response"

    invoke-direct {v0, v1, v2, v3}, Le1/o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0}, Lk1/c;->b0(Le1/o;)V

    return-void
.end method
