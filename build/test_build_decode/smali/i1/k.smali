.class public final Li1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/x$d;


# instance fields
.field public final synthetic a:Li1/j;

.field public final synthetic b:Li1/n$d;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Li1/j;Landroid/os/Bundle;Li1/n$d;)V
    .locals 0

    iput-object p1, p0, Li1/k;->a:Li1/j;

    iput-object p2, p0, Li1/k;->c:Landroid/os/Bundle;

    iput-object p3, p0, Li1/k;->b:Li1/n$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le1/m;)V
    .locals 4

    iget-object v0, p0, Li1/k;->a:Li1/j;

    iget-object v0, v0, Li1/r;->b:Li1/n;

    .line 1
    iget-object v1, v0, Li1/n;->j:Li1/n$d;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "Caught exception"

    .line 3
    invoke-static {v1, v3, p1, v2}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li1/n;->c(Li1/n$e;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Li1/k;->c:Landroid/os/Bundle;

    const-string v1, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Li1/k;->a:Li1/j;

    iget-object v0, p0, Li1/k;->b:Li1/n$d;

    iget-object v1, p0, Li1/k;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Li1/j;->j(Li1/n$d;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Li1/k;->a:Li1/j;

    iget-object v0, v0, Li1/r;->b:Li1/n;

    .line 1
    iget-object v1, v0, Li1/n;->j:Li1/n$d;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "Caught exception"

    .line 3
    invoke-static {v1, v3, p1, v2}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li1/n;->c(Li1/n$e;)V

    return-void
.end method
