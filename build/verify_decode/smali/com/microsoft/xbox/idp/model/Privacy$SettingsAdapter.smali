.class Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Ljava/util/Map<",
        "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
        "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp1/a0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/idp/model/Privacy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lv1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;->read(Lv1/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public read(Lv1/a;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/a;",
            ")",
            "Ljava/util/Map<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
            "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
            ">;"
        }
    .end annotation

    new-instance v0, Lp1/e;

    invoke-direct {v0}, Lp1/e;-><init>()V

    const-class v1, [Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    invoke-virtual {v0, p1, v1}, Lp1/e;->e(Lv1/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->setting:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->value:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic write(Lv1/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;->write(Lv1/b;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lv1/b;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/b;",
            "Ljava/util/Map<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
            "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/model/Privacy$Setting;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    iput-object v4, v3, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->setting:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    iput-object v2, v3, Lcom/microsoft/xbox/idp/model/Privacy$Setting;->value:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    add-int/lit8 v1, v1, 0x1

    aput-object v3, v0, v1

    goto :goto_0

    :cond_0
    new-instance p2, Lp1/e;

    invoke-direct {p2}, Lp1/e;-><init>()V

    const-class v1, [Lcom/microsoft/xbox/idp/model/Privacy$Setting;

    invoke-virtual {p2, v0, v1, p1}, Lp1/e;->k(Ljava/lang/Object;Ljava/lang/reflect/Type;Lv1/b;)V

    return-void
.end method
