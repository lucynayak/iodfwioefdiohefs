.class public Lh1/z;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh1/z$b;,
        Lh1/z$c;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/widget/ImageView;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lh1/z$c;

.field public i:Landroid/app/ProgressDialog;

.field public j:Ljava/lang/String;

.field public k:Lh1/b0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    sget v0, Le1/r;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lr0/e;->k()V

    sget v0, Le1/r;->l:I

    .line 3
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "fbconnect://success"

    iput-object p1, p0, Lh1/z;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh1/z;->g:Z

    iput-boolean p1, p0, Lh1/z;->e:Z

    iput-boolean p1, p0, Lh1/z;->f:Z

    iput-object p2, p0, Lh1/z;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lh1/z$c;)V
    .registers 9

    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lr0/e;->k()V

    sget v0, Le1/r;->l:I

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "fbconnect://success"

    iput-object p1, p0, Lh1/z;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh1/z;->g:Z

    iput-boolean v0, p0, Lh1/z;->e:Z

    iput-boolean v0, p0, Lh1/z;->f:Z

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "redirect_uri"

    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "display"

    const-string v1, "touch"

    invoke-virtual {p3, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "4.11.0"

    aput-object v3, v2, v0

    const-string v3, "android-%s"

    invoke-static {p1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "sdk"

    invoke-virtual {p3, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lh1/v;->a:Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/Object;

    .line 6
    sget-object v1, Le1/r;->h:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "m.%s"

    .line 7
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2.6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dialog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lh1/x;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh1/z;->j:Ljava/lang/String;

    iput-object p4, p0, Lh1/z;->h:Lh1/z$c;

    return-void
.end method


# virtual methods
.method public final a(IFII)I
    .registers 9

    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-int p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-gt p2, p3, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    if-lt p2, p4, :cond_1

    goto :goto_0

    :cond_1
    sub-int p2, p4, p2

    int-to-double v2, p2

    sub-int/2addr p4, p3

    int-to-double p2, p4

    div-double/2addr v2, p2

    mul-double v2, v2, v0

    add-double/2addr v0, v2

    :goto_0
    int-to-double p1, p1

    mul-double v0, v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh1/x;->x(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh1/x;->x(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final c()V
    .registers 7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-ge v0, v2, :cond_1

    move v0, v2

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    const/16 v5, 0x320

    invoke-virtual {p0, v3, v2, v4, v5}, Lh1/z;->a(IFII)I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    invoke-virtual {p0, v0, v3, v5, v4}, Lh1/z;->a(IFII)I

    move-result v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lh1/z;->h:Lh1/z$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lh1/z;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Le1/n;

    invoke-direct {v0}, Le1/n;-><init>()V

    invoke-virtual {p0, v0}, Lh1/z;->d(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lh1/z;->h:Lh1/z$c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lh1/z;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh1/z;->g:Z

    check-cast p1, Le1/m;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lh1/z$c;->a(Landroid/os/Bundle;Le1/m;)V

    invoke-virtual {p0}, Lh1/z;->dismiss()V

    :cond_0
    return-void
.end method

.method public final dismiss()V
    .registers 2

    iget-object v0, p0, Lh1/z;->k:Lh1/b0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    iget-boolean v0, p0, Lh1/z;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lh1/z;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh1/z;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh1/z;->e:Z

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lh1/z;->i:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object p1, p0, Lh1/z;->i:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh1/z;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lh1/z;->i:Landroid/app/ProgressDialog;

    new-instance v2, Lh1/z$a;

    invoke-direct {v2, p0}, Lh1/z$a;-><init>(Lh1/z;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lh1/z;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lh1/z;->c()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lh1/z;->c:Landroid/widget/ImageView;

    new-instance v2, Lh1/a0;

    invoke-direct {v2, p0}, Lh1/a0;-><init>(Lh1/z;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020028

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Lh1/z;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lh1/z;->c:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lh1/z;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    .line 3
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lh1/b0;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lh1/b0;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v4, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v4, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v4, p0, Lh1/z;->k:Lh1/b0;

    new-instance v5, Lh1/z$b;

    invoke-direct {v5, p0}, Lh1/z$b;-><init>(Lh1/z;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v4, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v4, p0, Lh1/z;->k:Lh1/b0;

    iget-object v5, p0, Lh1/z;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v4, p0, Lh1/z;->k:Lh1/b0;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v2, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v1, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lh1/z;->k:Lh1/b0;

    new-instance v1, Lh1/c0;

    invoke-direct {v1}, Lh1/c0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lh1/z;->k:Lh1/b0;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 p1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lh1/z;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lh1/z;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lh1/z;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lh1/z;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh1/z;->e:Z

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lh1/z;->cancel()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Lh1/z;->c()V

    return-void
.end method
