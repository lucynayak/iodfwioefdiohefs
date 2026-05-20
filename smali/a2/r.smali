.class public final synthetic La2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lc2/b;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lc2/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/r;->a:Landroid/widget/TextView;

    iput-object p2, p0, La2/r;->b:Lc2/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, La2/r;->b:Lc2/b;

    iget v0, v0, Lc2/b;->bindSize:I

    add-int/lit8 v0, v0, 0x19

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/16 v0, 0x32

    :cond_0
    iget-object v1, p0, La2/r;->b:Lc2/b;

    iput v0, v1, Lc2/b;->bindSize:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La2/r;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lz1/p;->refreshBindPopups()V

    return-void
.end method
