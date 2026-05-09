.class final Le2/cb$LayoutRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final params:Landroid/view/ViewGroup$LayoutParams;

.field private final view:Landroid/view/View;

.field private final wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/cb$LayoutRunnable;->view:Landroid/view/View;

    iput-object p2, p0, Le2/cb$LayoutRunnable;->params:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Le2/cb$LayoutRunnable;->wm:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le2/cb$LayoutRunnable;->view:Landroid/view/View;

    iget-object v1, p0, Le2/cb$LayoutRunnable;->params:Landroid/view/ViewGroup$LayoutParams;

    iget-object p0, p0, Le2/cb$LayoutRunnable;->wm:Landroid/view/WindowManager;

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
