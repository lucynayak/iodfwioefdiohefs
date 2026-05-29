.class public final synthetic La2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    iput p4, p0, La2/e;->b:I

    iput-object p1, p0, La2/e;->c:Ljava/lang/Object;

    iput-object p2, p0, La2/e;->d:Ljava/lang/Object;

    iput-object p3, p0, La2/e;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    iget p1, p0, La2/e;->b:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, La2/e;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, La2/e;->d:Ljava/lang/Object;

    check-cast v0, Li2/f;

    iget-object v1, p0, La2/e;->e:Ljava/lang/Object;

    check-cast v1, Lb2/d;

    .line 1
    invoke-virtual {v0}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lb2/d;->a()V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, La2/e;->c:Ljava/lang/Object;

    check-cast p1, Lc2/b;

    iget-object v0, p0, La2/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, La2/e;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lc2/b;->S()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind: <font color=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc2/b;->isBindActive()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :goto_0
    iget-object p1, p0, La2/e;->c:Ljava/lang/Object;

    check-cast p1, Lg2/b;

    iget-object v0, p0, La2/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, La2/e;->e:Ljava/lang/Object;

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lg2/b;->s:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lg2/b;->r:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v6, "<b><u>"

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    invoke-static {v2}, Lz1/b;->a(Ljava/lang/String;)Lz1/a;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lz1/a;

    iget-object v5, p1, Lg2/b;->o:Li2/e;

    invoke-virtual {v5}, Li2/e;->isActive()Z

    move-result v5

    invoke-direct {v3, v2, v5}, Lz1/a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v3}, Lg2/b;->T(Lz1/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lz1/b;->a(Ljava/lang/String;)Lz1/a;

    move-result-object v1

    invoke-virtual {v1}, Lz1/a;->a()V

    new-instance v1, Lz1/a;

    iget-object v3, p1, Lg2/b;->o:Li2/e;

    invoke-virtual {v3}, Li2/e;->isActive()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lz1/a;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lz1/b;->a(Ljava/lang/String;)Lz1/a;

    move-result-object v1

    invoke-virtual {v1}, Lz1/a;->a()V

    new-instance v1, Lz1/a;

    iget-object v2, p1, Lg2/b;->o:Li2/e;

    invoke-virtual {v2}, Li2/e;->isActive()Z

    move-result v2

    invoke-direct {v1, v3, v2}, Lz1/a;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3}, Lz1/b;->a(Ljava/lang/String;)Lz1/a;

    move-result-object v1

    invoke-virtual {v1}, Lz1/a;->a()V

    new-instance v1, Lz1/a;

    iget-object v2, p1, Lg2/b;->o:Li2/e;

    invoke-virtual {v2}, Li2/e;->isActive()Z

    move-result v2

    invoke-direct {v1, v3, v2}, Lz1/a;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v2, "</u><b>: config <font color=\'#00FF00\'>saved successfully</font>!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_4
    const-string v1, "<font color=\'#FF0000\'>You can\'t do that! Either enter a name or choose!</font>"

    goto :goto_5

    :cond_5
    const-string v1, "<font color=\'#FF0000\'>Enter config name above or choose!</font>"

    :goto_5
    invoke-static {v1}, Lj2/b;->a(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lg2/b;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v4, p1, Lg2/b;->r:Landroid/widget/TextView;

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
