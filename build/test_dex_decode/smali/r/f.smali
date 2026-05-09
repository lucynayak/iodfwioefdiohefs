.class public final Lr/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Landroid/support/design/widget/d;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/d;)V
    .locals 0

    iput-object p1, p0, Lr/f;->b:Landroid/support/design/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lr/f;->b:Landroid/support/design/widget/d;

    iget-object v1, v0, Landroid/support/design/widget/d;->o:Lr/n;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    iget v2, v0, Landroid/support/design/widget/d;->h:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    iput v1, v0, Landroid/support/design/widget/d;->h:F

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
