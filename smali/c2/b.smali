.class public Lc2/b;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/b$a;,
        Lc2/b$b;
    }
.end annotation


# instance fields
.field public final b:Lorg/json/JSONObject;

.field public bindOpacity:I

.field public bindSize:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/TextView;

.field public k:La2/b;

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li2/c;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lc2/b$a;

.field public n:Lc2/b$b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc2/b;->b:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, Lc2/b;->bindOpacity:I

    iput v0, p0, Lc2/b;->bindSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 6
    .annotation runtime Lorg/mozilla/javascript/annotations/JSConstructor;
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc2/b;->b:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lc2/b;->f:Ljava/lang/String;

    iput-boolean p2, p0, Lc2/b;->g:Z

    iput-boolean p3, p0, Lc2/b;->h:Z

    iput-object p4, p0, Lc2/b;->i:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lc2/b;->bindOpacity:I

    iput v0, p0, Lc2/b;->bindSize:I

    return-void
.end method

.method public static getCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getCategory"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0}, Lc2/b;->getCategory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getSettingNames"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    .line 1
    iget-object p0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li2/c;

    invoke-virtual {v3}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static hasSettings(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "hasSettings"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0}, Lc2/b;->hasSettings()Z

    move-result p0

    return p0
.end method

.method public static isActive(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isActive"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p0

    return p0
.end method

.method public static isBindActive(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isBindActive"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0}, Lc2/b;->isBindActive()Z

    move-result p0

    return p0
.end method

.method public static isBindable(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isBindable"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0}, Lc2/b;->isBindable()Z

    move-result p0

    return p0
.end method

.method public static isToggleable(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isToggleable"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0}, Lc2/b;->isToggleable()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A([Li2/c;)V
    .registers 3

    iget-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final B()V
    .registers 9

    iget-boolean v0, p0, Lc2/b;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc2/b;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_0
    iget-object v0, p0, Lc2/b;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lc2/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lc2/b;->g:Z

    const-string v1, "active"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc2/b;->b:Lorg/json/JSONObject;

    iget-boolean v3, p0, Lc2/b;->c:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget-boolean v0, p0, Lc2/b;->h:Z

    if-eqz v0, :cond_2

    iget-object v3, p0, Lc2/b;->k:La2/b;

    if-eqz v3, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v3, p0, Lc2/b;->d:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lc2/b;->k:La2/b;

    .line 1
    iget v3, v3, La2/b;->h:I

    const-string v4, "x"

    .line 2
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lc2/b;->k:La2/b;

    .line 3
    iget v3, v3, La2/b;->i:I

    const-string v4, "y"

    .line 4
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "position"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bind_opacity"

    iget v4, p0, Lc2/b;->bindOpacity:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "bind_size"

    iget v4, p0, Lc2/b;->bindSize:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v3, "bind"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li2/c;

    invoke-virtual {v3}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "button"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "text-field"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v7, "state"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v7, "mode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "slider"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    const-string v5, "value"

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    check-cast v3, Li2/f;

    invoke-virtual {v3}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_1
    check-cast v3, Li2/e;

    invoke-virtual {v3}, Li2/e;->isActive()Z

    move-result v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_2
    check-cast v3, Li2/b;

    invoke-virtual {v3}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_3
    check-cast v3, Li2/d;

    const-string v6, "current"

    invoke-virtual {v3, v6}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :goto_3
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v2, "settings"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x359f871f -> :sswitch_3
        0x3339a3 -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x2cbfa45a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public C(J)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lc2/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->preventDefault()V

    :cond_0
    return-void
.end method

.method public D()V
    .registers 1

    return-void
.end method

.method public E()V
    .registers 1

    return-void
.end method

.method public F()V
    .registers 1

    return-void
.end method

.method public G()V
    .registers 1

    return-void
.end method

.method public H()V
    .registers 1

    return-void
.end method

.method public I()V
    .registers 1

    return-void
.end method

.method public J()V
    .registers 1

    return-void
.end method

.method public K(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public M()V
    .registers 4

    iget-object v0, p0, Lc2/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc2/b;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lc2/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public N(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public O()V
    .registers 1

    return-void
.end method

.method public P(JFFF)V
    .registers 6

    return-void
.end method

.method public Q(III)V
    .registers 4

    return-void
.end method

.method public final R()V
    .registers 5

    iget-boolean v0, p0, Lc2/b;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lc2/b;->c:Z

    invoke-virtual {p0}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v3, " -> ON"

    goto :goto_0

    :cond_0
    const-string v3, " -> OFF"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Toggle"

    invoke-static {v3, v2}, Le2/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc2/b;->G()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc2/b;->E()V

    :goto_1
    iget-object v0, p0, Lc2/b;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v2, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f08017e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_3
    const v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final S()V
    .registers 6

    iget-boolean v0, p0, Lc2/b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lc2/b;->d:Z

    iget-object v1, p0, Lc2/b;->k:La2/b;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1
    invoke-virtual {v0}, La2/b;->a()V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, La2/b;->b:Landroid/view/View;

    iget v2, v0, La2/b;->h:I

    iget v3, v0, La2/b;->i:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc2/b;->k:La2/b;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addSetting(Li2/c;)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "addSetting"
    .end annotation

    iget-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSettings(Ljava/lang/Object;)V
    .registers 8
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "addSettings"
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v2, v0, [Li2/c;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Li2/c;

    invoke-static {v4, v5}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li2/c;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :cond_1
    array-length p1, v2

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getCategory"
    .end annotation

    iget-object v0, p0, Lc2/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Module"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getName"
    .end annotation

    iget-object v0, p0, Lc2/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSetting(Ljava/lang/String;)Li2/c;
    .registers 5
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getSetting"
    .end annotation

    iget-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li2/c;

    invoke-virtual {v1}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Setting named \""

    const-string v2, "\" does not exist."

    .line 1
    invoke-static {v1, p1, v2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSettingsArray()[Li2/c;
    .registers 5
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getSettings"
    .end annotation

    iget-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Li2/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li2/c;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hasSettings()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "hasSettings"
    .end annotation

    iget-object v0, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActive()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isActive"
    .end annotation

    iget-boolean v0, p0, Lc2/b;->c:Z

    return v0
.end method

.method public isBindActive()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isBindActive"
    .end annotation

    iget-boolean v0, p0, Lc2/b;->d:Z

    return v0
.end method

.method public isBindable()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isBindable"
    .end annotation

    iget-boolean v0, p0, Lc2/b;->h:Z

    return v0
.end method

.method public isToggleable()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isToggleable"
    .end annotation

    iget-boolean v0, p0, Lc2/b;->g:Z

    return v0
.end method

.method public setOnClickListener(Ljava/lang/Object;)Lc2/b;
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setOnClickListener"
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    const-class v0, Lc2/b$a;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc2/b$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Lc2/b;->m:Lc2/b$a;

    return-object p0
.end method

.method public setOnToggleListener(Ljava/lang/Object;)Lc2/b;
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setOnToggleListener"
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    const-class v0, Lc2/b$b;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc2/b$b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Lc2/b;->n:Lc2/b$b;

    return-object p0
.end method
