.class public final Le2/ap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Le2/ap;


# direct methods
.method public constructor <init>(Le2/ap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/ap$a;->b:Le2/ap;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9

    const/16 v0, 0xb4

    sub-int/2addr v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Le2/ap$a;->b:Le2/ap;

    iget-object v1, v1, Le2/ap;->o:Li2/d;

    iget-object v1, v1, Li2/d;->e:[D

    if-eqz v1, :cond_1

    int-to-double v2, v0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    :cond_1
    iget-object v1, p0, Le2/ap$a;->b:Le2/ap;

    iget-object v1, v1, Le2/ap;->fovLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Le2/ap$a;->b:Le2/ap;

    iget-object v0, v0, Le2/ap;->fovLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Le2/ap$a;->b:Le2/ap;

    iget-object v0, v0, Le2/ap;->fovLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
