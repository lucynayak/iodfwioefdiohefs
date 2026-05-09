.class public Lh0/f;
.super Landroid/support/v4/app/h;
.source "SourceFile"

# interfaces
.implements Lh0/g;


# instance fields
.field public l:Lh0/i;

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh0/f;->m:I

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh0/h;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lh0/f;->n()Lh0/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Lh0/f;->n()Lh0/a;

    move-result-object v1

    const/16 v2, 0x52

    invoke-super {p0, p1}, Landroid/support/v4/app/j0;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    check-cast v0, Lh0/i;

    invoke-virtual {v0}, Lh0/i;->u()V

    iget-object v0, v0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    check-cast v0, Lh0/i;

    iget-object v1, v0, Lh0/i;->h:Lm0/f;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lh0/i;->y()V

    new-instance v1, Lm0/f;

    iget-object v2, v0, Lh0/i;->g:Lh0/s;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lh0/s;->c()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lh0/i;->b:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Lm0/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lh0/i;->h:Lm0/f;

    :cond_1
    iget-object v0, v0, Lh0/i;->h:Lm0/f;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, Lo0/y0;->a:I

    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    invoke-virtual {v0}, Lh0/h;->f()V

    return-void
.end method

.method public final m()Lh0/h;
    .locals 2

    iget-object v0, p0, Lh0/f;->l:Lh0/i;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lh0/i;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lh0/i;-><init>(Landroid/content/Context;Landroid/view/Window;Lh0/g;)V

    .line 2
    iput-object v0, p0, Lh0/f;->l:Lh0/i;

    :cond_0
    iget-object v0, p0, Lh0/f;->l:Lh0/i;

    return-object v0
.end method

.method public final n()Lh0/a;
    .locals 1

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    check-cast v0, Lh0/i;

    invoke-virtual {v0}, Lh0/i;->y()V

    iget-object v0, v0, Lh0/i;->g:Lh0/s;

    return-object v0
.end method

.method public final o()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/app/c0;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object p1

    check-cast p1, Lh0/i;

    .line 1
    iget-boolean v0, p1, Lh0/i;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lh0/i;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lh0/i;->y()V

    iget-object v0, p1, Lh0/i;->g:Lh0/s;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lh0/s;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Lh0/s;->f(Z)V

    .line 6
    :cond_0
    invoke-static {}, Lo0/i;->g()Lo0/i;

    move-result-object v0

    iget-object v1, p1, Lh0/i;->b:Landroid/content/Context;

    .line 7
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lo0/i;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc0/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc0/e;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    .line 8
    invoke-virtual {p1}, Lh0/i;->d()Z

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    invoke-virtual {v0}, Lh0/h;->e()V

    invoke-virtual {v0, p1}, Lh0/h;->g(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lh0/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lh0/f;->m:I

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lh0/f;->m:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lh0/f;->setTheme(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/h;->onDestroy()V

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    check-cast v0, Lh0/i;

    iget-boolean v1, v0, Lh0/i;->K:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lh0/i;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lh0/i;->M:Lh0/i$a;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lh0/i;->G:Z

    iget-object v0, v0, Lh0/i;->J:Lh0/i$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh0/i$e;->a()V

    :cond_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lh0/f;->n()Lh0/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    check-cast p1, Lh0/s;

    .line 1
    iget-object p1, p1, Lh0/s;->e:Lo0/b0;

    invoke-interface {p1}, Lo0/b0;->j()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    .line 2
    invoke-static {p0}, Landroid/support/v4/app/c0;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Lh0/f;->o()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Landroid/support/v4/app/c0;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    :try_start_0
    invoke-static {p0, v1}, Landroid/support/v4/app/c0;->b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    .line 8
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    sget-object p2, Lu/a;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 11
    :try_start_1
    sget p1, Landroid/support/v4/app/b;->b:I

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 13
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_8
    return v2
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object p1

    check-cast p1, Lh0/i;

    invoke-virtual {p1}, Lh0/i;->u()V

    return-void
.end method

.method public final onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/h;->onPostResume()V

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    check-cast v0, Lh0/i;

    .line 1
    invoke-virtual {v0}, Lh0/i;->y()V

    iget-object v0, v0, Lh0/i;->g:Lh0/s;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lh0/s;->u:Z

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    check-cast v0, Lh0/i;

    iget v0, v0, Lh0/i;->H:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const-string v1, "appcompat:local_night_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/h;->onStart()V

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    check-cast v0, Lh0/i;

    invoke-virtual {v0}, Lh0/i;->d()Z

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/h;->onStop()V

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    invoke-virtual {v0}, Lh0/h;->h()V

    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lh0/h;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lh0/f;->n()Lh0/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh0/h;->j(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh0/h;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lh0/f;->m()Lh0/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh0/h;->l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    iput p1, p0, Lh0/f;->m:I

    return-void
.end method
