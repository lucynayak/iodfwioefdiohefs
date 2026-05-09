.class public final synthetic Lx1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/InterfaceActivity;


# direct methods
.method public synthetic constructor <init>(Ldev/virus/variable/app/InterfaceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/d;->a:Ldev/virus/variable/app/InterfaceActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v0, p0, Lx1/d;->a:Ldev/virus/variable/app/InterfaceActivity;

    sget v1, Ldev/virus/variable/app/InterfaceActivity;->S:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, v0, Ldev/virus/variable/app/InterfaceActivity;->M:I

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, v0, Ldev/virus/variable/app/InterfaceActivity;->N:I

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, v0, Ldev/virus/variable/app/InterfaceActivity;->O:I

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Ldev/virus/variable/app/InterfaceActivity;->P:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, v0, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Ldev/virus/variable/app/InterfaceActivity;->Q:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
