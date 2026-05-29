.class public final synthetic Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lx1/a;->b:I

    iput-object p1, p0, Lx1/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget p1, p0, Lx1/a;->b:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lx1/a;->c:Ljava/lang/Object;

    check-cast p1, Ldev/virus/variable/app/InterfaceActivity;

    .line 1
    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->C:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->M:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->N:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->O:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->P:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->Q:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->B:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lx1/a;->c:Ljava/lang/Object;

    check-cast p1, Ldev/virus/variable/app/InterfaceActivity;

    .line 3
    iget-object v2, p1, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p1, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    const/16 v3, 0x98

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p1, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->M:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->N:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->O:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->P:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Ldev/virus/variable/app/InterfaceActivity;->Q:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p1, Ldev/virus/variable/app/InterfaceActivity;->B:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    .line 4
    :goto_0
    iget-object p1, p0, Lx1/a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v0, p1, Lorg/mozilla/javascript/RhinoException;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/RhinoException;

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->details()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->getScriptStackTrace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\nStack:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lk2/a;->b:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lk2/a;->b:Landroid/content/Context;

    const-string v0, "Copied!"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
