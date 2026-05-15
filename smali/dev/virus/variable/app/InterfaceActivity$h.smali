.class public Ldev/virus/variable/app/InterfaceActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/InterfaceActivity;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/InterfaceActivity;I)V
    .registers 3

    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$h;->a:Ldev/virus/variable/app/InterfaceActivity;

    iput p2, p0, Ldev/virus/variable/app/InterfaceActivity$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10

    # b == 0  => Width:  pct = p2 + 20, max = 60, target = a.W
    # b == 1  => Height: pct = p2 + 50, max = 100, target = a.Y
    iget v0, p0, Ldev/virus/variable/app/InterfaceActivity$h;->b:I

    iget-object v1, p0, Ldev/virus/variable/app/InterfaceActivity$h;->a:Ldev/virus/variable/app/InterfaceActivity;

    if-nez v0, :cond_height

    add-int/lit8 v2, p2, 0x14

    const/16 v3, 0x3c

    iget-object v4, v1, Ldev/virus/variable/app/InterfaceActivity;->W:Landroid/widget/TextView;

    goto :goto_format

    :cond_height
    add-int/lit8 v2, p2, 0x32

    const/16 v3, 0x64

    iget-object v4, v1, Ldev/virus/variable/app/InterfaceActivity;->Y:Landroid/widget/TextView;

    :goto_format
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
