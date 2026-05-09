.class public abstract Lo0/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/a$a;
    }
.end annotation


# instance fields
.field public final b:Lo0/a$a;

.field public final c:Landroid/content/Context;

.field public d:Landroid/support/v7/widget/ActionMenuView;

.field public e:Landroid/support/v7/widget/a;

.field public f:I

.field public g:Ld0/n;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo0/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lo0/a$a;

    invoke-direct {p2, p0}, Lo0/a$a;-><init>(Lo0/a;)V

    iput-object p2, p0, Lo0/a;->b:Lo0/a$a;

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x7f030002

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p3, :cond_0

    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lo0/a;->c:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lo0/a;->c:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lo0/a;)V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic b(Lo0/a;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;II)I
    .registers 5

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    sub-int/2addr p2, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final d(Landroid/view/View;IIIZ)I
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    if-eqz p5, :cond_0

    sub-int p3, p2, v0

    add-int/2addr v1, p4

    invoke-virtual {p1, p3, p4, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int p3, p2, v0

    add-int/2addr v1, p4

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_1

    neg-int v0, v0

    :cond_1
    return v0
.end method

.method public final e(IJ)Ld0/n;
    .registers 6

    iget-object v0, p0, Lo0/a;->g:Ld0/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld0/n;->b()V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-static {p0}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Ld0/n;->a(F)Ld0/n;

    invoke-virtual {v0, p2, p3}, Ld0/n;->c(J)Ld0/n;

    iget-object p2, p0, Lo0/a;->b:Lo0/a$a;

    .line 1
    iget-object p3, p2, Lo0/a$a;->d:Lo0/a;

    iput-object v0, p3, Lo0/a;->g:Ld0/n;

    iput p1, p2, Lo0/a$a;->c:I

    .line 2
    invoke-virtual {v0, p2}, Ld0/n;->d(Ld0/o;)Ld0/n;

    return-object v0

    :cond_2
    invoke-static {p0}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld0/n;->a(F)Ld0/n;

    invoke-virtual {v1, p2, p3}, Ld0/n;->c(J)Ld0/n;

    iget-object p2, p0, Lo0/a;->b:Lo0/a$a;

    .line 3
    iget-object p3, p2, Lo0/a$a;->d:Lo0/a;

    iput-object v1, p3, Lo0/a;->g:Ld0/n;

    iput p1, p2, Lo0/a$a;->c:I

    .line 4
    invoke-virtual {v1, p2}, Ld0/n;->d(Ld0/o;)Ld0/n;

    return-object v1
.end method

.method public getAnimatedVisibility()I
    .registers 2

    iget-object v0, p0, Lo0/a;->g:Ld0/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo0/a;->b:Lo0/a$a;

    iget v0, v0, Lo0/a$a;->c:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .registers 2

    iget v0, p0, Lo0/a;->f:I

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, La3/r0;->d:[I

    const/4 v1, 0x0

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lo0/a;->setContentHeight(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lo0/a;->e:Landroid/support/v7/widget/a;

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p1, Landroid/support/v7/view/menu/a;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-gt v0, v3, :cond_6

    if-gt v1, v3, :cond_6

    const/16 v0, 0x2d0

    const/16 v3, 0x3c0

    if-le v1, v3, :cond_0

    if-gt v2, v0, :cond_6

    :cond_0
    if-le v1, v0, :cond_1

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x1f4

    if-ge v1, v0, :cond_5

    const/16 v0, 0x1e0

    const/16 v3, 0x280

    if-le v1, v3, :cond_2

    if-gt v2, v0, :cond_5

    :cond_2
    if-le v1, v0, :cond_3

    if-le v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x168

    if-lt v1, v0, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x5

    .line 3
    :goto_2
    iput v0, p1, Landroid/support/v7/widget/a;->q:I

    iget-object p1, p1, Landroid/support/v7/view/menu/a;->d:Landroid/support/v7/view/menu/e;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/e;->r(Z)V

    :cond_7
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lo0/a;->i:Z

    :cond_0
    iget-boolean v3, p0, Lo0/a;->i:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Lo0/a;->i:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lo0/a;->i:Z

    :cond_3
    return v4
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lo0/a;->h:Z

    :cond_0
    iget-boolean v2, p0, Lo0/a;->h:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Lo0/a;->h:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lo0/a;->h:Z

    :cond_3
    return v3
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Lo0/a;->f:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lo0/a;->g:Ld0/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld0/n;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
