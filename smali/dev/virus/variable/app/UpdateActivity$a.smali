.class public final Ldev/virus/variable/app/UpdateActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/virus/variable/app/UpdateActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ldev/virus/variable/app/UpdateActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/UpdateActivity;J)V
    .registers 4

    iput-object p1, p0, Ldev/virus/variable/app/UpdateActivity$a;->b:Ldev/virus/variable/app/UpdateActivity;

    iput-wide p2, p0, Ldev/virus/variable/app/UpdateActivity$a;->a:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-wide v0, p0, Ldev/virus/variable/app/UpdateActivity$a;->a:J

    const-string v2, "extra_download_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iget-object p2, p0, Ldev/virus/variable/app/UpdateActivity$a;->b:Ldev/virus/variable/app/UpdateActivity;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "horrible "

    .line 1
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    iget-object v3, p0, Ldev/virus/variable/app/UpdateActivity$a;->b:Ldev/virus/variable/app/UpdateActivity;

    .line 3
    iget-object v3, v3, Ldev/virus/variable/app/UpdateActivity;->n:Ljava/lang/String;

    const-string v4, ".apk"

    .line 4
    invoke-static {v2, v3, v4}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "dev.triggertrash.horrible.provider"

    .line 6
    invoke-static {p1, v1}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$a;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/support/v4/content/FileProvider$a;->b(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 7
    iput-object v0, p2, Ldev/virus/variable/app/UpdateActivity;->o:Landroid/net/Uri;

    .line 8
    iget-object p2, p0, Ldev/virus/variable/app/UpdateActivity$a;->b:Ldev/virus/variable/app/UpdateActivity;

    const v0, 0x7f080055

    invoke-virtual {p2, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Ldev/virus/variable/app/UpdateActivity$a;->b:Ldev/virus/variable/app/UpdateActivity;

    const v0, 0x7f080058

    invoke-virtual {p2, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "Update successfully downloaded, click on \"Install\" to install"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
