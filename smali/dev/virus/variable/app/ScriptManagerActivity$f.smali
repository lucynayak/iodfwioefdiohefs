.class public Ldev/virus/variable/app/ScriptManagerActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static importType:I

.field public static scriptName:Ljava/lang/String;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/ScriptManagerActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$f;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$f;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Import"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v0, "Script"

    aput-object v0, v2, v3

    const/4 v3, 0x1

    const-string v0, "Config"

    aput-object v0, v2, v3

    new-instance v0, Ldev/virus/variable/app/ScriptManagerActivity$f$2;

    invoke-direct {v0, p0}, Ldev/virus/variable/app/ScriptManagerActivity$f$2;-><init>(Ldev/virus/variable/app/ScriptManagerActivity$f;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
