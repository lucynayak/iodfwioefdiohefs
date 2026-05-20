.class public final Lg2/g;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "Notifications"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Other"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Delay"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v1, Le2/r;->g:Le2/r;

    .line 1
    iput-object v1, v0, Li2/d;->f:Li2/d$a;

    .line 2
    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4004000000000000L    # 2.5
        0x3ff0000000000000L    # 1.0
        0x4014000000000000L    # 5.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final K(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "delay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    sput v1, Lj2/b;->c:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
