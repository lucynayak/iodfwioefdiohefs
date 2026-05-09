.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadPhoneContactsResponse"
.end annotation


# instance fields
.field private aliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isErrorResponse:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private foundAlias(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->aliases:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->aliases:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->aliases:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
    .locals 7

    const-string v0, "ContactHandle"

    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;-><init>()V

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-gtz p0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "FoundAliases"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "ObjectId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {v1, v5}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->foundAlias(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "error"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->isErrorResponse:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

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

    invoke-static {p0, v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public getXboxPhoneContacts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->aliases:Ljava/util/Set;

    return-object v0
.end method
