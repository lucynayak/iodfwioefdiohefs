.class public final synthetic Lx1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lx1/b;->b:I

    iput-object p1, p0, Lx1/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget v0, p0, Lx1/b;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lx1/b;->c:Ljava/lang/Object;

    check-cast v0, Lg2/b;

    .line 1
    iget-object v2, v0, Lg2/b;->r:Landroid/widget/TextView;

    const v3, 0x7f05004a

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    iget-object v5, v0, Lg2/b;->p:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lg2/b;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v1, v0, Lg2/b;->r:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lg2/b;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lg2/b;->r:Landroid/widget/TextView;

    iget-object v0, v0, Lg2/b;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lx1/b;->c:Ljava/lang/Object;

    check-cast p1, Le2/q;

    .line 3
    iget-object v0, p1, Le2/q;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v2, p1, Le2/q;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p1, Le2/q;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Lc2/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notification: Module: FriendList: "

    .line 6
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    iget-object v3, p1, Le2/q;->r:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " removed from friends!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object v1, p1, Le2/q;->r:Landroid/widget/TextView;

    :cond_2
    return-void

    .line 8
    :pswitch_2
    iget-object p1, p0, Lx1/b;->c:Ljava/lang/Object;

    check-cast p1, Ldev/virus/variable/app/InterfaceActivity;

    .line 9
    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p1, Ldev/virus/variable/app/InterfaceActivity;->M:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p1, Ldev/virus/variable/app/InterfaceActivity;->N:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p1, Ldev/virus/variable/app/InterfaceActivity;->O:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Ldev/virus/variable/app/InterfaceActivity;->P:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Ldev/virus/variable/app/InterfaceActivity;->Q:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p1, Ldev/virus/variable/app/InterfaceActivity;->B:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    .line 10
    :goto_2
    iget-object p1, p0, Lx1/b;->c:Ljava/lang/Object;

    check-cast p1, Lk2/a;

    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
