.class public final Le1/u$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/u$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public final b:Lh1/p;

.field public final c:Ljava/io/OutputStream;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lh1/p;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le1/u$g;->a:Z

    iput-object p1, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    iput-object p2, p0, Le1/u$g;->b:Lh1/p;

    iput-boolean p3, p0, Le1/u$g;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Le1/u$g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "%s"

    invoke-virtual {p0, p2, p1}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Le1/u$g;->h()V

    iget-object p1, p0, Le1/u$g;->b:Lh1/p;

    if-eqz p1, :cond_0

    invoke-static {}, Le1/r;->b()V

    :cond_0
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Le1/u$g;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le1/u$g;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le1/u$g;->a:Z

    :cond_0
    iget-object v0, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_1
    iget-object v0, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Le1/u$g;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Content-Disposition: form-data; name=\"%s\""

    invoke-virtual {p0, p1, v0}, Le1/u$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "; filename=\"%s\""

    invoke-virtual {p0, p2, p1}, Le1/u$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Content-Type"

    aput-object v0, p1, v2

    aput-object p3, p1, v1

    const-string p3, "%s: %s"

    invoke-virtual {p0, p3, p1}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p2, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string p1, "%s="

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Le1/u$g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    instance-of p1, p1, Le1/d0;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Lh1/x;->a:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 1
    :try_start_0
    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lr0/e;->k()V

    sget-object v0, Le1/r;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "_size"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4
    iget-object p1, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    check-cast p1, Le1/d0;

    invoke-virtual {p1, v0, v1}, Le1/d0;->b(J)V

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p2

    .line 6
    :cond_2
    sget-object p1, Le1/r;->a:Ljava/lang/Object;

    .line 7
    invoke-static {}, Lr0/e;->k()V

    sget-object p1, Le1/r;->c:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    iget-object p2, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lh1/x;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    add-int/2addr p1, p3

    :goto_0
    new-array p2, p3, [Ljava/lang/Object;

    const-string v0, ""

    invoke-virtual {p0, v0, p2}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Le1/u$g;->h()V

    iget-object p2, p0, Le1/u$g;->b:Lh1/p;

    if-eqz p2, :cond_3

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p3

    const-string p1, "<Data: %d>"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    invoke-static {}, Le1/r;->b()V

    :cond_3
    return-void
.end method

.method public final e(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 1

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Le1/u$g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    instance-of p3, p1, Le1/d0;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p1, Le1/d0;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Le1/d0;->b(J)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object p2, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lh1/x;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, ""

    invoke-virtual {p0, p3, p2}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Le1/u$g;->h()V

    iget-object p2, p0, Le1/u$g;->b:Lh1/p;

    if-eqz p2, :cond_2

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "<Data: %d>"

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Le1/r;->b()V

    :cond_2
    return-void
.end method

.method public final varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le1/u$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Le1/u$g;->d:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "\r\n"

    invoke-virtual {p0, p2, p1}, Le1/u$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/Object;Le1/u;)V
    .locals 3

    iget-object v0, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    instance-of v1, v0, Le1/f0;

    if-eqz v1, :cond_0

    check-cast v0, Le1/f0;

    invoke-interface {v0, p3}, Le1/f0;->a(Le1/u;)V

    .line 1
    :cond_0
    invoke-static {p2}, Le1/u;->l(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    invoke-static {p2}, Le1/u;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Le1/u$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of p3, p2, Landroid/graphics/Bitmap;

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    check-cast p2, Landroid/graphics/Bitmap;

    const-string p3, "image/png"

    .line 4
    invoke-virtual {p0, p1, p1, p3}, Le1/u$g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object p3, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    const/16 v2, 0x64

    invoke-virtual {p2, p1, v2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Le1/u$g;->h()V

    iget-object p1, p0, Le1/u$g;->b:Lh1/p;

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Le1/r;->b()V

    :cond_2
    return-void

    .line 6
    :cond_3
    instance-of p3, p2, [B

    if-eqz p3, :cond_5

    check-cast p2, [B

    const-string p3, "content/unknown"

    .line 7
    invoke-virtual {p0, p1, p1, p3}, Le1/u$g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Le1/u$g;->h()V

    iget-object p1, p0, Le1/u$g;->b:Lh1/p;

    if-eqz p1, :cond_4

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    const-string p2, "<Data: %d>"

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    invoke-static {}, Le1/r;->b()V

    :cond_4
    return-void

    .line 9
    :cond_5
    instance-of p3, p2, Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Le1/u$g;->d(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_6
    instance-of p3, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz p3, :cond_7

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, v0}, Le1/u$g;->e(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    return-void

    :cond_7
    instance-of p3, p2, Le1/u$f;

    const-string v0, "value is not a supported type."

    if-eqz p3, :cond_a

    check-cast p2, Le1/u$f;

    .line 10
    iget-object p3, p2, Le1/u$f;->c:Landroid/os/Parcelable;

    .line 11
    iget-object p2, p2, Le1/u$f;->b:Ljava/lang/String;

    .line 12
    instance-of v1, p3, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_8

    check-cast p3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p3, p2}, Le1/u$g;->e(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    return-void

    :cond_8
    instance-of v1, p3, Landroid/net/Uri;

    if-eqz v1, :cond_9

    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p3, p2}, Le1/u$g;->d(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1

    .line 15
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method

.method public final h()V
    .locals 3

    iget-boolean v0, p0, Le1/u$g;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v2, v0, v1

    const-string v1, "--%s"

    invoke-virtual {p0, v1, v0}, Le1/u$g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Le1/u$g;->c:Ljava/io/OutputStream;

    const-string v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
