.class public final Lh0/m;
.super La3/r0;
.source "SourceFile"


# instance fields
.field public final synthetic I:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;)V
    .registers 2

    iput-object p1, p0, Lh0/m;->I:Lh0/i;

    invoke-direct {p0}, La3/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lh0/m;->I:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lh0/m;->I:Lh0/i;

    iget-object v0, v0, Lh0/i;->q:Ld0/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/n;->d(Ld0/o;)Ld0/n;

    iget-object v0, p0, Lh0/m;->I:Lh0/i;

    iput-object v1, v0, Lh0/i;->q:Ld0/n;

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lh0/m;->I:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Lh0/m;->I:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lh0/m;->I:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh0/m;->I:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method
