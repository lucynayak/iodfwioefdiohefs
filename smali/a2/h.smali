.class public final synthetic La2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Li2/b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Li2/c;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Lb2/d;


# direct methods
.method public synthetic constructor <init>(Li2/b;Ljava/lang/String;Landroid/widget/TextView;Li2/c;Ljava/lang/String;Landroid/widget/TextView;Lb2/d;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/h;->b:Li2/b;

    iput-object p2, p0, La2/h;->c:Ljava/lang/String;

    iput-object p3, p0, La2/h;->d:Landroid/widget/TextView;

    iput-object p4, p0, La2/h;->e:Li2/c;

    iput-object p5, p0, La2/h;->f:Ljava/lang/String;

    iput-object p6, p0, La2/h;->g:Landroid/widget/TextView;

    iput-object p7, p0, La2/h;->h:Lb2/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    iget-object p1, p0, La2/h;->b:Li2/b;

    iget-object v0, p0, La2/h;->c:Ljava/lang/String;

    iget-object v1, p0, La2/h;->d:Landroid/widget/TextView;

    iget-object v2, p0, La2/h;->e:Li2/c;

    iget-object v3, p0, La2/h;->f:Ljava/lang/String;

    iget-object v4, p0, La2/h;->g:Landroid/widget/TextView;

    iget-object v5, p0, La2/h;->h:Lb2/d;

    .line 1
    iput-object v0, p1, Li2/b;->f:Ljava/lang/String;

    iget-object v6, p1, Li2/b;->g:Li2/b$a;

    if-eqz v6, :cond_0

    invoke-interface {v6, v0}, Li2/b$a;->a(Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <font color=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
