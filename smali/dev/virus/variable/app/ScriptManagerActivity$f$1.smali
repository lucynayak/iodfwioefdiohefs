.class public Ldev/virus/variable/app/ScriptManagerActivity$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/ScriptManagerActivity$f;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity$f;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$1;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iput-object p2, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$1;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/app/ScriptManagerActivity$f;->scriptName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget v2, Ldev/virus/variable/app/ScriptManagerActivity$f;->importType:I

    if-nez v2, :cond_0

    const/16 v2, 0x123

    goto :goto_0

    :cond_0
    const/16 v2, 0x124

    :goto_0
    iget-object v3, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$1;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iget-object v3, v3, Ldev/virus/variable/app/ScriptManagerActivity$f;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    :try_start_0
    invoke-virtual {v3, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "No file picker app found"

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
