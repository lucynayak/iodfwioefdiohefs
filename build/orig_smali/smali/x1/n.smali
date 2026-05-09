.class public final synthetic Lx1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldev/virus/variable/app/UpdateActivity;

.field public final synthetic c:Landroid/widget/ProgressBar;

.field public final synthetic d:Landroid/webkit/WebView;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/virus/variable/app/UpdateActivity;Landroid/widget/ProgressBar;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/n;->b:Ldev/virus/variable/app/UpdateActivity;

    iput-object p2, p0, Lx1/n;->c:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lx1/n;->d:Landroid/webkit/WebView;

    iput-object p4, p0, Lx1/n;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lx1/n;->b:Ldev/virus/variable/app/UpdateActivity;

    iget-object v1, p0, Lx1/n;->c:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lx1/n;->d:Landroid/webkit/WebView;

    iget-object v3, p0, Lx1/n;->e:Ljava/lang/String;

    sget v4, Ldev/virus/variable/app/UpdateActivity;->p:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    .line 1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "text/html"

    const-string v5, "utf-8"

    invoke-virtual {v2, v3, v1, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f080056

    invoke-virtual {v0, v2}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "horrible "

    .line 2
    invoke-static {v4}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3
    iget-object v5, v0, Ldev/virus/variable/app/UpdateActivity;->n:Ljava/lang/String;

    const-string v6, ".apk"

    .line 4
    invoke-static {v4, v5, v6}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080058

    goto :goto_0

    :cond_0
    const v2, 0x7f080055

    :goto_0
    invoke-virtual {v0, v2}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
