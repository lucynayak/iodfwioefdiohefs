.class public abstract Landroid/support/v7/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/support/v7/widget/m$j;

.field public b:I

.field public final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/m$j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/l;->b:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/m$j;

    return-void
.end method

.method public static a(Landroid/support/v7/widget/m$j;I)Landroid/support/v7/widget/l;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Landroid/support/v7/widget/k;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/k;-><init>(Landroid/support/v7/widget/m$j;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p1, Landroid/support/v7/widget/j;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/j;-><init>(Landroid/support/v7/widget/m$j;)V

    return-object p1
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method
