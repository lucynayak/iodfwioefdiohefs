.class public final Ll1/m;
.super Ll1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/a<",
        "Ll1/m;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ll1/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ll1/j;

.field public final j:Ll1/l;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ll1/m$a;

    invoke-direct {v0}, Ll1/m$a;-><init>()V

    sput-object v0, Ll1/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0, p1}, Ll1/a;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll1/m;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll1/m;->h:Ljava/lang/String;

    new-instance v0, Ll1/j$a;

    invoke-direct {v0}, Ll1/j$a;-><init>()V

    .line 1
    const-class v1, Ll1/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ll1/j;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, v1, Ll1/d;->b:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    iget-object v3, v0, Ll1/d$b;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    iget-object v2, v1, Ll1/j;->c:Landroid/graphics/Bitmap;

    .line 5
    iput-object v2, v0, Ll1/j$a;->b:Landroid/graphics/Bitmap;

    .line 6
    iget-object v2, v1, Ll1/j;->e:Landroid/net/Uri;

    .line 7
    iput-object v2, v0, Ll1/j$a;->d:Landroid/net/Uri;

    .line 8
    iget-boolean v2, v1, Ll1/j;->f:Z

    .line 9
    iput-boolean v2, v0, Ll1/j$a;->e:Z

    .line 10
    iget-object v1, v1, Ll1/j;->d:Ljava/lang/String;

    .line 11
    iput-object v1, v0, Ll1/j$a;->c:Ljava/lang/String;

    .line 12
    :goto_0
    iget-object v1, v0, Ll1/j$a;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 13
    iget-object v1, v0, Ll1/j$a;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    iput-object v2, p0, Ll1/m;->i:Ll1/j;

    goto :goto_2

    .line 15
    :cond_2
    :goto_1
    new-instance v1, Ll1/j;

    invoke-direct {v1, v0}, Ll1/j;-><init>(Ll1/j$a;)V

    .line 16
    iput-object v1, p0, Ll1/m;->i:Ll1/j;

    :goto_2
    new-instance v0, Ll1/l$a;

    invoke-direct {v0}, Ll1/l$a;-><init>()V

    .line 17
    const-class v1, Ll1/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ll1/l;

    if-nez p1, :cond_3

    goto :goto_3

    .line 18
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p1, Ll1/d;->b:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 19
    iget-object v2, v0, Ll1/d$b;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 20
    iget-object p1, p1, Ll1/l;->c:Landroid/net/Uri;

    .line 21
    iput-object p1, v0, Ll1/l$a;->b:Landroid/net/Uri;

    .line 22
    :goto_3
    new-instance p1, Ll1/l;

    invoke-direct {p1, v0}, Ll1/l;-><init>(Ll1/l$a;)V

    .line 23
    iput-object p1, p0, Ll1/m;->j:Ll1/l;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Ll1/a;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Ll1/m;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ll1/m;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ll1/m;->i:Ll1/j;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Ll1/m;->j:Ll1/l;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
