.class public final Landroid/support/v7/widget/p;
.super Ld0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/p$a;
    }
.end annotation


# instance fields
.field public final c:Landroid/support/v7/widget/m;

.field public final d:Landroid/support/v7/widget/p$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/m;)V
    .locals 0

    invoke-direct {p0}, Ld0/b;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    new-instance p1, Landroid/support/v7/widget/p$a;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/p$a;-><init>(Landroid/support/v7/widget/p;)V

    iput-object p1, p0, Landroid/support/v7/widget/p;->d:Landroid/support/v7/widget/p$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ld0/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/widget/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->d()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/m$j;->C(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;Le0/c;)V
    .locals 5

    .line 1
    sget-object v0, Ld0/b;->b:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Le0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    const-class p1, Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p2, Le0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->d()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p1

    .line 7
    iget-object v0, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    iget-object v1, v0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    iget-object v2, v0, Landroid/support/v7/widget/m;->b0:Landroid/support/v7/widget/m$s;

    const/4 v3, -0x1

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Le0/c;->a(I)V

    invoke-virtual {p2}, Le0/c;->b()V

    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Le0/c;->a(I)V

    invoke-virtual {p2}, Le0/c;->b()V

    :cond_3
    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/m$j;->z(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;)I

    move-result v0

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/m$j;->q(Landroid/support/v7/widget/m$p;Landroid/support/v7/widget/m$s;)I

    move-result p1

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p1, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    .line 10
    iget-object p2, p2, Le0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_4
    return-void
.end method

.method public final c(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Ld0/b;->c(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->d()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p1

    .line 1
    iget-object v1, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    iget-object v2, v1, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    const/16 v2, 0x1000

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    .line 2
    invoke-virtual {v1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget v1, p1, Landroid/support/v7/widget/m$j;->m:I

    .line 4
    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->w()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->t()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {v2, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5
    iget p2, p1, Landroid/support/v7/widget/m$j;->l:I

    .line 6
    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->u()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->v()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    goto :goto_3

    :cond_3
    invoke-virtual {v1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget p2, p1, Landroid/support/v7/widget/m$j;->m:I

    .line 8
    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->w()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->t()I

    move-result v1

    sub-int/2addr p2, v1

    move v1, p2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object p2, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {p2, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 9
    iget p2, p1, Landroid/support/v7/widget/m$j;->l:I

    .line 10
    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->u()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/support/v7/widget/m$j;->v()I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p2, 0x0

    :goto_3
    if-nez v1, :cond_6

    if-nez p2, :cond_6

    const/4 p3, 0x0

    goto :goto_4

    :cond_6
    iget-object p1, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/m;->F(II)V

    :goto_4
    return p3

    :cond_7
    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->u()Z

    move-result v0

    return v0
.end method
