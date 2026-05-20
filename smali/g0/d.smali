.class public final Lg0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lg0/f$a;

.field public final synthetic b:Lg0/f;


# direct methods
.method public constructor <init>(Lg0/f;Lg0/f$a;)V
    .registers 3

    iput-object p1, p0, Lg0/d;->b:Lg0/f;

    iput-object p2, p0, Lg0/d;->a:Lg0/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lg0/d;->b:Lg0/f;

    iget-object v1, p0, Lg0/d;->a:Lg0/f$a;

    invoke-virtual {v0, p1, v1}, Lg0/f;->d(FLg0/f$a;)V

    iget-object v0, p0, Lg0/d;->b:Lg0/f;

    iget-object v1, p0, Lg0/d;->a:Lg0/f$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lg0/f;->a(FLg0/f$a;Z)V

    iget-object p1, p0, Lg0/d;->b:Lg0/f;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
