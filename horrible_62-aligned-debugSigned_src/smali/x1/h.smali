.class public final synthetic Lx1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .registers 4

    iput p3, p0, Lx1/h;->b:I

    iput-object p1, p0, Lx1/h;->d:Ljava/lang/Object;

    iput p2, p0, Lx1/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lx1/h;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lx1/h;->d:Ljava/lang/Object;

    check-cast v0, Ldev/virus/variable/app/MainActivity;

    iget v1, p0, Lx1/h;->c:I

    sget-object v2, Ldev/virus/variable/app/MainActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ldev/virus/variable/app/MainActivity;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Ldev/virus/variable/app/UpdateActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance v1, Ldev/virus/variable/app/MainActivity$a;

    invoke-direct {v1, v0}, Ldev/virus/variable/app/MainActivity$a;-><init>(Ldev/virus/variable/app/MainActivity;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    .line 2
    :goto_1
    iget-object v0, p0, Lx1/h;->d:Ljava/lang/Object;

    check-cast v0, Lj2/a;

    iget v1, p0, Lx1/h;->c:I

    sget v2, Lj2/a;->a:I

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    sget-object v0, Lj2/b;->a:Ljava/util/ArrayList;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    sput v0, Lj2/b;->b:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
