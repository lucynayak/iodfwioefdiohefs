.class public final Li1/h;
.super Li1/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li1/h;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li1/h$a;

    invoke-direct {v0}, Li1/h$a;-><init>()V

    sput-object v0, Li1/h;->CREATOR:Landroid/os/Parcelable$Creator;

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

    const-string v0, "device_auth"

    return-object v0
.end method

.method public final i(Li1/n$d;)Z
    .registers 11

    .line 1
    new-instance v0, Li1/e;

    invoke-direct {v0}, Li1/e;-><init>()V

    iget-object v1, p0, Li1/r;->b:Li1/n;

    invoke-virtual {v1}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/h;->j()Landroid/support/v4/app/b0;

    move-result-object v1

    const-string v2, "login_with_facebook"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/f;->a0(Landroid/support/v4/app/b0;Ljava/lang/String;)V

    .line 2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p1, Li1/n$d;->h:Ljava/util/Set;

    const-string v2, ","

    .line 4
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v6, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Li1/n$d;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "redirect_uri"

    .line 6
    invoke-virtual {v6, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lr0/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v1, Le1/r;->a:Ljava/lang/Object;

    .line 8
    invoke-static {}, Lr0/e;->k()V

    sget-object v1, Le1/r;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "access_token"

    invoke-virtual {v6, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Le1/u;

    const/4 v4, 0x0

    sget-object v7, Le1/z;->d:Le1/z;

    new-instance v8, Li1/d;

    invoke-direct {v8, v0}, Li1/d;-><init>(Li1/e;)V

    const-string v5, "device/login"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le1/u;-><init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V

    invoke-virtual {p1}, Le1/u;->e()Le1/w;

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No Client Token found, please set the Client Token."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Li1/r;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
