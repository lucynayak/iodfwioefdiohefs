.class public Landroid/support/v4/app/h;
.super Landroid/support/v4/app/j0;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/n;
.implements Landroid/support/v4/app/b$a;
.implements Landroid/support/v4/app/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/h$b;,
        Landroid/support/v4/app/h$c;
    }
.end annotation


# instance fields
.field public final c:Landroid/support/v4/app/h$a;

.field public final d:Landroid/support/v4/app/i;

.field public e:Landroid/arch/lifecycle/m;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Lc0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/support/v4/app/j0;-><init>()V

    new-instance v0, Landroid/support/v4/app/h$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/h$a;-><init>(Landroid/support/v4/app/h;)V

    iput-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    new-instance v0, Landroid/support/v4/app/h$b;

    invoke-direct {v0, p0}, Landroid/support/v4/app/h$b;-><init>(Landroid/support/v4/app/h;)V

    .line 1
    new-instance v1, Landroid/support/v4/app/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v4/app/i;-><init>(Ljava/lang/Object;La/c;)V

    .line 2
    iput-object v1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->h:Z

    return-void
.end method

.method public static i(I)V
    .registers 2

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Landroid/support/v4/app/b0;)Z
    .registers 7

    sget-object v0, Landroid/arch/lifecycle/d$b;->d:Landroid/arch/lifecycle/d$b;

    check-cast p0, Landroid/support/v4/app/k;

    .line 1
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/g;

    if-nez v3, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object v4, v3, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    .line 4
    iget-object v4, v4, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/d$b;

    .line 5
    sget-object v5, Landroid/arch/lifecycle/d$b;->e:Landroid/arch/lifecycle/d$b;

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    .line 7
    iget-object v2, v3, Landroid/support/v4/app/g;->P:Landroid/arch/lifecycle/f;

    .line 8
    invoke-virtual {v2, v0}, Landroid/arch/lifecycle/f;->d(Landroid/arch/lifecycle/d$b;)V

    const/4 v2, 0x1

    .line 9
    :cond_4
    iget-object v3, v3, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v3, :cond_1

    .line 10
    invoke-static {v3}, Landroid/support/v4/app/h;->k(Landroid/support/v4/app/b0;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_1

    :cond_5
    return v2

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Landroid/arch/lifecycle/d;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/j0;->b:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method public final d()Landroid/arch/lifecycle/m;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/h$c;->a:Landroid/arch/lifecycle/m;

    iput-object v0, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    if-nez v0, :cond_1

    new-instance v0, Landroid/arch/lifecycle/m;

    invoke-direct {v0}, Landroid/arch/lifecycle/m;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/h;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/h;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/h;->h:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/app/b0;->d(Landroid/arch/lifecycle/e;)Landroid/support/v4/app/b0;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/b0;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->f()Landroid/support/v4/app/b0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/b0;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v4/app/h;->i(I)V

    return-void
.end method

.method public final h(Landroid/support/v4/app/g;)I
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {v0}, Lc0/k;->h()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    iget v2, p0, Landroid/support/v4/app/h;->j:I

    .line 1
    iget-boolean v3, v0, Lc0/k;->b:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lc0/k;->c()V

    :cond_0
    iget-object v3, v0, Lc0/k;->c:[I

    iget v0, v0, Lc0/k;->e:I

    invoke-static {v3, v0, v2}, La3/r0;->h([III)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    iget v0, p0, Landroid/support/v4/app/h;->j:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/h;->j:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v4/app/h;->j:I

    iget-object v2, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    iget-object p1, p1, Landroid/support/v4/app/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Lc0/k;->f(ILjava/lang/Object;)V

    iget p1, p0, Landroid/support/v4/app/h;->j:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Landroid/support/v4/app/h;->j:I

    return v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j()Landroid/support/v4/app/b0;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->f()Landroid/support/v4/app/b0;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->R()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->g()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, v0, v2}, Lc0/k;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {v2, v0}, Lc0/k;->g(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 3
    iget-object v2, v2, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/j;

    iget-object v2, v2, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/k;->a0(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/app/g;->t(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_2
    sget v0, Landroid/support/v4/app/b;->b:I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->f()Landroid/support/v4/app/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/b0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/b0;->i()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->g()V

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->s(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v1, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    .line 2
    iget-object v2, v1, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    if-nez v2, :cond_6

    iput-object v0, v1, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/j;

    iput-object v0, v1, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/b0;

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    .line 3
    invoke-super {p0, p1}, Landroid/support/v4/app/j0;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h$c;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/h$c;->a:Landroid/arch/lifecycle/m;

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    if-nez v3, :cond_0

    iput-object v2, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/support/v4/app/h$c;->b:Landroid/support/v4/app/o;

    .line 4
    :cond_1
    iget-object v1, v4, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/k;->o0(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V

    const-string v0, "android:support:next_request_index"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/h;->j:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android:support:request_fragment_who"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, v0

    array-length v3, p1

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lc0/k;

    array-length v3, v0

    invoke-direct {v1, v3}, Lc0/k;-><init>(I)V

    iput-object v1, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    aget v4, v0, v1

    aget-object v5, p1, v1

    invoke-virtual {v3, v4, v5}, Lc0/k;->f(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    if-nez p1, :cond_5

    new-instance p1, Lc0/k;

    invoke-direct {p1}, Lc0/k;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    iput v2, p0, Landroid/support/v4/app/h;->j:I

    :cond_5
    iget-object p1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 6
    iget-object p1, p1, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/app/j;

    iget-object p1, p1, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {p1}, Landroid/support/v4/app/k;->u()V

    return-void

    .line 7
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 5

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/k;->v(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 2
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .line 4
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 5
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/app/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    invoke-virtual {v0}, Landroid/arch/lifecycle/m;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->w()V

    return-void
.end method

.method public final onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->x()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 1
    iget-object p1, p1, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/app/j;

    iget-object p1, p1, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/k;->t(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2
    :cond_2
    iget-object p1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 3
    iget-object p1, p1, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/app/j;

    iget-object p1, p1, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/k;->N(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMultiWindowModeChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->y(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {p1}, Landroid/support/v4/app/i;->g()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/k;->O(Landroid/view/Menu;)V

    .line 2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/h;->l()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->T(I)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->P(Z)V

    return-void
.end method

.method public onPostResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/h;->l()V

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->d()Z

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 3
    iget-object p2, p2, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/app/j;

    iget-object p2, p2, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {p2, p3}, Landroid/support/v4/app/k;->Q(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    iget-object p2, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {p2}, Landroid/support/v4/app/i;->g()V

    shr-int/lit8 p1, p1, 0x10

    const p2, 0xffff

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p2, p1, p3}, Lc0/k;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {p3, p1}, Lc0/k;->g(I)V

    const-string p1, "FragmentActivity"

    if-nez p2, :cond_0

    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p3, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 3
    iget-object p3, p3, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast p3, Landroid/support/v4/app/j;

    iget-object p3, p3, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {p3, p2}, Landroid/support/v4/app/k;->a0(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object p3

    if-nez p3, :cond_1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity result no fragment exists for who: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->d()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    .line 2
    iget-object v1, v0, Landroid/support/v4/app/k;->A:Landroid/support/v4/app/o;

    invoke-static {v1}, Landroid/support/v4/app/k;->v0(Landroid/support/v4/app/o;)V

    iget-object v0, v0, Landroid/support/v4/app/k;->A:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v4/app/h$c;

    invoke-direct {v1}, Landroid/support/v4/app/h$c;-><init>()V

    iget-object v2, p0, Landroid/support/v4/app/h;->e:Landroid/arch/lifecycle/m;

    iput-object v2, v1, Landroid/support/v4/app/h$c;->a:Landroid/arch/lifecycle/m;

    iput-object v0, v1, Landroid/support/v4/app/h$c;->b:Landroid/support/v4/app/o;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/j0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/h;->j()Landroid/support/v4/app/b0;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/h;->k(Landroid/support/v4/app/b0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 3
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->p0()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android:support:fragments"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {v0}, Lc0/k;->h()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/h;->j:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {v0}, Lc0/k;->h()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {v1}, Lc0/k;->h()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {v3}, Lc0/k;->h()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {v3, v2}, Lc0/k;->e(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v3, p0, Landroid/support/v4/app/h;->k:Lc0/k;

    invoke-virtual {v3, v2}, Lc0/k;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "android:support:request_indicies"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->h:Z

    iget-boolean v0, p0, Landroid/support/v4/app/h;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->r()V

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->g()V

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->d()Z

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 3
    iget-object v0, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->S()V

    return-void
.end method

.method public final onStateNotSaved()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->g()V

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->h:Z

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/h;->j()Landroid/support/v4/app/b0;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/h;->k(Landroid/support/v4/app/b0;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    .line 3
    iget-object v1, v1, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    .line 4
    iput-boolean v0, v1, Landroid/support/v4/app/k;->r:Z

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/support/v4/app/k;->T(I)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/h;->i:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/h;->i(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/h;->i:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/h;->i(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/h;->i(I)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 9

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/h;->i(I)V

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
