.class public final Ldev/virus/variable/app/InterfaceActivity$e;
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

    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    int-to-double p1, p2

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    mul-double p1, p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v0

    iget-object p3, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 1
    iget-object v0, p3, Ldev/virus/variable/app/InterfaceActivity;->F:Landroid/widget/PopupWindow;

    .line 2
    invoke-virtual {p3}, Lh0/f;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, p3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double v3, p1, v3

    mul-double v1, v1, v3

    double-to-int p3, v1

    iget-object v1, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    invoke-virtual {v1}, Lh0/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, p3, v1}, Landroid/widget/PopupWindow;->update(II)V

    iget-object p3, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 3
    iget-object p3, p3, Ldev/virus/variable/app/InterfaceActivity;->z:Landroid/widget/TextView;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " / 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 1
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    .line 2
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 3
    iget v1, v0, Ldev/virus/variable/app/InterfaceActivity;->M:I

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 6
    iget v1, v0, Ldev/virus/variable/app/InterfaceActivity;->N:I

    if-ne p1, v1, :cond_1

    .line 7
    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    .line 8
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 9
    iget v1, v0, Ldev/virus/variable/app/InterfaceActivity;->O:I

    if-ne p1, v1, :cond_1

    .line 10
    iget-object p1, v0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    .line 11
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

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

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

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

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 18
    iget-object v0, v0, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 20
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const/16 v0, 0x8

    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$e;->a:Ldev/virus/variable/app/InterfaceActivity;

    .line 22
    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 23
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
