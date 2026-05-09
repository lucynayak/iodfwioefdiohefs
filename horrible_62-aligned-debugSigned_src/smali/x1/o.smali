.class public final synthetic Lx1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldev/virus/variable/app/UpdateActivity;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/widget/ProgressBar;

.field public final synthetic e:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Ldev/virus/variable/app/UpdateActivity;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/webkit/WebView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/o;->b:Ldev/virus/variable/app/UpdateActivity;

    iput-object p2, p0, Lx1/o;->c:Landroid/widget/TextView;

    iput-object p3, p0, Lx1/o;->d:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lx1/o;->e:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lx1/o;->b:Ldev/virus/variable/app/UpdateActivity;

    iget-object v1, p0, Lx1/o;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lx1/o;->d:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lx1/o;->e:Landroid/webkit/WebView;

    sget v4, Ldev/virus/variable/app/UpdateActivity;->p:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ""

    .line 1
    invoke-static {v4}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly1/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-static {v4, v5}, Ldev/virus/variable/app/UpdateActivity;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "?"

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Ldev/virus/variable/app/UpdateActivity;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, v0, Ldev/virus/variable/app/UpdateActivity;->n:Ljava/lang/String;

    const-string v5, "New update available! ("

    .line 2
    invoke-static {v5}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3
    iget-object v6, v0, Ldev/virus/variable/app/UpdateActivity;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lx1/n;

    invoke-direct {v1, v0, v2, v3, v4}, Lx1/n;-><init>(Ldev/virus/variable/app/UpdateActivity;Landroid/widget/ProgressBar;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
