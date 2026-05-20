.class public final Li1/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li1/n$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Li1/n$d;

.field public final g:Le1/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li1/n$e$a;

    invoke-direct {v0}, Li1/n$e$a;-><init>()V

    sput-object v0, Li1/n$e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, La/b;->j(Ljava/lang/String;)I

    move-result v0

    .line 3
    iput v0, p0, Li1/n$e;->b:I

    const-class v0, Le1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Le1/a;

    iput-object v0, p0, Li1/n$e;->g:Le1/a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li1/n$e;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li1/n$e;->c:Ljava/lang/String;

    const-class v0, Li1/n$d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Li1/n$d;

    iput-object v0, p0, Li1/n$e;->f:Li1/n$d;

    invoke-static {p1}, Lh1/x;->B(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Li1/n$e;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Li1/n$d;ILe1/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    invoke-static {p2, v0}, La/c;->e(ILjava/lang/String;)V

    iput-object p1, p0, Li1/n$e;->f:Li1/n$d;

    iput-object p3, p0, Li1/n$e;->g:Le1/a;

    iput-object p4, p0, Li1/n$e;->d:Ljava/lang/String;

    iput p2, p0, Li1/n$e;->b:I

    iput-object p5, p0, Li1/n$e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Li1/n$d;Ljava/lang/String;)Li1/n$e;
    .registers 9

    new-instance v6, Li1/n$e;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Li1/n$e;-><init>(Li1/n$d;ILe1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static b(Li1/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li1/n$e;
    .registers 10

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    sget-object p1, Lh1/x;->a:[Ljava/lang/String;

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object p2, v1, v2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p2, ": "

    .line 2
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Li1/n$e;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Li1/n$e;-><init>(Li1/n$d;ILe1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static c(Li1/n$d;Le1/a;)Li1/n$e;
    .registers 9

    new-instance v6, Li1/n$e;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Li1/n$e;-><init>(Li1/n$d;ILe1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Li1/n$e;->b:I

    invoke-static {v0}, La/b;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Li1/n$e;->g:Le1/a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Li1/n$e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Li1/n$e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Li1/n$e;->f:Li1/n$d;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Li1/n$e;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Lh1/x;->D(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
