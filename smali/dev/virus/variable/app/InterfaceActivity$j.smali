.class public final Ldev/virus/variable/app/InterfaceActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/virus/variable/app/InterfaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/InterfaceActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/InterfaceActivity;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$j;->a:Ldev/virus/variable/app/InterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$j;->a:Ldev/virus/variable/app/InterfaceActivity;

    const-string v0, "variable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "window_width_scale"

    const v2, 0x3e99999a    # 0.3f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "window_height_scale"

    const v2, 0x3f4e147b    # 0.805f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->V:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->X:Landroid/widget/SeekBar;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
