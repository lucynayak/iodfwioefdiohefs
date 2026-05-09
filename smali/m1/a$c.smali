.class public final Lm1/a$c;
.super Lh1/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh1/i<",
        "Ll1/a;",
        "Lj1/a;",
        ">.a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm1/a;


# direct methods
.method public constructor <init>(Lm1/a;)V
    .registers 2

    iput-object p1, p0, Lm1/a$c;->a:Lm1/a;

    invoke-direct {p0}, Lh1/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ll1/a;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lm1/a;->e(Ljava/lang/Class;)Lh1/h;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, La3/r0;->k(Lh1/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final b(Ljava/lang/Object;)Lh1/a;
    .registers 13

    check-cast p1, Ll1/a;

    .line 1
    iget-object v0, p0, Lm1/a$c;->a:Lm1/a;

    .line 2
    invoke-virtual {v0}, Lh1/i;->a()Landroid/app/Activity;

    move-result-object v1

    .line 3
    sget-object v2, Lm1/a$b;->e:Lm1/a$b;

    invoke-static {v0, v1, p1, v2}, Lm1/a;->b(Lm1/a;Landroid/content/Context;Ll1/a;Lm1/a$b;)V

    .line 4
    sget-object v0, Lk1/f;->a:Lk1/f$a;

    if-nez v0, :cond_0

    new-instance v0, Lk1/f$a;

    invoke-direct {v0}, Lk1/f$a;-><init>()V

    sput-object v0, Lk1/f;->a:Lk1/f$a;

    :cond_0
    sget-object v0, Lk1/f;->a:Lk1/f$a;

    .line 5
    invoke-static {p1, v0}, Lk1/f;->a(Ll1/a;Lk1/f$a;)V

    .line 6
    iget-object v0, p0, Lm1/a$c;->a:Lm1/a;

    invoke-virtual {v0}, Lm1/a;->d()Lh1/a;

    move-result-object v0

    iget-object v1, p0, Lm1/a$c;->a:Lm1/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lm1/a;->e(Ljava/lang/Class;)Lh1/h;

    move-result-object v1

    .line 8
    sget-object v2, Le1/r;->a:Ljava/lang/Object;

    .line 9
    invoke-static {}, Lr0/e;->k()V

    sget-object v2, Le1/r;->c:Landroid/content/Context;

    .line 10
    invoke-interface {v1}, Lh1/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, La3/r0;->x(Lh1/h;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_12

    invoke-static {v1}, Lh1/r;->j(I)Z

    move-result v4

    const-string v5, "Unable to create a JSON Object from the provided ShareOpenGraphContent: "

    const-string v6, "callId"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_7

    .line 11
    iget-object v4, v0, Lh1/a;->b:Ljava/io/Serializable;

    check-cast v4, Ljava/util/UUID;

    .line 12
    sget v9, Lr0/e;->l:I

    invoke-static {v4, v6}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, p1, Ll1/c;

    const-string v9, "DESCRIPTION"

    const-string v10, "TITLE"

    if-eqz v6, :cond_1

    check-cast p1, Ll1/c;

    .line 13
    invoke-static {p1, v7}, Ld1/a;->o(Ll1/a;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 14
    iget-object v5, p1, Ll1/c;->h:Ljava/lang/String;

    .line 15
    invoke-static {v4, v10, v5}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v5, p1, Ll1/c;->g:Ljava/lang/String;

    .line 17
    invoke-static {v4, v9, v5}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v5, p1, Ll1/c;->i:Landroid/net/Uri;

    const-string v6, "IMAGE"

    .line 19
    invoke-static {v4, v6, v5}, Lh1/x;->z(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    iget-object p1, p1, Ll1/c;->j:Ljava/lang/String;

    const-string v5, "QUOTE"

    .line 21
    invoke-static {v4, v5, p1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 22
    :cond_1
    instance-of v6, p1, Ll1/k;

    if-eqz v6, :cond_2

    check-cast p1, Ll1/k;

    invoke-static {p1, v4}, Lk1/m;->c(Ll1/k;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v4

    .line 23
    invoke-static {p1, v7}, Ld1/a;->o(Ll1/a;Z)Landroid/os/Bundle;

    move-result-object p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "PHOTOS"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 24
    :cond_2
    instance-of v6, p1, Ll1/m;

    if-eqz v6, :cond_4

    check-cast p1, Ll1/m;

    .line 25
    iget-object v5, p1, Ll1/m;->j:Ll1/l;

    if-nez v5, :cond_3

    move-object v4, v8

    goto :goto_0

    .line 26
    :cond_3
    iget-object v5, v5, Ll1/l;->c:Landroid/net/Uri;

    .line 27
    sget-object v6, Lh1/q;->a:Ljava/io/File;

    const-string v6, "attachmentUri"

    .line 28
    invoke-static {v5, v6}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lh1/q$a;

    invoke-direct {v6, v4, v8, v5}, Lh1/q$a;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lh1/q;->a(Ljava/util/Collection;)V

    .line 30
    iget-object v4, v6, Lh1/q$a;->b:Ljava/lang/String;

    .line 31
    :goto_0
    invoke-static {p1, v7}, Ld1/a;->o(Ll1/a;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 32
    iget-object v6, p1, Ll1/m;->h:Ljava/lang/String;

    .line 33
    invoke-static {v5, v10, v6}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p1, Ll1/m;->g:Ljava/lang/String;

    .line 35
    invoke-static {v5, v9, p1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "VIDEO"

    invoke-static {v5, p1, v4}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto/16 :goto_5

    .line 36
    :cond_4
    instance-of v6, p1, Ll1/g;

    if-eqz v6, :cond_5

    check-cast p1, Ll1/g;

    :try_start_0
    invoke-static {v4, p1}, Lk1/m;->h(Ljava/util/UUID;Ll1/g;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v7}, Lk1/m;->g(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 37
    invoke-static {p1, v7}, Ld1/a;->o(Ll1/a;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 38
    iget-object v7, p1, Ll1/g;->h:Ljava/lang/String;

    .line 39
    invoke-static {v7}, Lk1/m;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const-string v9, "PREVIEW_PROPERTY_NAME"

    invoke-static {v6, v9, v7}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p1, Ll1/g;->g:Ll1/f;

    .line 41
    invoke-virtual {p1}, Ll1/f;->c()Ljava/lang/String;

    move-result-object p1

    const-string v7, "ACTION_TYPE"

    invoke-static {v6, v7, p1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ACTION"

    invoke-static {v6, v4, p1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 42
    new-instance v0, Le1/m;

    .line 43
    invoke-static {v5}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le1/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    instance-of v5, p1, Ll1/e;

    if-eqz v5, :cond_b

    check-cast p1, Ll1/e;

    .line 45
    iget-object v5, p1, Ll1/e;->g:Ljava/util/List;

    if-nez v5, :cond_6

    move-object v4, v8

    goto :goto_1

    .line 46
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lk1/l;

    invoke-direct {v9, v4, v6}, Lk1/l;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    invoke-static {v5, v9}, Lh1/x;->v(Ljava/util/List;Lh1/x$e;)Ljava/util/List;

    move-result-object v4

    invoke-static {v6}, Lh1/q;->a(Ljava/util/Collection;)V

    .line 47
    :goto_1
    invoke-static {p1, v7}, Ld1/a;->o(Ll1/a;Z)Landroid/os/Bundle;

    move-result-object p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "MEDIA"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 48
    :cond_7
    iget-object v4, v0, Lh1/a;->b:Ljava/io/Serializable;

    check-cast v4, Ljava/util/UUID;

    .line 49
    sget v9, Lr0/e;->l:I

    invoke-static {v4, v6}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, p1, Ll1/c;

    if-eqz v6, :cond_8

    check-cast p1, Ll1/c;

    .line 50
    invoke-static {p1, v7}, Ld1/a;->p(Ll1/a;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 51
    iget-object v5, p1, Ll1/c;->h:Ljava/lang/String;

    const-string v6, "com.facebook.platform.extra.TITLE"

    .line 52
    invoke-static {v4, v6, v5}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v5, p1, Ll1/c;->g:Ljava/lang/String;

    const-string v6, "com.facebook.platform.extra.DESCRIPTION"

    .line 54
    invoke-static {v4, v6, v5}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p1, Ll1/c;->i:Landroid/net/Uri;

    const-string v5, "com.facebook.platform.extra.IMAGE"

    .line 56
    invoke-static {v4, v5, p1}, Lh1/x;->z(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_5

    .line 57
    :cond_8
    instance-of v6, p1, Ll1/k;

    if-eqz v6, :cond_9

    check-cast p1, Ll1/k;

    invoke-static {p1, v4}, Lk1/m;->c(Ll1/k;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v4

    .line 58
    invoke-static {p1, v7}, Ld1/a;->p(Ll1/a;Z)Landroid/os/Bundle;

    move-result-object p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_2
    move-object v4, p1

    goto :goto_5

    .line 59
    :cond_9
    instance-of v6, p1, Ll1/m;

    if-eqz v6, :cond_a

    check-cast p1, Ll1/m;

    goto :goto_4

    :cond_a
    instance-of v6, p1, Ll1/g;

    if-eqz v6, :cond_b

    check-cast p1, Ll1/g;

    :try_start_1
    invoke-static {v4, p1}, Lk1/m;->h(Ljava/util/UUID;Ll1/g;)Lorg/json/JSONObject;

    move-result-object v4

    .line 60
    invoke-static {p1, v7}, Ld1/a;->p(Ll1/a;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 61
    iget-object v7, p1, Ll1/g;->h:Ljava/lang/String;

    const-string v9, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME"

    .line 62
    invoke-static {v6, v9, v7}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p1, Ll1/g;->g:Ll1/f;

    .line 64
    invoke-virtual {p1}, Ll1/f;->c()Ljava/lang/String;

    move-result-object p1

    const-string v7, "com.facebook.platform.extra.ACTION_TYPE"

    invoke-static {v6, v7, p1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "com.facebook.platform.extra.ACTION"

    invoke-static {v6, v4, p1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v4, v6

    goto :goto_5

    :catch_1
    move-exception p1

    .line 65
    new-instance v0, Le1/m;

    .line 66
    invoke-static {v5}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le1/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    move-object v4, v8

    :goto_5
    if-nez v4, :cond_c

    .line 68
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 69
    :cond_c
    iget-object p1, v0, Lh1/a;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/util/UUID;

    .line 70
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    sget-object v5, Lh1/r;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_d

    move-object v6, v8

    goto :goto_6

    :cond_d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v8

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh1/r$d;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6}, Lh1/r$d;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lh1/r;->m(Landroid/content/Context;Landroid/content/Intent;Lh1/r$d;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_e

    :cond_f
    :goto_6
    if-nez v6, :cond_10

    goto :goto_7

    .line 72
    :cond_10
    invoke-static {v6, p1, v3, v1, v4}, Lh1/r;->k(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    move-object v8, v6

    :goto_7
    if-eqz v8, :cond_11

    .line 73
    iput-object v8, v0, Lh1/a;->c:Ljava/lang/Object;

    return-object v0

    .line 74
    :cond_11
    new-instance p1, Le1/m;

    const-string v0, "Unable to create Intent; this likely means theFacebook app is not installed."

    invoke-direct {p1, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Le1/m;

    const-string v0, "Cannot present this dialog. This likely means that the Facebook app is not installed."

    invoke-direct {p1, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method
