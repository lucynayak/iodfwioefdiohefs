.class public Ldev/virus/variable/app/ScriptManagerActivity$f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/ScriptManagerActivity$f;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity$f;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$2;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    sput p2, Ldev/virus/variable/app/ScriptManagerActivity$f;->importType:I

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$2;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iget-object v0, v0, Ldev/virus/variable/app/ScriptManagerActivity$f;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    const-string v2, "Import Script"

    goto :goto_0

    :cond_0
    const-string v2, "Import Config"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_1

    const-string v3, "my_script"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v3, "new_script"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v3, "my_config"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v3, "new_config"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/16 v3, 0x30

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v3, "Select File"

    iget-object v4, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$2;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    new-instance v5, Ldev/virus/variable/app/ScriptManagerActivity$f$1;

    invoke-direct {v5, v4, v2}, Ldev/virus/variable/app/ScriptManagerActivity$f$1;-><init>(Ldev/virus/variable/app/ScriptManagerActivity$f;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
