.class public final Landroid/support/v7/widget/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v7/widget/m;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/m;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/m$a;->b:Landroid/support/v7/widget/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Landroid/support/v7/widget/m$a;->b:Landroid/support/v7/widget/m;

    iget-object v0, v0, Landroid/support/v7/widget/m;->H:Landroid/support/v7/widget/m$g;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    check-cast v0, Landroid/support/v7/widget/d;

    .line 1
    iget-object v2, v0, Landroid/support/v7/widget/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Landroid/support/v7/widget/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Landroid/support/v7/widget/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Landroid/support/v7/widget/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v6, v0, Landroid/support/v7/widget/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_c

    iget-object v6, v0, Landroid/support/v7/widget/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Landroid/support/v7/widget/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, v0, Landroid/support/v7/widget/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Landroid/support/v7/widget/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-nez v2, :cond_2

    .line 2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Landroid/support/v7/widget/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/d$b;

    iget-object v1, v1, Landroid/support/v7/widget/d$b;->a:Landroid/support/v7/widget/m$v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v8

    .line 4
    :cond_2
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/d$b;

    iget-object v0, v0, Landroid/support/v7/widget/d$b;->a:Landroid/support/v7/widget/m$v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 5
    throw v8

    :cond_3
    :goto_0
    if-eqz v4, :cond_6

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Landroid/support/v7/widget/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, v0, Landroid/support/v7/widget/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Landroid/support/v7/widget/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-nez v2, :cond_5

    .line 7
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/d$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v9, v9, Landroid/support/v7/widget/d$a;->a:Landroid/support/v7/widget/m$v;

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Landroid/support/v7/widget/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/d$a;

    iget-object v0, v0, Landroid/support/v7/widget/d$a;->a:Landroid/support/v7/widget/m$v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 11
    throw v8

    :cond_6
    :goto_2
    if-eqz v5, :cond_d

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Landroid/support/v7/widget/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v0, Landroid/support/v7/widget/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Landroid/support/v7/widget/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_7

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Landroid/support/v7/widget/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/m$v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v8

    :cond_9
    :goto_3
    const-wide/16 v6, 0x0

    if-eqz v3, :cond_a

    .line 15
    iget-wide v2, v0, Landroid/support/v7/widget/m$g;->d:J

    goto :goto_4

    :cond_a
    move-wide v2, v6

    :goto_4
    if-eqz v4, :cond_b

    .line 16
    iget-wide v6, v0, Landroid/support/v7/widget/m$g;->e:J

    .line 17
    :cond_b
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 18
    throw v8

    .line 19
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$v;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v8

    .line 21
    :cond_d
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/m$a;->b:Landroid/support/v7/widget/m;

    iput-boolean v1, v0, Landroid/support/v7/widget/m;->h0:Z

    return-void
.end method
