.class public Ldev/virus/variable/app/InterfaceActivity;
.super Lh0/f;
.source "SourceFile"


# static fields
.field public static final synthetic S:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/RadioGroup;

.field public C:Landroid/widget/RadioButton;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/PopupWindow;

.field public G:Z

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Landroid/graphics/drawable/GradientDrawable;

.field public M:I

.field public N:I

.field public O:I

.field public P:F

.field public Q:F

.field public R:Ljava/lang/String;

.field public T:I

.field public U:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/SeekBar;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/SeekBar;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/SeekBar;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/SeekBar;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/SeekBar;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lh0/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f080182

    if-ne p1, v0, :cond_5

    iget v0, p0, Ldev/virus/variable/app/InterfaceActivity;->T:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    rem-int/2addr v0, v1

    iput v0, p0, Ldev/virus/variable/app/InterfaceActivity;->T:I

    iget-object v1, p0, Ldev/virus/variable/app/InterfaceActivity;->U:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v2, "Rounded \u25b8"

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v2, "Circle \u25b8"

    goto :goto_0

    :cond_1
    const-string v2, "Square \u25b8"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :pswitch_1
    const/4 p1, 0x0

    const-string v0, "variable"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const-string v1, "main_color_red"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const-string v1, "main_color_green"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const-string v1, "main_color_blue"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    const-string v1, "bind_text_size"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v4

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    const-string v1, "bind_size"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->B:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x800015

    goto :goto_2

    :cond_2
    const-string v1, "Center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x11

    goto :goto_2

    :cond_3
    const-string v1, "Top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x33

    goto :goto_2

    :cond_4
    const v0, 0x800013

    :goto_2
    const-string v1, "menu_position"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Ldev/virus/variable/app/InterfaceActivity;->T:I

    const-string v1, "bind_shape"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08001f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Lh0/f;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    invoke-virtual {p0, p1}, Lh0/f;->setContentView(I)V

    sget-object p1, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->L:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->o:Landroid/view/View;

    iget-object v1, p0, Ldev/virus/variable/app/InterfaceActivity;->L:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->U:Landroid/widget/TextView;

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->bindShape:I

    iput v1, p0, Ldev/virus/variable/app/InterfaceActivity;->T:I

    if-nez v1, :cond_0

    const-string v2, "Rounded \u25b8"

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v2, "Circle \u25b8"

    goto :goto_0

    :cond_1
    const-string v2, "Square \u25b8"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->B:Landroid/widget/RadioGroup;

    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->C:Landroid/widget/RadioButton;

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->D:Landroid/widget/TextView;

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Ldev/virus/variable/app/InterfaceActivity;->M:I

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->q:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Ldev/virus/variable/app/InterfaceActivity;->M:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / 255"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->p:Landroid/widget/SeekBar;

    new-instance v2, Ldev/virus/variable/app/InterfaceActivity$a;

    invoke-direct {v2, p0}, Ldev/virus/variable/app/InterfaceActivity$a;-><init>(Ldev/virus/variable/app/InterfaceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Ldev/virus/variable/app/InterfaceActivity;->N:I

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->s:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Ldev/virus/variable/app/InterfaceActivity;->N:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->r:Landroid/widget/SeekBar;

    new-instance v2, Ldev/virus/variable/app/InterfaceActivity$b;

    invoke-direct {v2, p0}, Ldev/virus/variable/app/InterfaceActivity$b;-><init>(Ldev/virus/variable/app/InterfaceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iput p1, p0, Ldev/virus/variable/app/InterfaceActivity;->O:I

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->u:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ldev/virus/variable/app/InterfaceActivity;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->t:Landroid/widget/SeekBar;

    new-instance v0, Ldev/virus/variable/app/InterfaceActivity$c;

    invoke-direct {v0, p0}, Ldev/virus/variable/app/InterfaceActivity$c;-><init>(Ldev/virus/variable/app/InterfaceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->v:Landroid/widget/TextView;

    new-instance v0, Lx1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lx1/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    const/16 v0, 0x96

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    sget v0, Ldev/virus/variable/app/MinecraftActivity;->i:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ldev/virus/variable/app/InterfaceActivity;->P:F

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->x:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldev/virus/variable/app/MinecraftActivity;->i:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / 15"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->w:Landroid/widget/SeekBar;

    new-instance v0, Ldev/virus/variable/app/InterfaceActivity$d;

    invoke-direct {v0, p0}, Ldev/virus/variable/app/InterfaceActivity$d;-><init>(Ldev/virus/variable/app/InterfaceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    sget v0, Ldev/virus/variable/app/MinecraftActivity;->j:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v0, v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    div-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ldev/virus/variable/app/InterfaceActivity;->Q:F

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->z:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldev/virus/variable/app/MinecraftActivity;->j:F

    float-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " / 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->y:Landroid/widget/SeekBar;

    new-instance v0, Ldev/virus/variable/app/InterfaceActivity$e;

    invoke-direct {v0, p0}, Ldev/virus/variable/app/InterfaceActivity$e;-><init>(Ldev/virus/variable/app/InterfaceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->A:Landroid/widget/TextView;

    new-instance v0, Lx1/b;

    invoke-direct {v0, p0, v1}, Lx1/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Ldev/virus/variable/app/MinecraftActivity;->k:I

    const-string v0, "Center"

    const-string v2, "Right"

    const v3, 0x800015

    if-ne p1, v3, :cond_2

    move-object p1, v2

    goto :goto_1

    :cond_2
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    move-object p1, v0

    goto :goto_1

    :cond_3
    const/16 v3, 0x33

    if-ne p1, v3, :cond_4

    const-string p1, "Top"

    goto :goto_1

    :cond_4
    const-string p1, "Left"

    :goto_1
    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    iget-object v3, p0, Ldev/virus/variable/app/InterfaceActivity;->B:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->R:Ljava/lang/String;

    const-string v0, "Left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    goto :goto_2

    :cond_7
    const/4 p1, 0x3

    :goto_2
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->B:Landroid/widget/RadioGroup;

    new-instance v0, Lx1/d;

    invoke-direct {v0, p0}, Lx1/d;-><init>(Ldev/virus/variable/app/InterfaceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->D:Landroid/widget/TextView;

    new-instance v0, Lx1/a;

    invoke-direct {v0, p0, v4}, Lx1/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lh0/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v0, 0x3ccccccd    # 0.025f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b0034

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->E:Landroid/widget/TextView;

    const-string v3, "Module\nName"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->E:Landroid/widget/TextView;

    sget v3, Ldev/virus/variable/app/MinecraftActivity;->i:F

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->E:Landroid/widget/TextView;

    new-instance v2, Lx1/c;

    invoke-direct {v2, p0, p1}, Lx1/c;-><init>(Ldev/virus/variable/app/InterfaceActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lh0/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v2, Ldev/virus/variable/app/MinecraftActivity;->j:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lh0/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sget v3, Ldev/virus/variable/app/MinecraftActivity;->j:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-direct {p1, v0, v2}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->F:Landroid/widget/PopupWindow;

    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity;->E:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Ldev/virus/variable/app/InterfaceActivity;->F:Landroid/widget/PopupWindow;

    const v0, 0x7f0e01f6

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lx1/e;

    invoke-direct {v0, p0, v1}, Lx1/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
