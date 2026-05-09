.class public final Lg2/f;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public final o:Li2/e;

.field public final p:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "GhostMode"

    const/4 v1, 0x1

    const-string v2, "Other"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v1, "Hide binds"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ld2/c;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Ld2/c;-><init>(Lc2/b;I)V

    .line 1
    iput-object v1, v0, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v0, p0, Lg2/f;->o:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    iput-object p1, p0, Lg2/f;->p:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final D()V
    .registers 4

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1}, Lc2/b;->isBindActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, v1, Lc2/b;->k:La2/b;

    .line 4
    invoke-virtual {v1}, La2/b;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final E()V
    .registers 4

    .line 1
    sget-object v0, Ldev/virus/variable/app/MinecraftActivity;->b:La2/d;

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lg2/f;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lg2/f;->D()V

    return-void
.end method

.method public final G()V
    .registers 4

    .line 1
    sget-object v0, Ldev/virus/variable/app/MinecraftActivity;->b:La2/d;

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lg2/f;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lg2/f;->D()V

    return-void
.end method
