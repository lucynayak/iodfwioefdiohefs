.class public Ldev/virus/variable/app/InterfaceActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/InterfaceActivity;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/InterfaceActivity;I)V
    .registers 3

    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$f;->a:Ldev/virus/variable/app/InterfaceActivity;

    iput p2, p0, Ldev/virus/variable/app/InterfaceActivity$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "variable"

    iget-object v2, p0, Ldev/virus/variable/app/InterfaceActivity$f;->a:Ldev/virus/variable/app/InterfaceActivity;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "main_color_red"

    const-string v2, "main_color_green"

    const-string v3, "main_color_blue"

    iget v4, p0, Ldev/virus/variable/app/InterfaceActivity$f;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x32

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v1, 0xff

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$f;->a:Ldev/virus/variable/app/InterfaceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
