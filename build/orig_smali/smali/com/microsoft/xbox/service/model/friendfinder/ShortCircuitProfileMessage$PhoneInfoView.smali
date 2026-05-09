.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfoView"
.end annotation


# instance fields
.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public id:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .locals 5

    const-string v0, "Attributes"

    const-string v1, "Id"

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;

    invoke-direct {v4}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;->parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;

    move-result-object v1

    iput-object v1, v4, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->id:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v3, :cond_1

    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;-><init>()V

    move-object v3, v1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->attributes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v3

    :catch_1
    move-exception p0

    move-object v4, v3

    :goto_2
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

    invoke-static {p0, v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    move-object v3, v4

    :cond_4
    return-object v3
.end method


# virtual methods
.method public isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->attributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
