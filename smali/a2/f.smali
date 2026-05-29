.class public final synthetic La2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static sOpenView:Landroid/view/View;


# instance fields
.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Lc2/b;

.field public final synthetic d:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Lc2/b;Landroid/widget/LinearLayout;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/f;->b:Landroid/widget/LinearLayout;

    iput-object p2, p0, La2/f;->c:Lc2/b;

    iput-object p3, p0, La2/f;->d:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, La2/f;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, La2/f;->c:Lc2/b;

    iget-object v2, p0, La2/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x78

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, La2/f$a;

    invoke-direct {v4, v0}, La2/f$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lc2/b;->e:Z

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lc2/b;->e:Z

    sput-object v0, La2/f;->sOpenView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ScrollView;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/widget/ScrollView;

    new-instance v4, La2/f$b;

    invoke-direct {v4, v3, v0}, La2/f$b;-><init>(Landroid/widget/ScrollView;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
