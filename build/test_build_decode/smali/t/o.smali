.class public final Lt/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/p;
.implements Le3/i;


# static fields
.field public static c:Lt/o;


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    iput-object v0, p0, Lt/o;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, Lt/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Le3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lt/o;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lt/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public final e(Ljava/lang/Class;)Le3/k;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    new-instance v0, Le3/e;

    invoke-direct {v0, p1}, Le3/e;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_1

    new-instance v0, Le3/e;

    invoke-direct {v0, p1}, Le3/e;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_1
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_2

    new-instance p1, Le3/j;

    invoke-direct {p1}, Le3/j;-><init>()V

    return-object p1

    :cond_2
    iget-object v0, p0, Lt/o;->b:Ljava/lang/Object;

    check-cast v0, Le3/i;

    invoke-interface {v0, p1}, Le3/i;->e(Ljava/lang/Class;)Le3/k;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    new-instance v1, Le3/a;

    invoke-direct {v1, v0, p1}, Le3/a;-><init>(Le3/k;Ljava/lang/Class;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method
