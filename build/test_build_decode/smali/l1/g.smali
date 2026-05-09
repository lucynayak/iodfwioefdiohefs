.class public final Ll1/g;
.super Ll1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/a<",
        "Ll1/g;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ll1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:Ll1/f;

.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll1/g$a;

    invoke-direct {v0}, Ll1/g$a;-><init>()V

    sput-object v0, Ll1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0, p1}, Ll1/a;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Ll1/f$b;

    invoke-direct {v0}, Ll1/f$b;-><init>()V

    .line 1
    const-class v1, Ll1/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ll1/f;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, v0, Ll1/i$a;->a:Landroid/os/Bundle;

    .line 3
    iget-object v3, v1, Ll1/i;->b:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 4
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v1}, Ll1/f;->c()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Ll1/i$a;->a:Landroid/os/Bundle;

    const-string v3, "og:type"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    new-instance v1, Ll1/f;

    invoke-direct {v1, v0}, Ll1/f;-><init>(Ll1/f$b;)V

    .line 8
    iput-object v1, p0, Ll1/g;->g:Ll1/f;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll1/g;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Ll1/a;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Ll1/g;->g:Ll1/f;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Ll1/g;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
