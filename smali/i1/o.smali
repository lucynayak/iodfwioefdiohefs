.class public final Li1/o;
.super Landroid/support/v4/app/g;
.source "SourceFile"


# instance fields
.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Li1/n;

.field public Y:Li1/n$d;

.field public Z:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final B()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final C()V
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->E:Z

    .line 2
    iget-object v1, p0, Li1/o;->V:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "LoginFragment"

    const-string v1, "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-boolean v1, p0, Li1/o;->Z:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v1

    instance-of v2, v1, Le1/h;

    if-eqz v2, :cond_1

    iget-object v2, p0, Li1/o;->X:Li1/n;

    invoke-virtual {v2}, Li1/n;->f()Li1/r;

    move-result-object v2

    instance-of v2, v2, Li1/a;

    if-eqz v2, :cond_1

    check-cast v1, Le1/h;

    const/4 v2, 0x0

    new-instance v3, Le1/n;

    invoke-direct {v3}, Le1/n;-><init>()V

    invoke-virtual {v1, v2, v3}, Le1/h;->m(Landroid/os/Bundle;Le1/m;)V

    :cond_1
    iput-boolean v0, p0, Li1/o;->Z:Z

    iget-object v1, p0, Li1/o;->X:Li1/n;

    iget-object v2, p0, Li1/o;->Y:Li1/n$d;

    .line 3
    iget-object v3, v1, Li1/n;->j:Li1/n$d;

    if-eqz v3, :cond_2

    iget v4, v1, Li1/n;->d:I

    if-ltz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez v3, :cond_8

    .line 4
    invoke-static {}, Le1/a;->b()Le1/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Li1/n;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    iput-object v2, v1, Li1/n;->j:Li1/n$d;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, v2, Li1/n$d;->g:Li1/m;

    .line 7
    iget-boolean v3, v2, Li1/m;->c:Z

    if-eqz v3, :cond_5

    .line 8
    new-instance v3, Li1/j;

    invoke-direct {v3, v1}, Li1/j;-><init>(Li1/n;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Li1/l;

    invoke-direct {v3, v1}, Li1/l;-><init>(Li1/n;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_5
    iget-boolean v3, v2, Li1/m;->d:Z

    if-eqz v3, :cond_6

    .line 10
    new-instance v3, Li1/a;

    invoke-direct {v3, v1}, Li1/a;-><init>(Li1/n;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Li1/v;

    invoke-direct {v3, v1}, Li1/v;-><init>(Li1/n;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_6
    iget-boolean v2, v2, Li1/m;->b:Z

    if-eqz v2, :cond_7

    .line 12
    new-instance v2, Li1/h;

    invoke-direct {v2, v1}, Li1/h;-><init>(Li1/n;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Li1/r;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    iput-object v2, v1, Li1/n;->f:[Li1/r;

    invoke-virtual {v1}, Li1/n;->j()V

    goto :goto_1

    :cond_8
    new-instance v0, Le1/m;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Le1/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_1
    return-void
.end method

.method public final D(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Li1/o;->X:Li1/n;

    const-string v1, "loginClient"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Li1/o;->W:Ljava/lang/String;

    const-string v1, "challenge"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final t(IILandroid/content/Intent;)V
    .registers 5

    iget-object p1, p0, Li1/o;->X:Li1/n;

    iget-object v0, p1, Li1/n;->j:Li1/n$d;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li1/n;->f()Li1/r;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Li1/r;->g(ILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->v(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Li1/o;->Z:Z

    if-eqz p1, :cond_2

    const-string v0, "loginClient"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Li1/n;

    iput-object v0, p0, Li1/o;->X:Li1/n;

    .line 1
    iget-object v1, v0, Li1/n;->e:Landroid/support/v4/app/g;

    if-nez v1, :cond_1

    iput-object p0, v0, Li1/n;->e:Landroid/support/v4/app/g;

    const-string v0, "challenge"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Le1/m;

    const-string v0, "Can\'t set fragment once it is already set."

    invoke-direct {p1, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Li1/n;

    invoke-direct {p1, p0}, Li1/n;-><init>(Landroid/support/v4/app/g;)V

    iput-object p1, p0, Li1/o;->X:Li1/n;

    sget-object p1, Lh1/x;->a:[Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_1
    iput-object p1, p0, Li1/o;->W:Ljava/lang/String;

    iget-object p1, p0, Li1/o;->X:Li1/n;

    new-instance v0, Li1/o$a;

    invoke-direct {v0, p0}, Li1/o$a;-><init>(Li1/o;)V

    .line 7
    iput-object v0, p1, Li1/n;->i:Li1/n$c;

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li1/o;->V:Ljava/lang/String;

    .line 10
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Li1/n$d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Li1/n$d;

    iput-object p1, p0, Li1/o;->Y:Li1/n$d;

    :cond_5
    :goto_3
    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f03000a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Li1/o;->X:Li1/n;

    new-instance p3, Li1/o$b;

    invoke-direct {p3, p1}, Li1/o$b;-><init>(Landroid/view/View;)V

    iput-object p3, p2, Li1/n;->b:Li1/n$b;

    return-object p1
.end method

.method public final x()V
    .registers 3

    iget-object v0, p0, Li1/o;->X:Li1/n;

    .line 1
    iget v1, v0, Li1/n;->d:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Li1/n;->f()Li1/r;

    move-result-object v0

    invoke-virtual {v0}, Li1/r;->b()V

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/g;->x()V

    return-void
.end method
