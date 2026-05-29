.class public final synthetic Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4

    iput p3, p0, Lb2/b;->b:I

    iput-object p1, p0, Lb2/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Lb2/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    iget p1, p0, Lb2/b;->b:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lb2/b;->c:Ljava/lang/Object;

    check-cast p1, Lb2/c;

    iget-object v0, p0, Lb2/b;->d:Ljava/lang/Object;

    check-cast v0, Lb2/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lb2/a;->dismiss()V

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lb2/c;->a()V

    .line 3
    iget-object p1, v0, Lb2/a;->b:Landroid/view/View;

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    const/16 v1, 0x50

    goto :goto_0

    :cond_1
    const/16 v7, 0x33

    if-ne v1, v7, :cond_2

    const/16 v1, 0x30

    :cond_2
    :goto_0
    iget-object v3, v0, Lb2/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sget v4, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const/4 v5, 0x0

    if-eq v4, v2, :cond_3

    const/16 v7, 0x33

    if-ne v4, v7, :cond_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const v4, 0x3e000000    # 0.125f

    :goto_1
    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lb2/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sget v6, Ldev/virus/variable/app/MinecraftActivity;->k:I

    if-eq v6, v2, :cond_5

    const/16 v7, 0x33

    if-ne v6, v7, :cond_6

    :cond_5
    const v5, 0x3c23d70a    # 0.01f

    :cond_6
    mul-float v4, v4, v5

    float-to-int v2, v4

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    new-instance v2, Lb2/a$1;

    invoke-direct {v2, v0}, Lb2/a$1;-><init>(Lb2/a;)V

    iget-object v3, v0, Lb2/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, v0, Lb2/a;->c:Landroid/widget/ImageButton;

    sget-object v0, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    .line 4
    :goto_3
    iget-object p1, p0, Lb2/b;->c:Ljava/lang/Object;

    check-cast p1, Lg2/b;

    iget-object v0, p0, Lb2/b;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    sget v1, Lg2/b;->s:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "world_loading_progress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lg2/b;->r:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_7
    move-object v3, v2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "</u><b>: config <font color=\'#FFFF00\'>loaded</font> <font color=\'#00FF00\'>successfully</font>!"

    const-string v6, "<b><u>"

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    invoke-static {v1}, Lz1/b;->a(Ljava/lang/String;)Lz1/a;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v4, Lz1/c;

    invoke-direct {v4, v1}, Lz1/c;-><init>(Lz1/a;)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, v1, Lz1/a;->a:Ljava/lang/String;

    .line 7
    invoke-static {v3, v1, v5}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_8
    const-string v1, "<font color=\'#FF0000\'>Config with this name was not found. <b><u>Check the name!</u></b></font>"

    goto :goto_6

    .line 8
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    invoke-static {v3}, Lz1/b;->a(Ljava/lang/String;)Lz1/a;

    move-result-object v1

    new-instance v4, Lz1/c;

    invoke-direct {v4, v1}, Lz1/c;-><init>(Lz1/a;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v4, p1, Lg2/b;->r:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v3}, Lz1/b;->a(Ljava/lang/String;)Lz1/a;

    move-result-object v1

    new-instance v4, Lz1/c;

    invoke-direct {v4, v1}, Lz1/c;-><init>(Lz1/a;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    const-string v1, "<font color=\'#FF0000\'>You can\'t do that! Either enter a name or choose!</font>"

    goto :goto_6

    :cond_c
    const-string v1, "<font color=\'#FF0000\'>Enter config name above or choose!</font>"

    goto :goto_6

    :cond_d
    const-string v1, "<font color=\'#FF0000\'>You can not load configs while the world is loading!</font>"

    :goto_6
    invoke-static {v1}, Lj2/b;->a(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lg2/b;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v2, p1, Lg2/b;->r:Landroid/widget/TextView;

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
