.class public Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;
    }
.end annotation


# instance fields
.field public disabled:Z

.field private disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

.field private disabledImageHandle:I

.field private enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

.field private enabledImageHandle:I

.field public pressed:Z

.field private pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

.field private pressedImageHandle:I

.field private pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    return-void
.end method


# virtual methods
.method public getDisabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    return v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSizeChanged(II)Z
    .registers 5

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    if-eq p1, v1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object p1

    iget p2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    const/4 p2, 0x1

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-nez p1, :cond_1

    iget p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    if-eq p1, v1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object p1

    iget p2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    const/4 p2, 0x1

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    if-eq p1, v1, :cond_2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object p1

    iget p2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImage:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressed:Z

    if-eq v0, v1, :cond_3

    invoke-interface {p1, v1}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;->onPressStateChanged(Z)V

    :cond_3
    return v3
.end method

.method public setDisabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    return-void
.end method

.method public setDisabledImageHandle(I)V
    .registers 2

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabledImageHandle:I

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->disabled:Z

    return-void
.end method

.method public setEnabledImageHandle(I)V
    .registers 2

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->enabledImageHandle:I

    return-void
.end method

.method public setPressedImageHandle(I)V
    .registers 2

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedImageHandle:I

    return-void
.end method

.method public setPressedStateRunnable(Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->pressedStateRunnable:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;

    return-void
.end method
