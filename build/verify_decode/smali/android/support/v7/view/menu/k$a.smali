.class public final Landroid/support/v7/view/menu/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v7/view/menu/k;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/k$a;->b:Landroid/support/v7/view/menu/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k$a;->b:Landroid/support/v7/view/menu/k;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/k;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/k$a;->b:Landroid/support/v7/view/menu/k;

    iget-object v1, v0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    .line 1
    iget-boolean v1, v1, Lo0/h0;->y:Z

    if-nez v1, :cond_2

    .line 2
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/k$a;->b:Landroid/support/v7/view/menu/k;

    iget-object v0, v0, Landroid/support/v7/view/menu/k;->j:Lo0/j0;

    invoke-virtual {v0}, Lo0/h0;->d()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/menu/k$a;->b:Landroid/support/v7/view/menu/k;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/k;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
