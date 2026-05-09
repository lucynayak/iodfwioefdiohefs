.class public final Landroid/arch/lifecycle/f;
.super Landroid/arch/lifecycle/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/f$b;
    }
.end annotation


# instance fields
.field public a:Ld/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a<",
            "Ljava/lang/Object;",
            "Landroid/arch/lifecycle/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/arch/lifecycle/d$b;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/lifecycle/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/e;)V
    .registers 3

    invoke-direct {p0}, Landroid/arch/lifecycle/d;-><init>()V

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->a:Ld/a;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/f;->d:I

    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->e:Z

    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroid/arch/lifecycle/d$b;->c:Landroid/arch/lifecycle/d$b;

    iput-object p1, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    return-void
.end method

.method public static a(Landroid/arch/lifecycle/d$a;)Landroid/arch/lifecycle/d$b;
    .registers 4

    sget-object v0, Landroid/arch/lifecycle/f$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Landroid/arch/lifecycle/d$b;->b:Landroid/arch/lifecycle/d$b;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/d$b;->f:Landroid/arch/lifecycle/d$b;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/d$b;->e:Landroid/arch/lifecycle/d$b;

    return-object p0

    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/d$b;->d:Landroid/arch/lifecycle/d$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/arch/lifecycle/d$b;Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$b;
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static h(Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$a;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;

    return-object p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_START:Landroid/arch/lifecycle/d$a;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_CREATE:Landroid/arch/lifecycle/d$a;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/arch/lifecycle/d$a;)V
    .registers 2

    invoke-static {p1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/d$a;)Landroid/arch/lifecycle/d$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/f;->d(Landroid/arch/lifecycle/d$b;)V

    return-void
.end method

.method public final d(Landroid/arch/lifecycle/d$b;)V
    .registers 3

    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    iget-boolean p1, p0, Landroid/arch/lifecycle/f;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroid/arch/lifecycle/f;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->e:Z

    invoke-virtual {p0}, Landroid/arch/lifecycle/f;->g()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/arch/lifecycle/f;->e:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->f:Z

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Landroid/arch/lifecycle/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final f(Landroid/arch/lifecycle/d$b;)V
    .registers 3

    iget-object v0, p0, Landroid/arch/lifecycle/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g()V
    .registers 9

    iget-object v0, p0, Landroid/arch/lifecycle/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e;

    if-nez v0, :cond_0

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1
    :cond_0
    iget-object v1, p0, Landroid/arch/lifecycle/f;->a:Ld/a;

    .line 2
    iget v2, v1, Ld/b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, v1, Ld/b;->b:Ld/b$c;

    .line 4
    iget-object v2, v2, Ld/b$c;->c:Ljava/lang/Object;

    .line 5
    check-cast v2, Landroid/arch/lifecycle/f$b;

    iget-object v2, v2, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    .line 6
    iget-object v5, v1, Ld/b;->c:Ld/b$c;

    .line 7
    iget-object v5, v5, Ld/b$c;->c:Ljava/lang/Object;

    .line 8
    check-cast v5, Landroid/arch/lifecycle/f$b;

    iget-object v5, v5, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    if-ne v2, v5, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_1
    iput-boolean v3, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    .line 10
    iget-object v1, v1, Ld/b;->b:Ld/b$c;

    .line 11
    iget-object v1, v1, Ld/b$c;->c:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/arch/lifecycle/f$b;

    iget-object v1, v1, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_9

    .line 13
    iget-object v1, p0, Landroid/arch/lifecycle/f;->a:Ld/a;

    .line 14
    new-instance v2, Ld/b$b;

    iget-object v3, v1, Ld/b;->c:Ld/b$c;

    iget-object v5, v1, Ld/b;->b:Ld/b$c;

    invoke-direct {v2, v3, v5}, Ld/b$b;-><init>(Ld/b$c;Ld/b$c;)V

    iget-object v1, v1, Ld/b;->d:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    invoke-virtual {v2}, Ld/b$e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v1, :cond_9

    invoke-virtual {v2}, Ld/b$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/arch/lifecycle/f$b;

    :goto_2
    iget-object v5, v3, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    iget-object v6, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v5, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/arch/lifecycle/f;->a:Ld/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ld/a;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    .line 16
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_8

    if-eq v6, v4, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    sget-object v5, Landroid/arch/lifecycle/d$a;->ON_PAUSE:Landroid/arch/lifecycle/d$a;

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v5, Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;

    goto :goto_3

    :cond_6
    sget-object v5, Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;

    .line 17
    :goto_3
    invoke-static {v5}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/d$a;)Landroid/arch/lifecycle/d$b;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/arch/lifecycle/f;->f(Landroid/arch/lifecycle/d$b;)V

    invoke-virtual {v3, v0, v5}, Landroid/arch/lifecycle/f$b;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;)V

    invoke-virtual {p0}, Landroid/arch/lifecycle/f;->e()V

    goto :goto_2

    .line 18
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 19
    :cond_9
    iget-object v1, p0, Landroid/arch/lifecycle/f;->a:Ld/a;

    .line 20
    iget-object v1, v1, Ld/b;->c:Ld/b$c;

    .line 21
    iget-boolean v2, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    .line 22
    iget-object v1, v1, Ld/b$c;->c:Ljava/lang/Object;

    .line 23
    check-cast v1, Landroid/arch/lifecycle/f$b;

    iget-object v1, v1, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 24
    iget-object v1, p0, Landroid/arch/lifecycle/f;->a:Ld/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v2, Ld/b$d;

    invoke-direct {v2, v1}, Ld/b$d;-><init>(Ld/b;)V

    iget-object v1, v1, Ld/b;->d:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_a
    invoke-virtual {v2}, Ld/b$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ld/b$d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/arch/lifecycle/f$b;

    :goto_4
    iget-object v4, v3, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    iget-object v5, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_a

    iget-boolean v4, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Landroid/arch/lifecycle/f;->a:Ld/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ld/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v3, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    invoke-virtual {p0, v4}, Landroid/arch/lifecycle/f;->f(Landroid/arch/lifecycle/d$b;)V

    iget-object v4, v3, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/d$b;

    invoke-static {v4}, Landroid/arch/lifecycle/f;->h(Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$a;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/arch/lifecycle/f$b;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;)V

    invoke-virtual {p0}, Landroid/arch/lifecycle/f;->e()V

    goto :goto_4

    :cond_b
    return-void
.end method
