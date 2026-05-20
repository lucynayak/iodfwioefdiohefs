.class public final Lh1/n;
.super Lh1/z;
.source "SourceFile"


# instance fields
.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lh1/n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lh1/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lh1/z;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Lh1/n;)V
    .registers 1

    invoke-super {p0}, Lh1/z;->cancel()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh1/x;->x(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bridge_args"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.facebook.platform.protocol.BRIDGE_ARGS"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lh1/e;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1
    :catch_0
    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    :cond_0
    :goto_0
    const-string v0, "method_results"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "{}"

    :cond_1
    :try_start_1
    const-string v0, "com.facebook.platform.protocol.RESULT_ARGS"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lh1/e;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3
    :catch_1
    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    :cond_2
    :goto_1
    const-string v0, "version"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {}, Lh1/r;->h()I

    move-result v0

    const-string v1, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public final cancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Lh1/z;->k:Lh1/b0;

    .line 2
    iget-boolean v1, p0, Lh1/z;->f:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lh1/z;->g:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lh1/n;->l:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh1/n;->l:Z

    const-string v1, "javascript:(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lh1/n$a;

    invoke-direct {v1, p0}, Lh1/n$a;-><init>(Lh1/n;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    invoke-super {p0}, Lh1/z;->cancel()V

    :cond_2
    return-void
.end method
