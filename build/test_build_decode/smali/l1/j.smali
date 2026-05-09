.class public final Ll1/j;
.super Ll1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/j$a;
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Bitmap;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/net/Uri;

.field public final f:Z


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Ll1/d;-><init>(Landroid/os/Parcel;)V

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Ll1/j;->c:Landroid/graphics/Bitmap;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Ll1/j;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ll1/j;->f:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll1/j;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ll1/j$a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ll1/d;-><init>(Ll1/d$b;)V

    .line 2
    iget-object v0, p1, Ll1/j$a;->b:Landroid/graphics/Bitmap;

    .line 3
    iput-object v0, p0, Ll1/j;->c:Landroid/graphics/Bitmap;

    .line 4
    iget-object v0, p1, Ll1/j$a;->d:Landroid/net/Uri;

    .line 5
    iput-object v0, p0, Ll1/j;->e:Landroid/net/Uri;

    .line 6
    iget-boolean v0, p1, Ll1/j$a;->e:Z

    .line 7
    iput-boolean v0, p0, Ll1/j;->f:Z

    .line 8
    iget-object p1, p1, Ll1/j$a;->c:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Ll1/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Ll1/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Ll1/j;->c:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Ll1/j;->e:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Ll1/j;->f:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Ll1/j;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
