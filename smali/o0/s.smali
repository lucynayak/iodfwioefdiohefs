.class public final Lo0/s;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field public final b:Lo0/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f0301f6

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/t;

    invoke-direct {p1, p0}, Lo0/t;-><init>(Landroid/widget/SeekBar;)V

    iput-object p1, p0, Lo0/s;->b:Lo0/t;

    invoke-virtual {p1, p2, v0}, Lo0/t;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .registers 4

    invoke-super {p0}, Landroid/widget/AbsSeekBar;->drawableStateChanged()V

    iget-object v0, p0, Lo0/s;->b:Lo0/t;

    iget-object v1, v0, Lo0/t;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lo0/t;->d:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lo0/t;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/widget/AbsSeekBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lo0/s;->b:Lo0/t;

    iget-object v0, v0, Lo0/t;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lo0/s;->b:Lo0/t;

    invoke-virtual {v0, p1}, Lo0/t;->d(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
