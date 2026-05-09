.class public final synthetic Ldev/virus/variable/app/KeystrokesRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldev/virus/variable/app/Keystrokes;


# direct methods
.method public synthetic constructor <init>(Ldev/virus/variable/app/Keystrokes;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/virus/variable/app/KeystrokesRunnable;->b:Ldev/virus/variable/app/Keystrokes;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Ldev/virus/variable/app/KeystrokesRunnable;->b:Ldev/virus/variable/app/Keystrokes;

    sget-object v1, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, -0xD2D2D3

    # W key (Forward)
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvW:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bFwd:Z

    if-eqz v4, :w_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :a_start

    :w_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # A key (Left)
    :a_start
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvA:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bLeft:Z

    if-eqz v4, :a_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :s_start

    :a_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # S key (Back)
    :s_start
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvS:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bBack:Z

    if-eqz v4, :s_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :d_start

    :s_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # D key (Right)
    :d_start
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvD:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bRight:Z

    if-eqz v4, :d_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :spc_start

    :d_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # Space/Jump key
    :spc_start
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvJump:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bJump:Z

    if-eqz v4, :spc_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :sft_start

    :spc_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # Shift/Sneak key
    :sft_start
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvSneak:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bSneak:Z

    if-eqz v4, :sft_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :sft_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
