.class public Ldev/virus/variable/app/ScriptManagerActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/ScriptManagerActivity;

.field public final synthetic b:Lk2/d;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity;Lk2/d;)V
    .locals 0

    iput-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$e;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    iput-object p2, p0, Ldev/virus/variable/app/ScriptManagerActivity$e;->b:Lk2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldev/virus/variable/app/ScriptManagerActivity$e;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    const-class v2, Ldev/virus/variable/app/ScriptEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Ldev/virus/variable/app/ScriptManagerActivity$e;->b:Lk2/d;

    iget-object v1, v1, Lk2/d;->c:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ldev/virus/variable/app/ScriptManagerActivity$e;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    const/16 v2, 0x3e7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
