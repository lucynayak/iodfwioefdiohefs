.class public final Landroid/support/v4/app/d;
.super Landroid/support/v4/app/b0;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/k$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/d$a;
    }
.end annotation


# instance fields
.field public final b:Landroid/support/v4/app/k;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:I

.field public o:Ljava/lang/CharSequence;

.field public p:I

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/b0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/d;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/d;->t:Z

    iput-object p1, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    return-void
.end method

.method public static t(Landroid/support/v4/app/d$a;)Z
    .registers 1

    iget-object p0, p0, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Landroid/support/v4/app/k;->C:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroid/support/v4/app/d;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    iget-object p2, p1, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p1, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/d;->o(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final j(Landroid/support/v4/app/d$a;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/support/v4/app/d;->d:I

    iput v0, p1, Landroid/support/v4/app/d$a;->c:I

    iget v0, p0, Landroid/support/v4/app/d;->e:I

    iput v0, p1, Landroid/support/v4/app/d$a;->d:I

    iget v0, p0, Landroid/support/v4/app/d;->f:I

    iput v0, p1, Landroid/support/v4/app/d$a;->e:I

    iget v0, p0, Landroid/support/v4/app/d;->g:I

    iput v0, p1, Landroid/support/v4/app/d$a;->f:I

    return-void
.end method

.method public final k(I)V
    .registers 6

    iget-boolean v0, p0, Landroid/support/v4/app/d;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/support/v4/app/k;->C:Ljava/lang/reflect/Field;

    iget-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d$a;

    iget-object v2, v2, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/support/v4/app/g;->q:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/g;->q:I

    sget-object v2, Landroid/support/v4/app/k;->C:Ljava/lang/reflect/Field;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/d;->m(Z)I

    move-result v0

    return v0
.end method

.method public final m(Z)I
    .registers 6

    iget-boolean v0, p0, Landroid/support/v4/app/d;->l:Z

    if-nez v0, :cond_4

    sget-object v0, Landroid/support/v4/app/k;->C:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/d;->l:Z

    iget-boolean v0, p0, Landroid/support/v4/app/d;->j:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, v0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, v0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2
    :cond_3
    :goto_2
    iput v1, p0, Landroid/support/v4/app/d;->m:I

    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/k;->U(Landroid/support/v4/app/k$i;Z)V

    iget p1, p0, Landroid/support/v4/app/d;->m:I

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(ILandroid/support/v4/app/g;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    iput-object v0, p2, Landroid/support/v4/app/g;->r:Landroid/support/v4/app/k;

    const-string v0, " now "

    const-string v1, ": was "

    iget-object v2, p2, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change tag of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p3, p2, Landroid/support/v4/app/g;->z:Ljava/lang/String;

    if-eqz p1, :cond_6

    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    iget p3, p2, Landroid/support/v4/app/g;->x:I

    if-eqz p3, :cond_4

    if-ne p3, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change container ID of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/support/v4/app/g;->x:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_4
    :goto_1
    iput p1, p2, Landroid/support/v4/app/g;->x:I

    iput p1, p2, Landroid/support/v4/app/g;->y:I

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t add fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    new-instance p1, Landroid/support/v4/app/d$a;

    const/4 p3, 0x1

    invoke-direct {p1, p3, p2}, Landroid/support/v4/app/d$a;-><init>(ILandroid/support/v4/app/g;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/d;->j(Landroid/support/v4/app/d$a;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    .line 1
    invoke-static {p2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/d;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->m:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/d;->l:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/d;->h:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/d;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/d;->e:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroid/support/v4/app/d;->f:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/d;->g:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/d;->n:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/d;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/d;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroid/support/v4/app/d;->p:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/d;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/d;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    iget-object v2, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d$a;

    iget v3, v2, Landroid/support/v4/app/d$a;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "cmd="

    .line 1
    invoke-static {v3}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    iget v4, v2, Landroid/support/v4/app/d$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_1
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_3
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_5
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_6
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_8
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_9
    const-string v3, "NULL"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget v3, v2, Landroid/support/v4/app/d$a;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Landroid/support/v4/app/d$a;->d:I

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/d$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/d$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v3, v2, Landroid/support/v4/app/d$a;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Landroid/support/v4/app/d$a;->f:I

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/d$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Landroid/support/v4/app/d$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p()V
    .registers 10

    iget-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/d$a;

    iget-object v5, v4, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    if-eqz v5, :cond_1

    iget v6, p0, Landroid/support/v4/app/d;->h:I

    iget v7, p0, Landroid/support/v4/app/d;->i:I

    .line 1
    iget-object v8, v5, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v8, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    iget-object v8, v5, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    iput v6, v8, Landroid/support/v4/app/g$c;->e:I

    iput v7, v8, Landroid/support/v4/app/g$c;->f:I

    .line 2
    :cond_1
    :goto_1
    iget v6, v4, Landroid/support/v4/app/d$a;->a:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    .line 3
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget v2, v4, Landroid/support/v4/app/d$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v6, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/k;->u0(Landroid/support/v4/app/g;)V

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->u0(Landroid/support/v4/app/g;)V

    goto :goto_2

    :pswitch_3
    iget v6, v4, Landroid/support/v4/app/d$a;->c:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/g;->W(I)V

    iget-object v6, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->l(Landroid/support/v4/app/g;)V

    goto :goto_2

    :pswitch_4
    iget v6, v4, Landroid/support/v4/app/d$a;->d:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/g;->W(I)V

    iget-object v6, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->q(Landroid/support/v4/app/g;)V

    goto :goto_2

    :pswitch_5
    iget v6, v4, Landroid/support/v4/app/d$a;->c:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/g;->W(I)V

    iget-object v6, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v6, v5, Landroid/support/v4/app/g;->A:Z

    if-eqz v6, :cond_2

    iput-boolean v1, v5, Landroid/support/v4/app/g;->A:Z

    iget-boolean v6, v5, Landroid/support/v4/app/g;->M:Z

    xor-int/2addr v6, v3

    iput-boolean v6, v5, Landroid/support/v4/app/g;->M:Z

    goto :goto_2

    .line 6
    :pswitch_6
    iget v6, v4, Landroid/support/v4/app/d$a;->d:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/g;->W(I)V

    iget-object v6, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v6, v5, Landroid/support/v4/app/g;->A:Z

    if-nez v6, :cond_2

    iput-boolean v3, v5, Landroid/support/v4/app/g;->A:Z

    iget-boolean v6, v5, Landroid/support/v4/app/g;->M:Z

    xor-int/2addr v6, v3

    iput-boolean v6, v5, Landroid/support/v4/app/g;->M:Z

    goto :goto_2

    .line 8
    :pswitch_7
    iget v6, v4, Landroid/support/v4/app/d$a;->d:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/g;->W(I)V

    iget-object v6, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->m0(Landroid/support/v4/app/g;)V

    goto :goto_2

    :pswitch_8
    iget v6, v4, Landroid/support/v4/app/d$a;->c:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/g;->W(I)V

    iget-object v6, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5, v1}, Landroid/support/v4/app/k;->k(Landroid/support/v4/app/g;Z)V

    :cond_2
    :goto_2
    iget-boolean v6, p0, Landroid/support/v4/app/d;->t:Z

    if-nez v6, :cond_3

    iget v4, v4, Landroid/support/v4/app/d$a;->a:I

    if-eq v4, v3, :cond_3

    if-eqz v5, :cond_3

    iget-object v3, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/k;->h0(Landroid/support/v4/app/g;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/d;->t:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    iget v1, v0, Landroid/support/v4/app/k;->l:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/k;->i0(IZ)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final q(Z)V
    .registers 11

    iget-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v2, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d$a;

    iget-object v3, v2, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget v5, p0, Landroid/support/v4/app/d;->h:I

    sget-object v6, Landroid/support/v4/app/k;->C:Ljava/lang/reflect/Field;

    const/16 v6, 0x2002

    const/16 v7, 0x1003

    const/16 v8, 0x1001

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/16 v6, 0x1001

    goto :goto_1

    :cond_1
    const/16 v6, 0x1003

    :cond_2
    :goto_1
    iget v5, p0, Landroid/support/v4/app/d;->i:I

    .line 1
    iget-object v7, v3, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/g;->b()Landroid/support/v4/app/g$c;

    iget-object v7, v3, Landroid/support/v4/app/g;->K:Landroid/support/v4/app/g$c;

    iput v6, v7, Landroid/support/v4/app/g$c;->e:I

    iput v5, v7, Landroid/support/v4/app/g$c;->f:I

    .line 2
    :cond_4
    :goto_2
    iget v5, v2, Landroid/support/v4/app/d$a;->a:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cmd: "

    .line 3
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget v1, v2, Landroid/support/v4/app/d$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v4, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->u0(Landroid/support/v4/app/g;)V

    goto :goto_3

    :pswitch_2
    iget-object v4, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/k;->u0(Landroid/support/v4/app/g;)V

    goto :goto_3

    :pswitch_3
    iget v4, v2, Landroid/support/v4/app/d$a;->f:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/g;->W(I)V

    iget-object v4, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->q(Landroid/support/v4/app/g;)V

    goto :goto_3

    :pswitch_4
    iget v4, v2, Landroid/support/v4/app/d$a;->e:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/g;->W(I)V

    iget-object v4, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->l(Landroid/support/v4/app/g;)V

    goto :goto_3

    :pswitch_5
    iget v4, v2, Landroid/support/v4/app/d$a;->f:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/g;->W(I)V

    iget-object v4, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v4, v3, Landroid/support/v4/app/g;->A:Z

    if-nez v4, :cond_5

    iput-boolean v1, v3, Landroid/support/v4/app/g;->A:Z

    iget-boolean v4, v3, Landroid/support/v4/app/g;->M:Z

    xor-int/2addr v4, v1

    iput-boolean v4, v3, Landroid/support/v4/app/g;->M:Z

    goto :goto_3

    .line 6
    :pswitch_6
    iget v5, v2, Landroid/support/v4/app/d$a;->e:I

    invoke-virtual {v3, v5}, Landroid/support/v4/app/g;->W(I)V

    iget-object v5, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v5, v3, Landroid/support/v4/app/g;->A:Z

    if-eqz v5, :cond_5

    iput-boolean v4, v3, Landroid/support/v4/app/g;->A:Z

    iget-boolean v4, v3, Landroid/support/v4/app/g;->M:Z

    xor-int/2addr v4, v1

    iput-boolean v4, v3, Landroid/support/v4/app/g;->M:Z

    goto :goto_3

    .line 8
    :pswitch_7
    iget v5, v2, Landroid/support/v4/app/d$a;->e:I

    invoke-virtual {v3, v5}, Landroid/support/v4/app/g;->W(I)V

    iget-object v5, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/app/k;->k(Landroid/support/v4/app/g;Z)V

    goto :goto_3

    :pswitch_8
    iget v4, v2, Landroid/support/v4/app/d$a;->f:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/g;->W(I)V

    iget-object v4, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->m0(Landroid/support/v4/app/g;)V

    :cond_5
    :goto_3
    iget-boolean v4, p0, Landroid/support/v4/app/d;->t:Z

    if-nez v4, :cond_6

    iget v2, v2, Landroid/support/v4/app/d$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    if-eqz v3, :cond_6

    iget-object v2, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/k;->h0(Landroid/support/v4/app/g;)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/app/d;->t:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    iget v0, p1, Landroid/support/v4/app/k;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/k;->i0(IZ)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final r(I)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/d$a;

    iget-object v3, v3, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    if-eqz v3, :cond_0

    iget v3, v3, Landroid/support/v4/app/g;->y:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final s(Ljava/util/ArrayList;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    iget-object v4, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/d$a;

    iget-object v4, v4, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    if-eqz v4, :cond_1

    iget v4, v4, Landroid/support/v4/app/g;->y:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/d;

    iget-object v6, v5, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    iget-object v8, v5, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/d$a;

    iget-object v8, v8, Landroid/support/v4/app/d$a;->b:Landroid/support/v4/app/g;

    if-eqz v8, :cond_2

    iget v8, v8, Landroid/support/v4/app/g;->y:I

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/d;->m:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/d;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
