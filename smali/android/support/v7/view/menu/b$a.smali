.class public final Landroid/support/v7/view/menu/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v7/view/menu/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/b;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/b$a;->b:Landroid/support/v7/view/menu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/b$a;->b:Landroid/support/v7/view/menu/b;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/b$a;->b:Landroid/support/v7/view/menu/b;

    iget-object v0, v0, Landroid/support/v7/view/menu/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/b$a;->b:Landroid/support/v7/view/menu/b;

    iget-object v0, v0, Landroid/support/v7/view/menu/b;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/b$d;

    iget-object v0, v0, Landroid/support/v7/view/menu/b$d;->a:Lo0/j0;

    .line 1
    iget-boolean v0, v0, Lo0/h0;->y:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/b$a;->b:Landroid/support/v7/view/menu/b;

    iget-object v0, v0, Landroid/support/v7/view/menu/b;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/b$a;->b:Landroid/support/v7/view/menu/b;

    iget-object v0, v0, Landroid/support/v7/view/menu/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/b$d;

    iget-object v1, v1, Landroid/support/v7/view/menu/b$d;->a:Lo0/j0;

    invoke-virtual {v1}, Lo0/h0;->d()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/view/menu/b$a;->b:Landroid/support/v7/view/menu/b;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/b;->dismiss()V

    :cond_2
    return-void
.end method
