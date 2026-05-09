.class public final Li/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/support/design/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 0

    iput-object p1, p0, Li/b;->a:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Li/b;->a:Landroid/support/design/bottomappbar/BottomAppBar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/bottomappbar/BottomAppBar;->P:Landroid/animation/Animator;

    return-void
.end method
