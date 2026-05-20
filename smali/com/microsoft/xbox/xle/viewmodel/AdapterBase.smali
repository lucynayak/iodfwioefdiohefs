.class public abstract Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ALLOCATION_TAG:Ljava/lang/String; = "ADAPTERBASE"

.field private static adapterCounter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isActive:Z

.field private isStarted:Z

.field private screenModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->adapterCounter:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isActive:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->debugIncrement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->debugPrintOverallocated(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 4

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->debugDecrement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->ALLOCATION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->debugPrintOverallocated(Ljava/lang/String;)V

    return-void
.end method

.method public findAndInitializeModuleById(ILcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->setViewModel(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    iget-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public forceUpdateViewImmediately()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateViewOverride()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->updateView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnimateIn(Z)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimateOut(Z)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIsStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    return v0
.end method

.method public invalidateView()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->invalidateViewOverride()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->invalidateView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public invalidateViewOverride()V
    .registers 1

    return-void
.end method

.method public onAnimateInCompleted()V
    .registers 1

    return-void
.end method

.method public onAppBarButtonsAdded()V
    .registers 1

    return-void
.end method

.method public onAppBarUpdated()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onApplicationPause()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onApplicationPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onApplicationResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetActive()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isActive:Z

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    :cond_0
    return-void
.end method

.method public onSetInactive()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isActive:Z

    return-void
.end method

.method public onStart()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->isStarted:Z

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlocking(ZLjava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/xbox/toolkit/DialogManager;->setBlocking(ZLjava/lang/String;)V

    return-void
.end method

.method public setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/DialogManager;->setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScreenState(I)V
    .registers 2

    return-void
.end method

.method public showKeyboard(Landroid/view/View;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->showKeyboard(Landroid/view/View;I)V

    return-void
.end method

.method public updateView()V
    .registers 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateViewOverride()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->screenModules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/module/ScreenModuleLayout;->updateView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract updateViewOverride()V
.end method
