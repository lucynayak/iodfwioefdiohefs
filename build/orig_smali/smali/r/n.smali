.class public Lr/n;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field public b:I


# virtual methods
.method public final b(IZ)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    iput p1, p0, Lr/n;->b:I

    :cond_0
    return-void
.end method

.method public final getUserSetVisibility()I
    .locals 1

    iget v0, p0, Lr/n;->b:I

    return v0
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lr/n;->b(IZ)V

    return-void
.end method
