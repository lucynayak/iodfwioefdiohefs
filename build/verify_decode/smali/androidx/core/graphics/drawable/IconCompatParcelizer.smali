.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lp0/a;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 8

    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>()V

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lp0/a;->g(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    const/4 v3, 0x2

    .line 1
    invoke-virtual {p0, v3}, Lp0/a;->e(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp0/a;->d()[B

    move-result-object v1

    .line 2
    :goto_0
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lp0/a;->i(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    const/4 v5, 0x4

    invoke-virtual {p0, v1, v5}, Lp0/a;->g(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    const/4 v6, 0x5

    invoke-virtual {p0, v1, v6}, Lp0/a;->g(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v7, 0x6

    invoke-virtual {p0, v1, v7}, Lp0/a;->i(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    const/4 v7, 0x7

    .line 3
    invoke-virtual {p0, v7}, Lp0/a;->e(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lp0/a;->j()Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_1
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    iget p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_6

    if-eq p0, v2, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v5, :cond_3

    if-eq p0, v6, :cond_4

    goto :goto_3

    :cond_2
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/String;

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    const-string v2, "UTF-16"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    :cond_4
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    iput v4, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    array-length p0, p0

    iput p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    goto :goto_3

    :cond_6
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz p0, :cond_7

    :goto_2
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_3
    return-object v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid icon"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;Lp0/a;)V
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_3

    if-eq v0, v6, :cond_3

    const-string v1, "UTF-16"

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 2
    :goto_0
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    invoke-virtual {p1, v0, v6}, Lp0/a;->o(II)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 3
    invoke-virtual {p1, v5}, Lp0/a;->l(I)V

    invoke-virtual {p1, v0}, Lp0/a;->m([B)V

    .line 4
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v4}, Lp0/a;->q(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    invoke-virtual {p1, v0, v3}, Lp0/a;->o(II)V

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    invoke-virtual {p1, v0, v2}, Lp0/a;->o(II)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lp0/a;->q(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    const/4 v0, 0x7

    .line 5
    invoke-virtual {p1, v0}, Lp0/a;->l(I)V

    invoke-virtual {p1, p0}, Lp0/a;->r(Ljava/lang/String;)V

    return-void
.end method
