.class public final synthetic La2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Li2/e;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Li2/c;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Li2/e;Landroid/widget/TextView;Li2/c;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/i;->b:Li2/e;

    iput-object p2, p0, La2/i;->c:Landroid/widget/TextView;

    iput-object p3, p0, La2/i;->d:Li2/c;

    iput-object p4, p0, La2/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object p1, p0, La2/i;->b:Li2/e;

    iget-object v0, p0, La2/i;->c:Landroid/widget/TextView;

    iget-object v1, p0, La2/i;->d:Li2/c;

    iget-object v2, p0, La2/i;->e:Ljava/lang/String;

    .line 1
    iget-boolean v3, p1, Li2/e;->e:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, p1, Li2/e;->e:Z

    iget-object v4, p1, Li2/e;->f:Li2/e$a;

    if-eqz v4, :cond_0

    invoke-interface {v4, v3}, Li2/e$a;->a(Z)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Li2/e;->isActive()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_1

    const-string v1, "\u25cf "

    goto :goto_0

    :cond_1
    const-string v1, "\u25cb "

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La2/i;->d:Li2/c;

    invoke-virtual {v1}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    const v3, -0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
