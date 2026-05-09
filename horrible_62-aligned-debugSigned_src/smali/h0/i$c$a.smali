.class public final Lh0/i$c$a;
.super La3/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/i$c;->b(Lm0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic I:Lh0/i$c;


# direct methods
.method public constructor <init>(Lh0/i$c;)V
    .registers 2

    iput-object p1, p0, Lh0/i$c$a;->I:Lh0/i$c;

    invoke-direct {p0}, La3/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lh0/i$c$a;->I:Lh0/i$c;

    iget-object v0, v0, Lh0/i$c;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Lh0/i$c$a;->I:Lh0/i$c;

    iget-object v0, v0, Lh0/i$c;->b:Lh0/i;

    iget-object v1, v0, Lh0/i;->o:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh0/i$c$a;->I:Lh0/i$c;

    iget-object v0, v0, Lh0/i$c;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lh0/i$c$a;->I:Lh0/i$c;

    iget-object v0, v0, Lh0/i$c;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lh0/i$c$a;->I:Lh0/i$c;

    iget-object v0, v0, Lh0/i$c;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->q:Ld0/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/n;->d(Ld0/o;)Ld0/n;

    iget-object v0, p0, Lh0/i$c$a;->I:Lh0/i$c;

    iget-object v0, v0, Lh0/i$c;->b:Lh0/i;

    iput-object v1, v0, Lh0/i;->q:Ld0/n;

    return-void
.end method
