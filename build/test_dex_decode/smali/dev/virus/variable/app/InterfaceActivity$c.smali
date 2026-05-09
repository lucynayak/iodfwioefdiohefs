.class public final Ldev/virus/variable/app/InterfaceActivity$c;
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
    .locals 0

    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 1
    iget-object p3, p1, Ldev/virus/variable/app/InterfaceActivity;->L:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    .line 3
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 4
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "#%02X%02X%02X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 6
    iget-object p3, p1, Ldev/virus/variable/app/InterfaceActivity;->o:Landroid/view/View;

    .line 7
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->L:Landroid/graphics/drawable/GradientDrawable;

    .line 8
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 9
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->u:Landroid/widget/TextView;

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / 255"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 1
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    .line 2
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 3
    iget v1, v0, Ldev/virus/variable/app/InterfaceActivity;->M:I

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 6
    iget v1, v0, Ldev/virus/variable/app/InterfaceActivity;->N:I

    if-ne p1, v1, :cond_1

    .line 7
    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    .line 8
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 9
    iget v1, v0, Ldev/virus/variable/app/InterfaceActivity;->O:I

    if-ne p1, v1, :cond_1

    .line 10
    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    .line 11
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 12
    iget v1, v0, Ldev/virus/variable/app/InterfaceActivity;->P:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    .line 13
    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    .line 14
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 15
    iget v1, v0, Ldev/virus/variable/app/InterfaceActivity;->Q:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->B:Landroid/widget/RadioGroup;

    .line 17
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v0, p1}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 18
    iget-object v0, v0, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 20
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const/16 v0, 0x8

    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$c;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 22
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 23
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
