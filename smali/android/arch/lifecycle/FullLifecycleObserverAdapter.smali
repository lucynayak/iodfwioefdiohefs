.class Landroid/arch/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field public final a:Landroid/arch/lifecycle/FullLifecycleObserver;


# virtual methods
.method public final a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$a;)V
    .registers 3

    sget-object p1, Landroid/arch/lifecycle/FullLifecycleObserverAdapter$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->onDestroy()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->c()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->d()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->b()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->e()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->a()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
