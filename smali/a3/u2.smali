.class public final La3/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[C

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, La3/u2;->a:[C

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    iget v0, p0, La3/u2;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, La3/u2;->b(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, La3/u2;->a:[C

    iget v2, p0, La3/u2;->b:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, La3/u2;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, La3/u2;->b:I

    return-void
.end method

.method public final b(I)V
    .registers 5

    iget-object v0, p0, La3/u2;->a:[C

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    iget-object v0, p0, La3/u2;->a:[C

    iget v1, p0, La3/u2;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, La3/u2;->a:[C

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, La3/u2;->a:[C

    iget v2, p0, La3/u2;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
