.class public final Lp0/b;
.super Lp0/a;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public final b:Landroid/os/Parcel;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;IILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lp0/a;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lp0/b;->a:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    iput v0, p0, Lp0/b;->f:I

    iput-object p1, p0, Lp0/b;->b:Landroid/os/Parcel;

    iput p2, p0, Lp0/b;->c:I

    iput p3, p0, Lp0/b;->d:I

    iput p2, p0, Lp0/b;->g:I

    iput-object p4, p0, Lp0/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget v0, p0, Lp0/b;->f:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lp0/b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    iget-object v3, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public final b()Lp0/a;
    .registers 8

    new-instance v0, Lp0/b;

    iget-object v1, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v3, p0, Lp0/b;->g:I

    iget v4, p0, Lp0/b;->c:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lp0/b;->d:I

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lp0/b;->e:Ljava/lang/String;

    const-string v6, "  "

    .line 1
    invoke-static {v4, v5, v6}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-direct {v0, v1, v2, v3, v4}, Lp0/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-object v0
.end method

.method public final d()[B
    .registers 3

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-array v0, v0, [B

    iget-object v1, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public final e(I)Z
    .registers 6

    .line 1
    :cond_0
    iget v0, p0, Lp0/b;->g:I

    iget v1, p0, Lp0/b;->d:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget v3, p0, Lp0/b;->g:I

    add-int/2addr v3, v0

    iput v3, p0, Lp0/b;->g:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-ne p1, v2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_2
    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public final h()Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    const-class v1, Lp0/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l(I)V
    .registers 4

    invoke-virtual {p0}, Lp0/b;->a()V

    iput p1, p0, Lp0/b;->f:I

    iget-object v0, p0, Lp0/b;->a:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp0/b;->n(I)V

    invoke-virtual {p0, p1}, Lp0/b;->n(I)V

    return-void
.end method

.method public final m([B)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp0/b;->b:Landroid/os/Parcel;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public final n(I)V
    .registers 3

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final p(Landroid/os/Parcelable;)V
    .registers 4

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lp0/b;->b:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
