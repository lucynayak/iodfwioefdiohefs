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

    const v2, -0xd2d2d3

    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvW:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bFwd:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvA:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bLeft:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvS:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bBack:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvD:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bRight:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_3
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvJump:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bJump:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4
    iget-object v3, v0, Ldev/virus/variable/app/Keystrokes;->tvSneak:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/app/Keystrokes;->bSneak:Z

    if-eqz v4, :cond_5

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
