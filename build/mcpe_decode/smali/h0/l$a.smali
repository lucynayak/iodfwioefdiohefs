.class public final Lh0/l$a;
.super La3/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic I:Lh0/l;


# direct methods
.method public constructor <init>(Lh0/l;)V
    .locals 0

    iput-object p1, p0, Lh0/l$a;->I:Lh0/l;

    invoke-direct {p0}, La3/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lh0/l$a;->I:Lh0/l;

    iget-object v0, v0, Lh0/l;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lh0/l$a;->I:Lh0/l;

    iget-object v0, v0, Lh0/l;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->q:Ld0/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/n;->d(Ld0/o;)Ld0/n;

    iget-object v0, p0, Lh0/l$a;->I:Lh0/l;

    iget-object v0, v0, Lh0/l;->b:Lh0/i;

    iput-object v1, v0, Lh0/i;->q:Ld0/n;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lh0/l$a;->I:Lh0/l;

    iget-object v0, v0, Lh0/l;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
