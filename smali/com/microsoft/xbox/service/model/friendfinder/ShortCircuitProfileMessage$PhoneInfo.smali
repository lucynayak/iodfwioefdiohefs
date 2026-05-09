.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


# instance fields
.field public addSearchableApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;",
            ">;"
        }
    .end annotation
.end field

.field public country:Ljava/lang/String;

.field public countryName:Ljava/lang/String;

.field public deleteSearchableApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;",
            ">;"
        }
    .end annotation
.end field

.field public hasSearchableApplications:Z

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public searchable:Z

.field public searchableApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public suggestedVerifyMethod:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;
    .registers 14

    const-string v0, "SearchableApplications"

    const-string v1, "SuggestedVerifyMethod"

    const-string v2, "State"

    const-string v3, "Source"

    const-string v4, "Label"

    const-string v5, "CountryName"

    const-string v6, "Country"

    const-string v7, "_type"

    const-string v8, "Name"

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;

    invoke-direct {v9}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->type:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->country:Ljava/lang/String;

    const/4 v7, 0x1

    :cond_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->countryName:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v7, 0x1

    :cond_2
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->label:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v7, 0x1

    :cond_3
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->source:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v7, 0x1

    :cond_4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->state:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v7, 0x1

    :cond_5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->suggestedVerifyMethod:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v7, 0x1

    :cond_6
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_7
    move v12, v7

    :goto_1
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->searchableApplications:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;

    invoke-direct {v2}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;-><init>()V

    iput-object v1, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;->name:Ljava/lang/String;

    iget-object v1, v9, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->searchableApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move v12, v7

    goto :goto_3

    :catch_2
    move-exception p0

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_3
    const-string v0, "Failed to parse JSON string - "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v10}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    :cond_9
    if-nez v12, :cond_a

    const/4 v9, 0x0

    :cond_a
    return-object v9
.end method


# virtual methods
.method public isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    .registers 5

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;-><init>()V

    iget-object p1, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->state:Ljava/lang/String;

    const-string v0, "Verified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->isVerified:Z

    iget-object p1, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->searchableApplications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;->name:Ljava/lang/String;

    const-string v2, "XBOX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->hasXboxApplication:Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
