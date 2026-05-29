.class public final Li/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/support/design/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .registers 2

    iput-object p1, p0, Li/a;->a:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Li/a;->a:Landroid/support/design/bottomappbar/BottomAppBar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/bottomappbar/BottomAppBar;->O:Landroid/animation/Animator;

    return-void
.end method
