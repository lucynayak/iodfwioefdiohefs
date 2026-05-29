.class public final synthetic Lx1/e;
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

    iput p2, p0, Lx1/e;->b:I

    iput-object p1, p0, Lx1/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget v0, p0, Lx1/e;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lx1/e;->c:Ljava/lang/Object;

    check-cast v0, Ldev/virus/variable/app/InterfaceActivity;

    .line 1
    iget-object v1, v0, Ldev/virus/variable/app/InterfaceActivity;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lh0/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    sub-int/2addr v4, v6

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sub-int/2addr v5, v7

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    div-int/lit8 v6, v4, 0x2

    div-int/lit8 v7, v5, 0x2

    sget v3, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const v8, 0x800015

    if-ne v3, v8, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    const/16 v8, 0x11

    if-ne v3, v8, :cond_3

    goto :goto_2

    :cond_3
    const/16 v8, 0x33

    if-ne v3, v8, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput v6, v0, Ldev/virus/variable/app/InterfaceActivity;->J:I

    iput v7, v0, Ldev/virus/variable/app/InterfaceActivity;->K:I

    return-void

    .line 2
    :goto_3
    iget-object v0, p0, Lx1/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Lk2/c;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Lk2/a;

    invoke-direct {v1, v0}, Lk2/a;-><init>(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
