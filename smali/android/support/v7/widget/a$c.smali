.class public final Landroid/support/v7/widget/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Landroid/support/v7/widget/a$e;

.field public final synthetic c:Landroid/support/v7/widget/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;Landroid/support/v7/widget/a$e;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/a$c;->c:Landroid/support/v7/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/a$c;->b:Landroid/support/v7/widget/a$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/a$c;->c:Landroid/support/v7/widget/a;

    .line 1
    iget-object v0, v0, Landroid/support/v7/view/menu/a;->d:Landroid/support/v7/view/menu/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Landroid/support/v7/view/menu/e;->e:Landroid/support/v7/view/menu/e$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/support/v7/view/menu/e$a;->a(Landroid/support/v7/view/menu/e;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a$c;->c:Landroid/support/v7/widget/a;

    .line 4
    iget-object v0, v0, Landroid/support/v7/view/menu/a;->i:Landroid/support/v7/view/menu/j;

    .line 5
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a$c;->b:Landroid/support/v7/widget/a$e;

    .line 6
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/v7/view/menu/h;->f:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/support/v7/view/menu/h;->e(IIZZ)V

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/a$c;->c:Landroid/support/v7/widget/a;

    iget-object v1, p0, Landroid/support/v7/widget/a$c;->b:Landroid/support/v7/widget/a$e;

    iput-object v1, v0, Landroid/support/v7/widget/a;->u:Landroid/support/v7/widget/a$e;

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/a$c;->c:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/a;->w:Landroid/support/v7/widget/a$c;

    return-void
.end method
