.class public final Lh1/z$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lh1/z;


# direct methods
.method public constructor <init>(Lh1/z;)V
    .locals 0

    iput-object p1, p0, Lh1/z$b;->a:Lh1/z;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    .line 1
    iget-boolean p2, p1, Lh1/z;->e:Z

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p1, Lh1/z;->i:Landroid/app/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    .line 4
    iget-object p1, p1, Lh1/z;->b:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    .line 6
    iget-object p1, p1, Lh1/z;->k:Lh1/b0;

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    .line 8
    iget-object p1, p1, Lh1/z;->c:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p1, Lh1/z;->f:Z

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    sget-object v0, Lh1/x;->a:[Ljava/lang/String;

    .line 1
    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    .line 3
    iget-boolean p2, p1, Lh1/z;->e:Z

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p1, Lh1/z;->i:Landroid/app/ProgressDialog;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    new-instance v0, Le1/l;

    invoke-direct {v0, p3, p2, p4}, Le1/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lh1/z;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    new-instance p2, Le1/l;

    const/4 p3, 0x0

    const/16 v0, -0xb

    invoke-direct {p2, p3, v0, p3}, Le1/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lh1/z;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    sget-object p1, Lh1/x;->a:[Ljava/lang/String;

    .line 1
    sget-object p1, Le1/r;->a:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    .line 3
    iget-object p1, p1, Lh1/z;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    invoke-virtual {p1, p2}, Lh1/z;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "error_type"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v1, "error_msg"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "error_message"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "error_description"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "error_code"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    const/4 v2, -0x1

    :goto_0
    invoke-static {p2}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v2, v4, :cond_4

    iget-object p2, p0, Lh1/z$b;->a:Lh1/z;

    .line 5
    iget-object v1, p2, Lh1/z;->h:Lh1/z$c;

    if-eqz v1, :cond_8

    iget-boolean v2, p2, Lh1/z;->g:Z

    if-nez v2, :cond_8

    iput-boolean v0, p2, Lh1/z;->g:Z

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lh1/z$c;->a(Landroid/os/Bundle;Le1/m;)V

    invoke-virtual {p2}, Lh1/z;->dismiss()V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    const-string p1, "access_denied"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "OAuthAccessDeniedException"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 p1, 0x1069

    if-ne v2, p1, :cond_7

    :cond_6
    :goto_1
    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    invoke-virtual {p1}, Lh1/z;->cancel()V

    goto :goto_2

    :cond_7
    new-instance p1, Le1/o;

    invoke-direct {p1, v2, p2, v1}, Le1/o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lh1/z$b;->a:Lh1/z;

    new-instance v2, Le1/t;

    invoke-direct {v2, p1, v1}, Le1/t;-><init>(Le1/o;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lh1/z;->d(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return v0

    :cond_9
    const-string p1, "fbconnect://cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    invoke-virtual {p1}, Lh1/z;->cancel()V

    return v0

    :cond_a
    const-string p1, "touch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    return v1

    :cond_b
    :try_start_1
    iget-object p1, p0, Lh1/z$b;->a:Lh1/z;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    return v1
.end method
