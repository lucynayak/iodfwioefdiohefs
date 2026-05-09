.class public final Lk1/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk1/m;->h(Ljava/util/UUID;Ll1/g;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lk1/m$a;->c:Ljava/util/UUID;

    iput-object p2, p0, Lk1/m$a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ll1/j;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lk1/m$a;->c:Ljava/util/UUID;

    invoke-static {v0, p1}, Lk1/m;->a(Ljava/util/UUID;Ll1/d;)Lh1/q$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk1/m$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "url"

    .line 1
    iget-object v0, v0, Lh1/q$a;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-boolean p1, p1, Ll1/j;->f:Z

    if-eqz p1, :cond_1

    const-string p1, "user_generated"

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Le1/m;

    const-string v1, "Unable to attach images"

    invoke-direct {v0, v1, p1}, Le1/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
