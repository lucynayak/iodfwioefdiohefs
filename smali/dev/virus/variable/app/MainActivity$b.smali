.class public final Ldev/virus/variable/app/MainActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/virus/variable/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ldev/virus/variable/app/MainActivity;

.field final b:Lm2/a;

.field final c:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/MainActivity;Lm2/a;Landroid/widget/CheckBox;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/virus/variable/app/MainActivity$b;->a:Ldev/virus/variable/app/MainActivity;

    iput-object p2, p0, Ldev/virus/variable/app/MainActivity$b;->b:Lm2/a;

    iput-object p3, p0, Ldev/virus/variable/app/MainActivity$b;->c:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string p1, "com.mojang.minecraftpe"

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    const-string p1, "jopa.triggertrash.minecraft"

    :goto_0
    iget-object p2, p0, Ldev/virus/variable/app/MainActivity$b;->c:Landroid/widget/CheckBox;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ldev/virus/variable/app/MainActivity$b;->a:Ldev/virus/variable/app/MainActivity;

    invoke-static {p2, p1}, Lm2/d;->saveChoice(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Ldev/virus/variable/app/MainActivity$b;->b:Lm2/a;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lm2/a;->bindToPackage(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Ldev/virus/variable/app/MainActivity$b;->a:Ldev/virus/variable/app/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_3
    return-void
.end method
