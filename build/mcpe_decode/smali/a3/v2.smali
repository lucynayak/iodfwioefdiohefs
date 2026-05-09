.class public final La3/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lb3/b;

.field public b:La3/u2;

.field public c:I

.field public d:La3/u2;

.field public e:La3/u2;


# direct methods
.method public constructor <init>(Lb3/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/u2;

    invoke-direct {v0}, La3/u2;-><init>()V

    iput-object v0, p0, La3/v2;->d:La3/u2;

    new-instance v0, La3/u2;

    invoke-direct {v0}, La3/u2;-><init>()V

    iput-object v0, p0, La3/v2;->b:La3/u2;

    new-instance v0, La3/u2;

    invoke-direct {v0}, La3/u2;-><init>()V

    iput-object v0, p0, La3/v2;->e:La3/u2;

    iput-object p1, p0, La3/v2;->a:Lb3/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    :cond_0
    :goto_0
    iget v0, p0, La3/v2;->c:I

    iget-object v1, p0, La3/v2;->d:La3/u2;

    iget v2, v1, La3/u2;->b:I

    if-ge v0, v2, :cond_7

    iget-object v1, v1, La3/u2;->a:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, La3/v2;->c:I

    aget-char v0, v1, v0

    const/16 v4, 0x24

    if-ne v0, v4, :cond_6

    if-ge v3, v2, :cond_6

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, La3/v2;->c:I

    aget-char v1, v1, v3

    const/16 v3, 0x7b

    if-ne v1, v3, :cond_5

    .line 1
    :goto_1
    iget v0, p0, La3/v2;->c:I

    iget-object v1, p0, La3/v2;->d:La3/u2;

    iget v2, v1, La3/u2;->b:I

    const/4 v3, 0x0

    const-string v4, "${"

    if-ge v0, v2, :cond_4

    iget-object v1, v1, La3/u2;->a:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, La3/v2;->c:I

    aget-char v0, v1, v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, La3/v2;->b:La3/u2;

    .line 3
    iget v1, v0, La3/u2;->b:I

    if-lez v1, :cond_2

    .line 4
    invoke-virtual {v0}, La3/u2;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, La3/v2;->a:Lb3/b;

    invoke-interface {v1, v0}, Lb3/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, La3/v2;->e:La3/u2;

    invoke-virtual {v1, v4}, La3/u2;->a(Ljava/lang/String;)V

    iget-object v1, p0, La3/v2;->e:La3/u2;

    invoke-virtual {v1, v0}, La3/u2;->a(Ljava/lang/String;)V

    iget-object v0, p0, La3/v2;->e:La3/u2;

    const-string v1, "}"

    goto :goto_2

    :cond_1
    iget-object v0, p0, La3/v2;->e:La3/u2;

    :goto_2
    invoke-virtual {v0, v1}, La3/u2;->a(Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v0, p0, La3/v2;->b:La3/u2;

    .line 7
    iput v3, v0, La3/u2;->b:I

    goto :goto_3

    .line 8
    :cond_3
    iget-object v1, p0, La3/v2;->b:La3/u2;

    .line 9
    iget v2, v1, La3/u2;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, La3/u2;->b(I)V

    iget-object v2, v1, La3/u2;->a:[C

    iget v3, v1, La3/u2;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, La3/u2;->b:I

    aput-char v0, v2, v3

    goto :goto_1

    .line 10
    :cond_4
    :goto_3
    iget-object v0, p0, La3/v2;->b:La3/u2;

    .line 11
    iget v0, v0, La3/u2;->b:I

    if-lez v0, :cond_0

    .line 12
    iget-object v0, p0, La3/v2;->e:La3/u2;

    invoke-virtual {v0, v4}, La3/u2;->a(Ljava/lang/String;)V

    iget-object v0, p0, La3/v2;->e:La3/u2;

    iget-object v1, p0, La3/v2;->b:La3/u2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, v1, La3/u2;->a:[C

    iget v1, v1, La3/u2;->b:I

    .line 14
    iget v4, v0, La3/u2;->b:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, La3/u2;->b(I)V

    iget-object v4, v0, La3/u2;->a:[C

    iget v5, v0, La3/u2;->b:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, La3/u2;->b:I

    add-int/2addr v1, v2

    iput v1, v0, La3/u2;->b:I

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 15
    iput v2, p0, La3/v2;->c:I

    :cond_6
    iget-object v1, p0, La3/v2;->e:La3/u2;

    .line 16
    iget v2, v1, La3/u2;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, La3/u2;->b(I)V

    iget-object v2, v1, La3/u2;->a:[C

    iget v3, v1, La3/u2;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, La3/u2;->b:I

    aput-char v0, v2, v3

    goto/16 :goto_0

    :cond_7
    return-void
.end method
