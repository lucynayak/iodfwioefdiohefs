.class public final Landroid/support/v7/widget/t$a;
.super La3/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/t;->q(IJ)Ld0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public I:Z

.field public final synthetic J:I

.field public final synthetic K:Landroid/support/v7/widget/t;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/t;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/t$a;->K:Landroid/support/v7/widget/t;

    iput p2, p0, Landroid/support/v7/widget/t$a;->J:I

    invoke-direct {p0}, La3/r0;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/t$a;->I:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/t$a;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/t$a;->K:Landroid/support/v7/widget/t;

    iget-object v0, v0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/t$a;->J:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/t$a;->I:Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/t$a;->K:Landroid/support/v7/widget/t;

    iget-object v0, v0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
