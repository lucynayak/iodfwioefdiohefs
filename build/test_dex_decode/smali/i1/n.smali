.class public final Li1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/n$b;,
        Li1/n$c;,
        Li1/n$d;,
        Li1/n$e;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li1/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Li1/n$b;

.field public c:Z

.field public d:I

.field public e:Landroid/support/v4/app/g;

.field public f:[Li1/r;

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le1/c0;

.field public i:Li1/n$c;

.field public j:Li1/n$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li1/n$a;

    invoke-direct {v0}, Li1/n$a;-><init>()V

    sput-object v0, Li1/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Li1/n;->d:I

    const-class v0, Li1/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Li1/r;

    iput-object v1, p0, Li1/n;->f:[Li1/r;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Li1/n;->f:[Li1/r;

    aget-object v3, v0, v1

    check-cast v3, Li1/r;

    aput-object v3, v2, v1

    aget-object v2, v2, v1

    .line 1
    iget-object v3, v2, Li1/r;->b:Li1/n;

    if-nez v3, :cond_0

    iput-object p0, v2, Li1/r;->b:Li1/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Le1/m;

    const-string v0, "Can\'t set LoginClient if it is already set."

    invoke-direct {p1, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li1/n;->d:I

    const-class v0, Li1/n$d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Li1/n$d;

    iput-object v0, p0, Li1/n;->j:Li1/n$d;

    invoke-static {p1}, Lh1/x;->B(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Li1/n;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Li1/n;->d:I

    iput-object p1, p0, Li1/n;->e:Landroid/support/v4/app/g;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Li1/n;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li1/n;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Li1/n;->g:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Li1/n;->g:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object p3, p0, Li1/n;->g:Ljava/util/HashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Z
    .locals 4

    iget-boolean v0, p0, Li1/n;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-virtual {p0}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v0

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Li1/n;->j:Li1/n$d;

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v1, v0, v3}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Li1/n;->c(Li1/n$e;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-boolean v1, p0, Li1/n;->c:Z

    return v1
.end method

.method public final c(Li1/n$e;)V
    .locals 7

    invoke-virtual {p0}, Li1/n;->f()Li1/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li1/r;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Li1/r;->c:Ljava/util/HashMap;

    .line 1
    iget v0, p1, Li1/n$e;->b:I

    .line 2
    invoke-static {v0}, La/b;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v4, p1, Li1/n$e;->d:Ljava/lang/String;

    iget-object v5, p1, Li1/n$e;->c:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Li1/n;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    :cond_0
    iget-object v0, p0, Li1/n;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iput-object v0, p1, Li1/n$e;->e:Ljava/util/Map;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Li1/n;->f:[Li1/r;

    const/4 v1, -0x1

    iput v1, p0, Li1/n;->d:I

    iput-object v0, p0, Li1/n;->j:Li1/n$d;

    iput-object v0, p0, Li1/n;->g:Ljava/util/HashMap;

    .line 5
    iget-object v2, p0, Li1/n;->i:Li1/n$c;

    if-eqz v2, :cond_3

    check-cast v2, Li1/o$a;

    .line 6
    iget-object v2, v2, Li1/o$a;->a:Li1/o;

    .line 7
    iput-object v0, v2, Li1/o;->Y:Li1/n$d;

    iget v0, p1, Li1/n$e;->b:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.facebook.LoginFragment:Result"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/support/v4/app/g;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public final d(Li1/n$e;)V
    .locals 3

    iget-object v0, p1, Li1/n$e;->g:Le1/a;

    if-eqz v0, :cond_2

    invoke-static {}, Le1/a;->b()Le1/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1
    iget-object v0, p1, Li1/n$e;->g:Le1/a;

    if-eqz v0, :cond_1

    invoke-static {}, Le1/a;->b()Le1/a;

    move-result-object v0

    iget-object v1, p1, Li1/n$e;->g:Le1/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Le1/a;->i:Ljava/lang/String;

    iget-object v1, v1, Le1/a;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li1/n;->j:Li1/n$d;

    iget-object p1, p1, Li1/n$e;->g:Le1/a;

    invoke-static {v0, p1}, Li1/n$e;->c(Li1/n$d;Le1/a;)Li1/n$e;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Li1/n;->j:Li1/n$d;

    const-string v0, "User logged in as different Facebook user."

    .line 4
    invoke-static {p1, v0, v2, v2}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Li1/n;->c(Li1/n$e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Li1/n;->j:Li1/n$d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Caught exception"

    .line 6
    invoke-static {v0, v1, p1, v2}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Li1/n;->c(Li1/n$e;)V

    :goto_1
    return-void

    :cond_1
    new-instance p1, Le1/m;

    const-string v0, "Can\'t validate without a token"

    invoke-direct {p1, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Li1/n;->c(Li1/n$e;)V

    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/support/v4/app/h;
    .locals 1

    iget-object v0, p0, Li1/n;->e:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object v0

    return-object v0
.end method

.method public final f()Li1/r;
    .locals 2

    iget v0, p0, Li1/n;->d:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Li1/n;->f:[Li1/r;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Le1/c0;
    .locals 3

    iget-object v0, p0, Li1/n;->h:Le1/c0;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le1/c0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Li1/n;->j:Li1/n$d;

    .line 3
    iget-object v1, v1, Li1/n$d;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Le1/c0;

    invoke-virtual {p0}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v1

    iget-object v2, p0, Li1/n;->j:Li1/n$d;

    .line 5
    iget-object v2, v2, Li1/n$d;->b:Ljava/lang/String;

    .line 6
    invoke-direct {v0, v1, v2}, Le1/c0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Li1/n;->h:Le1/c0;

    :cond_1
    iget-object v0, p0, Li1/n;->h:Le1/c0;

    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Li1/n;->j:Li1/n$d;

    const-string v1, "fb_mobile_login_method_complete"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li1/n;->h()Le1/c0;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Le1/c0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Li1/n;->h()Le1/c0;

    move-result-object v0

    iget-object v2, p0, Li1/n;->j:Li1/n$d;

    .line 1
    iget-object v2, v2, Li1/n$d;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2}, Le1/c0;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v3, "2_result"

    invoke-virtual {v2, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "5_error_message"

    invoke-virtual {v2, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string p2, "4_error_code"

    invoke-virtual {v2, p2, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "6_extras"

    invoke-virtual {v2, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p2, "3_method"

    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Le1/c0;->a:Ljava/lang/Object;

    check-cast p1, Lf1/f;

    invoke-virtual {p1, v1, v2}, Lf1/f;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j()V
    .locals 7

    iget v0, p0, Li1/n;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Li1/n;->f()Li1/r;

    move-result-object v0

    invoke-virtual {v0}, Li1/r;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Li1/n;->f()Li1/r;

    move-result-object v0

    iget-object v6, v0, Li1/r;->c:Ljava/util/HashMap;

    const-string v3, "skipped"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Li1/n;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Li1/n;->f:[Li1/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, p0, Li1/n;->d:I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Li1/n;->d:I

    .line 1
    invoke-virtual {p0}, Li1/n;->f()Li1/r;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Li1/v;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Li1/n;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "no_internet_permission"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2, v0}, Li1/n;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Li1/n;->j:Li1/n$d;

    invoke-virtual {v0, v1}, Li1/r;->i(Li1/n$d;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Li1/n;->h()Le1/c0;

    move-result-object v2

    iget-object v3, p0, Li1/n;->j:Li1/n$d;

    .line 4
    iget-object v3, v3, Li1/n$d;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Li1/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v3}, Le1/c0;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "3_method"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Le1/c0;->a:Ljava/lang/Object;

    check-cast v0, Lf1/f;

    const-string v2, "fb_mobile_login_method_start"

    invoke-virtual {v0, v2, v3}, Lf1/f;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Li1/r;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "not_tried"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Li1/n;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Li1/n;->j:Li1/n$d;

    if-eqz v0, :cond_4

    const-string v2, "Login attempt failed."

    .line 9
    invoke-static {v0, v2, v1, v1}, Li1/n$e;->b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Li1/n;->c(Li1/n$e;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Li1/n;->f:[Li1/r;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Li1/n;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Li1/n;->j:Li1/n$d;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Li1/n;->g:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lh1/x;->D(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
