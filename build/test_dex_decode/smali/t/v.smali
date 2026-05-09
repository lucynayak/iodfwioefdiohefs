.class public final Lt/v;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lt/p;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lt/p;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lt/v;->a:Lt/p;

    iput-object p2, p0, Lt/v;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lt/v;->a:Lt/p;

    iget-object v0, p0, Lt/v;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lt/p;->a(Landroid/view/View;)V

    return-void
.end method
