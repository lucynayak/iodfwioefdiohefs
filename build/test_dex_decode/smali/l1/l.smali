.class public final Ll1/l;
.super Ll1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/l$a;
    }
.end annotation


# instance fields
.field public final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Ll1/d;-><init>(Landroid/os/Parcel;)V

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Ll1/l;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ll1/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll1/d;-><init>(Ll1/d$b;)V

    .line 2
    iget-object p1, p1, Ll1/l$a;->b:Landroid/net/Uri;

    .line 3
    iput-object p1, p0, Ll1/l;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

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

    iget-object p2, p0, Ll1/l;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
