.class public final Lo0/r;
.super Landroid/widget/RatingBar;
.source "SourceFile"


# instance fields
.field public final b:Lo0/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f0301e4

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lo0/p;

    invoke-direct {p1, p0}, Lo0/p;-><init>(Landroid/widget/ProgressBar;)V

    iput-object p1, p0, Lo0/r;->b:Lo0/p;

    invoke-virtual {p1, p2, v0}, Lo0/p;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onMeasure(II)V
    .registers 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    iget-object p2, p0, Lo0/r;->b:Lo0/p;

    .line 1
    iget-object p2, p2, Lo0/p;->b:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    mul-int p2, p2, v0

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
