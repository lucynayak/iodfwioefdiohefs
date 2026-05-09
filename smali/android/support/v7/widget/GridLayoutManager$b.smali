.class public final Landroid/support/v7/widget/GridLayoutManager$b;
.super Landroid/support/v7/widget/m$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/m$k;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/m$k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/m$k;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/m$k;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->d:I

    return-void
.end method
