.class public final Landroid/support/v7/widget/Toolbar$d;
.super Lh0/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh0/a$a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    const v0, 0x800013

    iput v0, p0, Lh0/a$a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh0/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar$d;)V
    .locals 1

    invoke-direct {p0, p1}, Lh0/a$a;-><init>(Lh0/a$a;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    iget p1, p1, Landroid/support/v7/widget/Toolbar$d;->b:I

    iput p1, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lh0/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lh0/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    .line 1
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public constructor <init>(Lh0/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lh0/a$a;-><init>(Lh0/a$a;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    return-void
.end method
