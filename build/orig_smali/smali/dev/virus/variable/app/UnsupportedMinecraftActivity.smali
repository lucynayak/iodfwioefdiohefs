.class public Ldev/virus/variable/app/UnsupportedMinecraftActivity;
.super Lh0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/virus/variable/app/UnsupportedMinecraftActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh0/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 1
    :cond_1
    new-instance p1, Ldev/virus/variable/app/UnsupportedMinecraftActivity$a;

    invoke-direct {p1, p0}, Ldev/virus/variable/app/UnsupportedMinecraftActivity$a;-><init>(Ldev/virus/variable/app/UnsupportedMinecraftActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08004e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lh0/f;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0021

    invoke-virtual {p0, p1}, Lh0/f;->setContentView(I)V

    const p1, 0x7f08004d

    invoke-virtual {p0, p1}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "This launcher only supports version 1.1.5. You have version "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    .line 3
    iget-object v1, v1, Lm2/b;->a:Lm2/a;

    .line 4
    invoke-virtual {v1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " installed. You must install Minecraft: Pocket Edition 1.1.5 before you can use this launcher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ldev/virus/variable/app/UnsupportedMinecraftActivity$a;

    invoke-direct {p1, p0}, Ldev/virus/variable/app/UnsupportedMinecraftActivity$a;-><init>(Ldev/virus/variable/app/UnsupportedMinecraftActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_1

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
