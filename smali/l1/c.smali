.class public final Ll1/c;
.super Ll1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/a<",
        "Ll1/c;",
        "Ll1/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ll1/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Landroid/net/Uri;

.field public final j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ll1/c$a;

    invoke-direct {v0}, Ll1/c$a;-><init>()V

    sput-object v0, Ll1/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Ll1/a;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll1/c;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll1/c;->h:Ljava/lang/String;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Ll1/c;->i:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll1/c;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ll1/c$b;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ll1/a;-><init>(Ll1/a$a;)V

    .line 2
    iget-object v0, p1, Ll1/c$b;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Ll1/c;->g:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Ll1/c$b;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ll1/c;->h:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Ll1/c$b;->d:Landroid/net/Uri;

    .line 7
    iput-object p1, p0, Ll1/c;->i:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Ll1/c;->j:Ljava/lang/String;

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

    iget-object p2, p0, Ll1/c;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ll1/c;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ll1/c;->i:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Ll1/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
