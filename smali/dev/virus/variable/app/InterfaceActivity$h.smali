.class public final Ldev/virus/variable/app/InterfaceActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/virus/variable/app/InterfaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/InterfaceActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/InterfaceActivity;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$h;->a:Ldev/virus/variable/app/InterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    add-int/lit8 p2, p2, 0x14

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$h;->a:Ldev/virus/variable/app/InterfaceActivity;

    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->W:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / 60%"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
