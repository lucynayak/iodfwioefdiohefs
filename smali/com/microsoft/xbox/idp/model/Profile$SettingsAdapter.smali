.class Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a0<",
        "Ljava/util/Map<",
        "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lp1/a0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/xbox/idp/model/Profile$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lv1/a;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;->read(Lv1/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public read(Lv1/a;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/a;",
            ")",
            "Ljava/util/Map<",
            "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lp1/e;

    invoke-direct {v0}, Lp1/e;-><init>()V

    const-class v1, [Lcom/microsoft/xbox/idp/model/Profile$Setting;

    invoke-virtual {v0, p1, v1}, Lp1/e;->e(Lv1/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/microsoft/xbox/idp/model/Profile$Setting;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/microsoft/xbox/idp/model/Profile$Setting;->id:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    iget-object v3, v3, Lcom/microsoft/xbox/idp/model/Profile$Setting;->value:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic write(Lv1/b;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;->write(Lv1/b;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lv1/b;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/b;",
            "Ljava/util/Map<",
            "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/microsoft/xbox/idp/model/Profile$Setting;

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

    new-instance v3, Lcom/microsoft/xbox/idp/model/Profile$Setting;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/model/Profile$Setting;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    iput-object v4, v3, Lcom/microsoft/xbox/idp/model/Profile$Setting;->id:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/microsoft/xbox/idp/model/Profile$Setting;->value:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aput-object v3, v0, v1

    goto :goto_0

    :cond_0
    new-instance p2, Lp1/e;

    invoke-direct {p2}, Lp1/e;-><init>()V

    const-class v1, [Lcom/microsoft/xbox/idp/model/Profile$Setting;

    invoke-virtual {p2, v0, v1, p1}, Lp1/e;->k(Ljava/lang/Object;Ljava/lang/reflect/Type;Lv1/b;)V

    return-void
.end method
