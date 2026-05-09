.class public final Ll1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ll1/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, La/c;->h(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lz0/a;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ll1/l;

    invoke-direct {v0, p1}, Ll1/l;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/ParcelFormatException;

    const-string v0, "ShareMedia has invalid type"

    invoke-direct {p1, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ll1/j;

    invoke-direct {v0, p1}, Ll1/j;-><init>(Landroid/os/Parcel;)V

    :goto_0
    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Ll1/d;

    return-object p1
.end method
