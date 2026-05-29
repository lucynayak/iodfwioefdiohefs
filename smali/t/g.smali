.class public final Lt/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lc0/a;

.field public final synthetic b:Lt/f;


# direct methods
.method public constructor <init>(Lt/f;Lc0/a;)V
    .registers 3

    iput-object p1, p0, Lt/g;->b:Lt/f;

    iput-object p2, p0, Lt/g;->a:Lc0/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lt/g;->a:Lc0/a;

    invoke-virtual {v0, p1}, Lc0/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lt/g;->b:Lt/f;

    iget-object v0, v0, Lt/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lt/g;->b:Lt/f;

    iget-object v0, v0, Lt/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
