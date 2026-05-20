.class public Landroid/support/v7/widget/m$k;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:Z


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/m$k;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/m$k;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/m$k;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/m$k;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/m$k;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/m$k;->a:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/m$k;->b:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
