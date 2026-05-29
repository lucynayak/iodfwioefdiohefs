.class public abstract Ln0/b;
.super Landroid/support/v4/app/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/i;"
    }
.end annotation


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Lc0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ly/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lc0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ly/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/support/v4/app/i;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ln0/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final h(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 4

    instance-of v0, p1, Ly/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ly/b;

    iget-object v1, p0, Ln0/b;->c:Lc0/a;

    if-nez v1, :cond_0

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    iput-object v1, p0, Ln0/b;->c:Lc0/a;

    :cond_0
    iget-object v1, p0, Ln0/b;->c:Lc0/a;

    invoke-virtual {v1, p1}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    iget-object p1, p0, Ln0/b;->b:Landroid/content/Context;

    .line 1
    new-instance v1, Ln0/d;

    invoke-direct {v1, p1, v0}, Ln0/d;-><init>(Landroid/content/Context;Ly/b;)V

    .line 2
    iget-object p1, p0, Ln0/b;->c:Lc0/a;

    invoke-virtual {p1, v0, v1}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :cond_1
    return-object p1
.end method

.method public final i(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .registers 4

    instance-of v0, p1, Ly/c;

    if-eqz v0, :cond_2

    check-cast p1, Ly/c;

    iget-object v0, p0, Ln0/b;->d:Lc0/a;

    if-nez v0, :cond_0

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    iput-object v0, p0, Ln0/b;->d:Lc0/a;

    :cond_0
    iget-object v0, p0, Ln0/b;->d:Lc0/a;

    invoke-virtual {v0, p1}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    iget-object v0, p0, Ln0/b;->b:Landroid/content/Context;

    .line 1
    new-instance v1, Ln0/h;

    invoke-direct {v1, v0, p1}, Ln0/h;-><init>(Landroid/content/Context;Ly/c;)V

    .line 2
    iget-object v0, p0, Ln0/b;->d:Lc0/a;

    invoke-virtual {v0, p1, v1}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
