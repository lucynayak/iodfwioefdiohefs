.class public final synthetic La2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lc2/b;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lc2/b;Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/k;->a:Lc2/b;

    iput-object p2, p0, La2/k;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, La2/k;->a:Lc2/b;

    invoke-virtual {v0}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz1/p;->getBindGroup(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xb

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lz1/p;->setBindGroup(Ljava/lang/String;I)V

    iget-object v0, p0, La2/k;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p0, "Group: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lz1/p;->refreshBindPopups()V

    return-void
.end method
