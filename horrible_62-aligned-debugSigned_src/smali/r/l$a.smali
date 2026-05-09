.class public final Lr/l$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr/l;


# direct methods
.method public constructor <init>(Lr/l;)V
    .registers 2

    iput-object p1, p0, Lr/l$a;->a:Lr/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lr/l$a;->a:Lr/l;

    iget-object v1, v0, Lr/l;->c:Landroid/animation/ValueAnimator;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lr/l;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
