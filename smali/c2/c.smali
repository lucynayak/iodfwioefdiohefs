.class public final Lc2/c;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)Lc2/b;
    .registers 4

    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Module named \""

    const-string v2, "\" does not exist."

    .line 1
    invoke-static {v1, p0, v2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static B(Ljava/lang/Object;)[Lc2/b;
    .registers 6

    instance-of v0, p0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [Lc2/b;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lc2/b;

    invoke-static {v3, v4}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/b;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static addModuleRuntime(Lc2/b;)V
    .registers 7
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "addModule"
    .end annotation

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p0}, Lc2/b;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Combat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "Other"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "Misc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "Movement"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "Player"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, La2/j;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lb2/a;->e:Lb2/a;

    .line 1
    iget-object v5, v4, Lb2/a;->d:Landroid/widget/LinearLayout;

    move-object v4, p0

    .line 2
    invoke-direct/range {v0 .. v5}, La2/j;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, La2/j;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lb2/a;->i:Lb2/a;

    .line 3
    iget-object v5, v4, Lb2/a;->d:Landroid/widget/LinearLayout;

    move-object v4, p0

    .line 4
    invoke-direct/range {v0 .. v5}, La2/j;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, La2/j;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lb2/a;->h:Lb2/a;

    .line 5
    iget-object v5, v4, Lb2/a;->d:Landroid/widget/LinearLayout;

    move-object v4, p0

    .line 6
    invoke-direct/range {v0 .. v5}, La2/j;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, La2/j;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lb2/a;->f:Lb2/a;

    .line 7
    iget-object v5, v4, Lb2/a;->d:Landroid/widget/LinearLayout;

    move-object v4, p0

    .line 8
    invoke-direct/range {v0 .. v5}, La2/j;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, La2/j;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lb2/a;->g:Lb2/a;

    .line 9
    iget-object v5, v4, Lb2/a;->d:Landroid/widget/LinearLayout;

    move-object v4, p0

    .line 10
    invoke-direct/range {v0 .. v5}, La2/j;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V

    :goto_1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x715c78ff -> :sswitch_4
        -0x2539b31 -> :sswitch_3
        0x24990c -> :sswitch_2
        0x48f8ef0 -> :sswitch_1
        0x78a3eb14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static addModules(Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "addModules"
    .end annotation

    invoke-static {p0}, Lc2/c;->B(Ljava/lang/Object;)[Lc2/b;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lc2/c;->addModuleRuntime(Lc2/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getModuleNames()[Ljava/lang/String;
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getModuleNames"
    .end annotation

    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/b;

    invoke-virtual {v3}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static removeModule(Lc2/b;)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "removeModule"
    .end annotation

    invoke-virtual {p0}, Lc2/b;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Combat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "Other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "Misc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "Movement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "Player"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lb2/a;->e:Lb2/a;

    .line 1
    iget-object v0, v0, Lb2/a;->d:Landroid/widget/LinearLayout;

    .line 2
    :goto_1
    iget-object v1, p0, Lc2/b;->j:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lb2/a;->i:Lb2/a;

    .line 4
    iget-object v0, v0, Lb2/a;->d:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 5
    :pswitch_2
    sget-object v0, Lb2/a;->h:Lb2/a;

    .line 6
    iget-object v0, v0, Lb2/a;->d:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 7
    :pswitch_3
    sget-object v0, Lb2/a;->f:Lb2/a;

    .line 8
    iget-object v0, v0, Lb2/a;->d:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 9
    :pswitch_4
    sget-object v0, Lb2/a;->g:Lb2/a;

    .line 10
    iget-object v0, v0, Lb2/a;->d:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 11
    :goto_2
    invoke-virtual {p0}, Lc2/b;->isToggleable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lc2/b;->R()V

    :cond_5
    invoke-virtual {p0}, Lc2/b;->isBindable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lc2/b;->isBindActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Lc2/b;->k:La2/b;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_6
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x715c78ff -> :sswitch_4
        -0x2539b31 -> :sswitch_3
        0x24990c -> :sswitch_2
        0x48f8ef0 -> :sswitch_1
        0x78a3eb14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeModules(Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "removeModules"
    .end annotation

    invoke-static {p0}, Lc2/c;->B(Ljava/lang/Object;)[Lc2/b;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lc2/c;->removeModule(Lc2/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "ModuleManager"

    return-object v0
.end method
