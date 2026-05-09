.class public Lk0/d;
.super Lk0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/d$a;
    }
.end annotation


# instance fields
.field public o:Lk0/d$a;

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk0/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk0/d$a;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lk0/b;-><init>()V

    new-instance v0, Lk0/d$a;

    invoke-direct {v0, p1, p0, p2}, Lk0/d$a;-><init>(Lk0/d$a;Lk0/d;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Lk0/d;->e(Lk0/b$c;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lk0/d;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Lk0/b;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lk0/d;->onStateChange([I)Z

    return-void
.end method

.method public bridge synthetic b()Lk0/b$c;
    .locals 1

    invoke-virtual {p0}, Lk0/d;->f()Lk0/d$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lk0/b$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lk0/b;->b:Lk0/b$c;

    iget v0, p0, Lk0/b;->h:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lk0/b$c;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lk0/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lk0/b;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lk0/b;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v0, p1, Lk0/d$a;

    if-eqz v0, :cond_1

    check-cast p1, Lk0/d$a;

    iput-object p1, p0, Lk0/d;->o:Lk0/d$a;

    :cond_1
    return-void
.end method

.method public f()Lk0/d$a;
    .locals 3

    new-instance v0, Lk0/d$a;

    iget-object v1, p0, Lk0/d;->o:Lk0/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lk0/d$a;-><init>(Lk0/d$a;Lk0/d;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lk0/d;->p:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lk0/b;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lk0/d;->o:Lk0/d$a;

    invoke-virtual {v0}, Lk0/d$a;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/d;->p:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 2

    invoke-super {p0, p1}, Lk0/b;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lk0/d;->o:Lk0/d$a;

    invoke-virtual {v1, p1}, Lk0/d$a;->i([I)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lk0/d;->o:Lk0/d$a;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Lk0/d$a;->i([I)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lk0/b;->d(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
