.class public final synthetic Lx1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lx1/g;->b:I

    iput-object p1, p0, Lx1/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lx1/g;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lx1/g;->c:Ljava/lang/Object;

    check-cast v0, Le2/d0;

    .line 1
    iget-object v0, v0, Le2/d0;->q:Landroid/widget/TextView;

    const-string v1, "<font color=\'#00FF00\'>0</font>ms"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lx1/g;->c:Ljava/lang/Object;

    check-cast v0, Ldev/virus/variable/app/MinecraftActivity;

    sget-object v1, Ldev/virus/variable/app/MinecraftActivity;->b:La2/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :goto_0
    :try_start_0
    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->onFastTick()V

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Lx1/g;->c:Ljava/lang/Object;

    check-cast v0, Ldev/virus/variable/app/MainActivity;

    sget-object v1, Ldev/virus/variable/app/MainActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldev/virus/variable/app/MainActivity$a;

    invoke-direct {v1, v0}, Ldev/virus/variable/app/MainActivity$a;-><init>(Ldev/virus/variable/app/MainActivity;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :goto_1
    iget-object v0, p0, Lx1/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    .line 7
    invoke-static {v0}, Lk2/c;->f(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
