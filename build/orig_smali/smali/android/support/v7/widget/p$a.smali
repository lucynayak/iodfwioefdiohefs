.class public final Landroid/support/v7/widget/p$a;
.super Ld0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Landroid/support/v7/widget/p;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/p;)V
    .locals 0

    invoke-direct {p0}, Ld0/b;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/p$a;->c:Landroid/support/v7/widget/p;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Le0/c;)V
    .locals 1

    .line 1
    sget-object v0, Ld0/b;->b:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object p2, p2, Le0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p2, p0, Landroid/support/v7/widget/p$a;->c:Landroid/support/v7/widget/p;

    invoke-virtual {p2}, Landroid/support/v7/widget/p;->d()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/p$a;->c:Landroid/support/v7/widget/p;

    iget-object p2, p2, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {p2}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/p$a;->c:Landroid/support/v7/widget/p;

    iget-object p2, p2, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {p2}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Landroid/support/v7/widget/m;->s(Landroid/view/View;)Landroid/support/v7/widget/m$v;

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ld0/b;->c(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/p$a;->c:Landroid/support/v7/widget/p;

    invoke-virtual {p1}, Landroid/support/v7/widget/p;->d()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/p$a;->c:Landroid/support/v7/widget/p;

    iget-object p1, p1, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/p$a;->c:Landroid/support/v7/widget/p;

    iget-object p1, p1, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/m;

    invoke-virtual {p1}, Landroid/support/v7/widget/m;->getLayoutManager()Landroid/support/v7/widget/m$j;

    move-result-object p1

    iget-object p1, p1, Landroid/support/v7/widget/m$j;->b:Landroid/support/v7/widget/m;

    iget-object p1, p1, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/m$p;

    :cond_1
    return p2
.end method
