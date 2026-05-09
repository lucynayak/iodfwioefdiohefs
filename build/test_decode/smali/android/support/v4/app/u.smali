.class public final Landroid/support/v4/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/support/v4/app/a0;

.field public final synthetic c:Lc0/a;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/support/v4/app/v$a;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Landroid/support/v4/app/g;

.field public final synthetic i:Landroid/support/v4/app/g;

.field public final synthetic j:Z

.field public final synthetic k:Ljava/util/ArrayList;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/a0;Lc0/a;Ljava/lang/Object;Landroid/support/v4/app/v$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/a0;

    iput-object p2, p0, Landroid/support/v4/app/u;->c:Lc0/a;

    iput-object p3, p0, Landroid/support/v4/app/u;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/u;->e:Landroid/support/v4/app/v$a;

    iput-object p5, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/u;->g:Landroid/view/View;

    iput-object p7, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/g;

    iput-object p8, p0, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/g;

    iput-boolean p9, p0, Landroid/support/v4/app/u;->j:Z

    iput-object p10, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/support/v4/app/u;->l:Ljava/lang/Object;

    iput-object p12, p0, Landroid/support/v4/app/u;->m:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/a0;

    iget-object v1, p0, Landroid/support/v4/app/u;->c:Lc0/a;

    iget-object v2, p0, Landroid/support/v4/app/u;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/u;->e:Landroid/support/v4/app/v$a;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/v;->e(Landroid/support/v4/app/a0;Lc0/a;Ljava/lang/Object;Landroid/support/v4/app/v$a;)Lc0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lc0/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/u;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/g;

    iget-object v2, p0, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/g;

    iget-boolean v3, p0, Landroid/support/v4/app/u;->j:Z

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/v;->c(Landroid/support/v4/app/g;Landroid/support/v4/app/g;Z)V

    iget-object v1, p0, Landroid/support/v4/app/u;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/a0;

    iget-object v3, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v4/app/a0;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroid/support/v4/app/u;->e:Landroid/support/v4/app/v$a;

    iget-object v2, p0, Landroid/support/v4/app/u;->l:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/support/v4/app/u;->j:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/v;->k(Lc0/a;Landroid/support/v4/app/v$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/a0;

    iget-object v2, p0, Landroid/support/v4/app/u;->m:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/a0;->i(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
