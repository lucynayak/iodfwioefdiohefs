.class public Ldev/virus/variable/app/ScriptManagerActivity$f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/ScriptManagerActivity$f;

.field public final synthetic b:Landroid/widget/EditText;

.field private success:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity$f;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iput-object p2, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->url:Ljava/lang/String;

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iget-object v0, v0, Ldev/virus/variable/app/ScriptManagerActivity$f;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    const-string v1, "Downloading..."

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public run()V
    .registers 8

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iget-object v0, v0, Ldev/virus/variable/app/ScriptManagerActivity$f;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    iget-boolean v1, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->success:Z

    if-eqz v1, :cond_0

    const-string v1, "Downloaded successfully!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_0
    const-string v1, "Download failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-static {v0}, Ly1/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->success:Z

    goto :goto_1

    :cond_2
    sget v2, Ldev/virus/variable/app/ScriptManagerActivity$f;->importType:I

    if-nez v2, :cond_3

    invoke-static {}, Lz1/p;->getScriptsPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".js"

    goto :goto_0

    :cond_3
    invoke-static {}, Lz1/p;->getConfigsPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".json"

    :goto_0
    sget-object v4, Ldev/virus/variable/app/ScriptManagerActivity$f;->scriptName:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v4, "download"

    :cond_4
    const-string v5, "/"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->success:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->success:Z

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->url:Ljava/lang/String;

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$4;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iget-object v0, v0, Ldev/virus/variable/app/ScriptManagerActivity$f;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
