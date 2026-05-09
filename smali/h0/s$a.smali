.class public final Lh0/s$a;
.super La3/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic I:Lh0/s;


# direct methods
.method public constructor <init>(Lh0/s;)V
    .registers 2

    iput-object p1, p0, Lh0/s$a;->I:Lh0/s;

    invoke-direct {p0}, La3/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lh0/s$a;->I:Lh0/s;

    iget-boolean v1, v0, Lh0/s;->p:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lh0/s;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lh0/s$a;->I:Lh0/s;

    iget-object v0, v0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lh0/s$a;->I:Lh0/s;

    iget-object v0, v0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Lh0/s$a;->I:Lh0/s;

    iget-object v0, v0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Lh0/s$a;->I:Lh0/s;

    const/4 v1, 0x0

    iput-object v1, v0, Lh0/s;->t:Lm0/g;

    .line 1
    iget-object v2, v0, Lh0/s;->k:Lm0/a$a;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lh0/s;->j:Lh0/s$d;

    invoke-interface {v2, v3}, Lm0/a$a;->b(Lm0/a;)V

    iput-object v1, v0, Lh0/s;->j:Lh0/s$d;

    iput-object v1, v0, Lh0/s;->k:Lm0/a$a;

    .line 2
    :cond_1
    iget-object v0, p0, Lh0/s$a;->I:Lh0/s;

    iget-object v0, v0, Lh0/s;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_2
    return-void
.end method
