.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfoAttribute"
.end annotation


# instance fields
.field public intValue:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public strValue:Ljava/lang/String;

.field public value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;
    .locals 5

    const-string v0, "Name"

    const-string v1, "Value"

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;

    invoke-direct {v2}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->name:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->value:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->value:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->value:Ljava/util/ArrayList;

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_5

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->value:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->intValue:Ljava/lang/Integer;

    return-object v2

    :cond_4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    iput-object p0, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->strValue:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v2

    :catch_0
    move-exception p0

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

    invoke-static {p0, v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->value:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
