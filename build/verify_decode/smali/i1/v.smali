.class public final Li1/v;
.super Li1/u;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li1/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Ljava/lang/String;

.field public f:Lh1/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li1/v$b;

    invoke-direct {v0}, Li1/v$b;-><init>()V

    sput-object v0, Li1/v;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Li1/u;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li1/v;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Li1/n;)V
    .locals 0

    invoke-direct {p0, p1}, Li1/u;-><init>(Li1/n;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Li1/v;->f:Lh1/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh1/z;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Li1/v;->f:Lh1/z;

    :cond_0
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "web_view"

    return-object v0
.end method

.method public final i(Li1/n$d;)Z
    .locals 8

    invoke-virtual {p0, p1}, Li1/u;->j(Li1/n$d;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Li1/v$a;

    invoke-direct {v1, p0, p1}, Li1/v$a;-><init>(Li1/v;Li1/n$d;)V

    invoke-static {}, Li1/n;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Li1/v;->e:Ljava/lang/String;

    const-string v3, "e2e"

    invoke-virtual {p0, v3, v2}, Li1/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Li1/r;->b:Li1/n;

    invoke-virtual {v2}, Li1/n;->e()Landroid/support/v4/app/h;

    move-result-object v2

    .line 1
    iget-object v4, p1, Li1/n$d;->b:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2
    invoke-static {v2}, Lh1/x;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, "applicationId"

    invoke-static {v4, v5}, Lr0/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v5, p0, Li1/v;->e:Ljava/lang/String;

    .line 4
    iget-boolean p1, p1, Li1/n$d;->f:Z

    const-string v6, "redirect_uri"

    const-string v7, "fbconnect://success"

    .line 5
    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "client_id"

    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "response_type"

    const-string v4, "token,signed_request"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "return_scopes"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "auth_type"

    const-string v3, "rerequest"

    invoke-virtual {v0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lh1/z;

    const-string v3, "oauth"

    invoke-direct {p1, v2, v3, v0, v1}, Lh1/z;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lh1/z$c;)V

    .line 6
    iput-object p1, p0, Li1/v;->f:Lh1/z;

    new-instance p1, Lh1/j;

    invoke-direct {p1}, Lh1/j;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Landroid/support/v4/app/g;->C:Z

    .line 8
    iget-object v1, p0, Li1/v;->f:Lh1/z;

    .line 9
    iput-object v1, p1, Lh1/j;->e0:Landroid/app/Dialog;

    .line 10
    invoke-virtual {v2}, Landroid/support/v4/app/h;->j()Landroid/support/v4/app/b0;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/f;->a0(Landroid/support/v4/app/b0;Ljava/lang/String;)V

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Li1/r;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Li1/v;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
