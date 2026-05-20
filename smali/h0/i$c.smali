.class public final Lh0/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lm0/a$a;

.field public final synthetic b:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;Lm0/a$a;)V
    .registers 3

    iput-object p1, p0, Lh0/i$c;->b:Lh0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh0/i$c;->a:Lm0/a$a;

    return-void
.end method


# virtual methods
.method public final a(Lm0/a;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lh0/i$c;->a:Lm0/a$a;

    invoke-interface {v0, p1, p2}, Lm0/a$a;->a(Lm0/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final b(Lm0/a;)V
    .registers 4

    iget-object v0, p0, Lh0/i$c;->a:Lm0/a$a;

    invoke-interface {v0, p1}, Lm0/a$a;->b(Lm0/a;)V

    iget-object p1, p0, Lh0/i$c;->b:Lh0/i;

    iget-object v0, p1, Lh0/i;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lh0/i$c;->b:Lh0/i;

    iget-object v0, v0, Lh0/i;->p:Lh0/l;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lh0/i$c;->b:Lh0/i;

    iget-object v0, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lh0/i;->s()V

    iget-object p1, p0, Lh0/i$c;->b:Lh0/i;

    iget-object v0, p1, Lh0/i;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Ld0/l;->a(Landroid/view/View;)Ld0/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/n;->a(F)Ld0/n;

    iput-object v0, p1, Lh0/i;->q:Ld0/n;

    iget-object p1, p0, Lh0/i$c;->b:Lh0/i;

    iget-object p1, p1, Lh0/i;->q:Ld0/n;

    new-instance v0, Lh0/i$c$a;

    invoke-direct {v0, p0}, Lh0/i$c$a;-><init>(Lh0/i$c;)V

    invoke-virtual {p1, v0}, Ld0/n;->d(Ld0/o;)Ld0/n;

    :cond_1
    iget-object p1, p0, Lh0/i$c;->b:Lh0/i;

    iget-object p1, p1, Lh0/i;->f:Lh0/g;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lh0/g;->f()V

    :cond_2
    iget-object p1, p0, Lh0/i$c;->b:Lh0/i;

    const/4 v0, 0x0

    iput-object v0, p1, Lh0/i;->m:Lm0/a;

    return-void
.end method

.method public final c(Lm0/a;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lh0/i$c;->a:Lm0/a$a;

    invoke-interface {v0, p1, p2}, Lm0/a$a;->c(Lm0/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final d(Lm0/a;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lh0/i$c;->a:Lm0/a$a;

    invoke-interface {v0, p1, p2}, Lm0/a$a;->d(Lm0/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
