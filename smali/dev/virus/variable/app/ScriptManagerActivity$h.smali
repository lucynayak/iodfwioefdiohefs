.class public Ldev/virus/variable/app/ScriptManagerActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/ScriptManagerActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$h;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$h;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/virus/variable/app/ScriptManagerActivity$h;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    nop

    :cond_0
    :goto_0
    return-void
.end method
