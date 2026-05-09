.class public final Li1/l;
.super Li1/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li1/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li1/l$a;

    invoke-direct {v0}, Li1/l$a;-><init>()V

    sput-object v0, Li1/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Li1/r;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Li1/n;)V
    .registers 2

    invoke-direct {p0, p1}, Li1/r;-><init>(Li1/n;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method public final g(ILandroid/content/Intent;)Z
    .registers 11

    iget-object v0, p0, Li1/r;->b:Li1/n;

    .line 1
    iget-object v0, v0, Li1/n;->j:Li1/n$d;

    if-nez p2, :cond_0

    const-string p1, "Operation canceled"

    .line 2
    invoke-static {v0, p1}, Li1/n$e;->a(Li1/n$d;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v1, "error_description"

    const-string v2, "error_message"

    const-string v3, "error_type"

    const-string v4, "error_code"

    const-string v5, "error"

    if-nez p1, :cond_4

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CONNECTION_FAILURE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_2
    invoke-static {v0, p2, v2, v3}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    invoke-static {v0, p2}, Li1/n$e;->a(Li1/n$d;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq p1, v6, :cond_5

    const-string p1, "Unexpected resultCode from authorization."

    .line 8
    invoke-static {v0, p1, v7, v7}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    :cond_6
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string v1, "e2e"

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0, v1}, Li1/r;->f(Ljava/lang/String;)V

    :cond_8
    if-nez p2, :cond_9

    if-nez v3, :cond_9

    if-nez v2, :cond_9

    .line 14
    :try_start_0
    iget-object p2, v0, Li1/n$d;->h:Ljava/util/Set;

    .line 15
    sget-object v1, Le1/e;->g:Le1/e;

    .line 16
    iget-object v2, v0, Li1/n$d;->b:Ljava/lang/String;

    .line 17
    invoke-static {p2, p1, v1, v2}, Li1/r;->c(Ljava/util/Collection;Landroid/os/Bundle;Le1/e;Ljava/lang/String;)Le1/a;

    move-result-object p1

    invoke-static {v0, p1}, Li1/n$e;->c(Li1/n$d;Le1/a;)Li1/n$e;

    move-result-object p1
    :try_end_0
    .catch Le1/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v0, v7, p1, v7}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_9
    sget-object p1, Lh1/v;->a:Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lh1/v;->b:Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v0, v7}, Li1/n$e;->a(Li1/n$d;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    goto :goto_0

    :cond_a
    invoke-static {v0, p2, v2, v3}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    goto :goto_0

    :cond_b
    move-object p1, v7

    :goto_0
    if-eqz p1, :cond_c

    .line 20
    iget-object p2, p0, Li1/r;->b:Li1/n;

    invoke-virtual {p2, p1}, Li1/n;->d(Li1/n$e;)V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Li1/r;->b:Li1/n;

    invoke-virtual {p1}, Li1/n;->j()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final i(Li1/n$d;)Z
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Li1/n;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Li1/r;->b:Li1/n;

    invoke-virtual {v3}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v3

    .line 1
    iget-object v4, v1, Li1/n$d;->b:Ljava/lang/String;

    .line 2
    iget-object v5, v1, Li1/n$d;->h:Ljava/util/Set;

    .line 3
    iget-boolean v6, v1, Li1/n$d;->f:Z

    .line 4
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Li1/p;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 5
    :goto_0
    iget-object v8, v1, Li1/n$d;->d:Li1/b;

    .line 6
    iget-object v1, v1, Li1/n$d;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Li1/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v11, Lh1/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "e2e"

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lh1/r$d;

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v12}, Lh1/r$d;->a()Ljava/lang/String;

    move-result-object v15

    const-string v9, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v14, "client_id"

    invoke-virtual {v9, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v5}, Lh1/x;->s(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, ","

    invoke-static {v14, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "scope"

    invoke-virtual {v9, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-static {v2}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v9, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v14, "state"

    invoke-virtual {v9, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "response_type"

    const-string v15, "token,signed_request"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "return_scopes"

    const-string v15, "true"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v7, :cond_5

    .line 9
    iget-object v14, v8, Li1/b;->b:Ljava/lang/String;

    const-string v15, "default_audience"

    .line 10
    invoke-virtual {v9, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string v14, "legacy_override"

    const-string v15, "v2.6"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v6, :cond_6

    const-string v14, "auth_type"

    const-string v15, "rerequest"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-static {v3, v9, v12}, Lh1/r;->m(Landroid/content/Context;Landroid/content/Intent;Lh1/r$d;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    .line 11
    :goto_1
    invoke-virtual {v0, v13, v2}, Li1/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-static {v10}, La/c;->a(I)I

    move-result v1

    if-nez v9, :cond_8

    goto :goto_2

    .line 13
    :cond_8
    :try_start_0
    iget-object v2, v0, Li1/r;->b:Li1/n;

    .line 14
    iget-object v2, v2, Li1/n;->e:Landroid/support/v4/app/g;

    .line 15
    invoke-virtual {v2, v9, v1}, Landroid/support/v4/app/g;->Y(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    goto :goto_3

    :catch_0
    :goto_2
    const/4 v9, 0x0

    :goto_3
    return v9
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Li1/r;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
