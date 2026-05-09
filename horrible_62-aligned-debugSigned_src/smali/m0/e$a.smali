.class public final Lm0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lc0/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/j<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/e$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lm0/e$a;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm0/e$a;->c:Ljava/util/ArrayList;

    new-instance p1, Lc0/j;

    invoke-direct {p1}, Lc0/j;-><init>()V

    iput-object p1, p0, Lm0/e$a;->d:Lc0/j;

    return-void
.end method


# virtual methods
.method public final a(Lm0/a;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lm0/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lm0/e$a;->e(Lm0/a;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p0, p2}, Lm0/e$a;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final b(Lm0/a;)V
    .registers 3

    iget-object v0, p0, Lm0/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lm0/e$a;->e(Lm0/a;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final c(Lm0/a;Landroid/view/MenuItem;)Z
    .registers 6

    iget-object v0, p0, Lm0/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lm0/e$a;->e(Lm0/a;)Landroid/view/ActionMode;

    move-result-object p1

    iget-object v1, p0, Lm0/e$a;->b:Landroid/content/Context;

    check-cast p2, Ly/b;

    .line 1
    new-instance v2, Ln0/d;

    invoke-direct {v2, v1, p2}, Ln0/d;-><init>(Landroid/content/Context;Ly/b;)V

    .line 2
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final d(Lm0/a;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lm0/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lm0/e$a;->e(Lm0/a;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p0, p2}, Lm0/e$a;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final e(Lm0/a;)Landroid/view/ActionMode;
    .registers 6

    iget-object v0, p0, Lm0/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lm0/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/e;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lm0/e;->b:Lm0/a;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lm0/e;

    iget-object v1, p0, Lm0/e$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lm0/e;-><init>(Landroid/content/Context;Lm0/a;)V

    iget-object p1, p0, Lm0/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final f(Landroid/view/Menu;)Landroid/view/Menu;
    .registers 5

    iget-object v0, p0, Lm0/e$a;->d:Lc0/j;

    invoke-virtual {v0, p1}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    iget-object v0, p0, Lm0/e$a;->b:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Ly/a;

    .line 1
    new-instance v2, Ln0/f;

    invoke-direct {v2, v0, v1}, Ln0/f;-><init>(Landroid/content/Context;Ly/a;)V

    .line 2
    iget-object v0, p0, Lm0/e$a;->d:Lc0/j;

    invoke-virtual {v0, p1, v2}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_0
    return-object v0
.end method
