.class public final Lh0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;)V
    .registers 2

    iput-object p1, p0, Lh0/l;->b:Lh0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lh0/l;->b:Lh0/i;

    iget-object v1, v0, Lh0/i;->o:Landroid/widget/PopupWindow;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lh0/l;->b:Lh0/i;

    invoke-virtual {v0}, Lh0/i;->s()V

    iget-object v0, p0, Lh0/l;->b:Lh0/i;

    .line 1
    iget-boolean v1, v0, Lh0/i;->r:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lh0/i;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lh0/l;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lh0/l;->b:Lh0/i;

    iget-object v2, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v2}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Ld0/n;->a(F)Ld0/n;

    iput-object v2, v0, Lh0/i;->q:Ld0/n;

    iget-object v0, p0, Lh0/l;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->q:Ld0/n;

    new-instance v1, Lh0/l$a;

    invoke-direct {v1, p0}, Lh0/l$a;-><init>(Lh0/l;)V

    invoke-virtual {v0, v1}, Ld0/n;->d(Ld0/o;)Ld0/n;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lh0/l;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lh0/l;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
