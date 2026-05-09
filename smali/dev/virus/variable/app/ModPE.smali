.class public final Ldev/virus/variable/app/ModPE;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ModPE"

    const/4 v1, 0x0

    const-string v2, "Misc"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Ldev/virus/variable/app/ModPE;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final D()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldev/virus/variable/app/ModPE;->o:Landroid/content/Context;

    const-class v2, Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Ldev/virus/variable/app/ModPE;->o:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
