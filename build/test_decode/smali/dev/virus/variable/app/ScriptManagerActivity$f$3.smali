.class public Ldev/virus/variable/app/ScriptManagerActivity$f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/ScriptManagerActivity$f;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity$f;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$3;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iput-object p2, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$3;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$3;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/app/ScriptManagerActivity$f;->scriptName:Ljava/lang/String;

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$3;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    iget-object v0, v0, Ldev/virus/variable/app/ScriptManagerActivity$f;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Import from URL"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v3, "https://..."

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/16 v3, 0x30

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v3, "Download"

    iget-object v4, p0, Ldev/virus/variable/app/ScriptManagerActivity$f$3;->a:Ldev/virus/variable/app/ScriptManagerActivity$f;

    new-instance v5, Ldev/virus/variable/app/ScriptManagerActivity$f$4;

    invoke-direct {v5, v4, v2}, Ldev/virus/variable/app/ScriptManagerActivity$f$4;-><init>(Ldev/virus/variable/app/ScriptManagerActivity$f;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
