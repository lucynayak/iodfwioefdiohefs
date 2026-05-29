.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneId"
.end annotation


# instance fields
.field public cid:Ljava/lang/String;

.field public puid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .registers 5

    const-string v0, "Puid"

    const-string v1, "Cid"

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;

    invoke-direct {v3}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;->cid:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;-><init>()V

    move-object v2, v1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;->puid:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return-object v2

    :catch_1
    move-exception p0

    move-object v3, v2

    :goto_1
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

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    return-object v3
.end method
