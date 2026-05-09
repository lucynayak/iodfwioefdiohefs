.class public final Li1/j;
.super Li1/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li1/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Li1/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li1/j$b;

    invoke-direct {v0}, Li1/j$b;-><init>()V

    sput-object v0, Li1/j;->CREATOR:Landroid/os/Parcelable$Creator;

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
.method public final b()V
    .registers 3

    iget-object v0, p0, Li1/j;->d:Li1/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lh1/t;->h:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lh1/t;->d:Lh1/t$a;

    .line 3
    iput-object v1, p0, Li1/j;->d:Li1/i;

    :cond_0
    return-void
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    const-string v0, "get_token"

    return-object v0
.end method

.method public final i(Li1/n$d;)Z
    .registers 11

    new-instance v0, Li1/i;

    iget-object v1, p0, Li1/r;->b:Li1/n;

    invoke-virtual {v1}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v1

    .line 1
    iget-object v2, p1, Li1/n$d;->b:Ljava/lang/String;

    .line 2
    invoke-direct {v0, v1, v2}, Li1/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Li1/j;->d:Li1/i;

    .line 3
    iget-boolean v1, v0, Lh1/t;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, v0, Lh1/t;->e:I

    .line 4
    sget-object v4, Lh1/r;->d:Ljava/util/ArrayList;

    new-array v5, v3, [I

    aput v1, v5, v2

    invoke-static {v4, v5}, Lh1/r;->g(Ljava/util/List;[I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    .line 5
    iget-object v1, v0, Lh1/t;->b:Landroid/content/Context;

    .line 6
    sget-object v4, Lh1/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh1/r$d;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lh1/r$d;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1, v8}, Lh1/r$d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_1

    :cond_5
    if-eqz v6, :cond_6

    .line 8
    iput-boolean v3, v0, Lh1/t;->h:Z

    iget-object v1, v0, Lh1/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_7

    return v2

    .line 9
    :cond_7
    iget-object v0, p0, Li1/r;->b:Li1/n;

    .line 10
    iget-object v0, v0, Li1/n;->b:Li1/n$b;

    if-eqz v0, :cond_8

    check-cast v0, Li1/o$b;

    .line 11
    iget-object v0, v0, Li1/o$b;->a:Landroid/view/View;

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_8
    new-instance v0, Li1/j$a;

    invoke-direct {v0, p0, p1}, Li1/j$a;-><init>(Li1/j;Li1/n$d;)V

    iget-object p1, p0, Li1/j;->d:Li1/i;

    .line 13
    iput-object v0, p1, Lh1/t;->d:Lh1/t$a;

    return v3
.end method

.method public final j(Li1/n$d;Landroid/os/Bundle;)V
    .registers 12

    sget-object v6, Le1/e;->f:Le1/e;

    .line 1
    iget-object v2, p1, Li1/n$d;->b:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v0, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    invoke-static {p2, v0, p1}, Lh1/x;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    const-string p1, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string p1, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Le1/a;

    const-string v0, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Le1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Le1/e;Ljava/util/Date;Ljava/util/Date;)V

    .line 3
    :goto_0
    iget-object p2, p0, Li1/r;->b:Li1/n;

    .line 4
    iget-object p2, p2, Li1/n;->j:Li1/n$d;

    .line 5
    invoke-static {p2, p1}, Li1/n$e;->c(Li1/n$d;Le1/a;)Li1/n$e;

    move-result-object p1

    iget-object p2, p0, Li1/r;->b:Li1/n;

    invoke-virtual {p2, p1}, Li1/n;->d(Li1/n$e;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Li1/r;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
