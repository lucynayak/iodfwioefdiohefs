.class public final Ld0/n$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/n;->e(Landroid/view/View;Ld0/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0/o;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld0/o;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld0/n$a;->a:Ld0/o;

    iput-object p2, p0, Ld0/n$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld0/n$a;->a:Ld0/o;

    iget-object v0, p0, Ld0/n$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld0/o;->b(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ld0/n$a;->a:Ld0/o;

    invoke-interface {p1}, Ld0/o;->a()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ld0/n$a;->a:Ld0/o;

    invoke-interface {p1}, Ld0/o;->d()V

    return-void
.end method
