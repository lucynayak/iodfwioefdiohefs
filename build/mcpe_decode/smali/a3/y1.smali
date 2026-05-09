.class public final La3/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/y1$a;
    }
.end annotation


# instance fields
.field public b:Z

.field public c:Lf3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf3/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/StringBuilder;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:[C

.field public h:Lf3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf3/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:Ly1/a;

.field public q:Lc3/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc3/c;Ld3/h;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/y1;->c:Lf3/b;

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/y1;->h:Lf3/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La3/y1;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La3/y1;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La3/y1;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    .line 1
    iget-object p3, p3, Ld3/h;->c:Ly1/a;

    .line 2
    iput-object p3, p0, La3/y1;->p:Ly1/a;

    iput-object p2, p0, La3/y1;->q:Lc3/c;

    iput-object p1, p0, La3/y1;->m:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    iput p3, p0, La3/y1;->f:I

    new-array v0, p3, [C

    iput-object v0, p0, La3/y1;->g:[C

    invoke-virtual {p1, p2, p3, v0, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 4
    :cond_0
    iget-object p1, p0, La3/y1;->g:[C

    iget p3, p0, La3/y1;->l:I

    aget-char v0, p1, p3

    const/4 v1, 0x2

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1c

    aget-char v0, p1, p3

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    .line 5
    array-length v0, p1

    if-le v0, v3, :cond_2

    add-int/2addr p3, v3

    aget-char p1, p1, p3

    if-ne p1, v2, :cond_1

    iput p3, p0, La3/y1;->l:I

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    iget-object p3, p0, La3/y1;->m:Ljava/lang/String;

    aput-object p3, p1, p2

    iget-object p2, p0, La3/y1;->q:Lc3/c;

    aput-object p2, p1, v3

    new-instance p2, La3/d;

    const-string p3, "Path \'%s\' in %s has an illegal syntax"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    iget p1, p0, La3/y1;->l:I

    add-int/2addr p1, v3

    iput p1, p0, La3/y1;->l:I

    iput p1, p0, La3/y1;->o:I

    .line 6
    :cond_3
    :goto_1
    iget p1, p0, La3/y1;->l:I

    iget p3, p0, La3/y1;->f:I

    const/16 v0, 0x40

    const/16 v4, 0x3a

    const/16 v5, 0x5d

    const/16 v6, 0x5b

    if-ge p1, p3, :cond_15

    iget-boolean p3, p0, La3/y1;->b:Z

    if-nez p3, :cond_14

    .line 7
    iget-object p3, p0, La3/y1;->g:[C

    aget-char p3, p3, p1

    if-eq p3, v2, :cond_13

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne p3, v0, :cond_7

    add-int/lit8 p1, p1, 0x1

    .line 8
    iput p1, p0, La3/y1;->l:I

    :goto_2
    iget p3, p0, La3/y1;->l:I

    iget v0, p0, La3/y1;->f:I

    if-ge p3, v0, :cond_5

    iget-object v0, p0, La3/y1;->g:[C

    add-int/lit8 v4, p3, 0x1

    iput v4, p0, La3/y1;->l:I

    aget-char p3, v0, p3

    invoke-virtual {p0, p3}, La3/y1;->D(C)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p2, p0, La3/y1;->m:Ljava/lang/String;

    aput-object p2, p1, v3

    iget-object p2, p0, La3/y1;->q:Lc3/c;

    aput-object p2, p1, v1

    new-instance p2, La3/d;

    const-string p3, "Illegal character \'%s\' in attribute for \'%s\' in %s"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_5
    if-le p3, p1, :cond_6

    iput-boolean v3, p0, La3/y1;->b:Z

    sub-int/2addr p3, p1

    .line 9
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, La3/y1;->g:[C

    invoke-direct {v0, v4, p1, p3}, Ljava/lang/String;-><init>([CII)V

    if-lez p3, :cond_12

    .line 10
    iget-object p1, p0, La3/y1;->p:Ly1/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La3/y1;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_6
    new-array p1, v1, [Ljava/lang/Object;

    .line 11
    iget-object p3, p0, La3/y1;->m:Ljava/lang/String;

    aput-object p3, p1, p2

    iget-object p2, p0, La3/y1;->q:Lc3/c;

    aput-object p2, p1, v3

    new-instance p2, La3/d;

    const-string p3, "Attribute reference in \'%s\' for %s is empty"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_7
    const/4 p3, 0x0

    .line 12
    :goto_3
    iget v9, p0, La3/y1;->l:I

    iget v10, p0, La3/y1;->f:I

    if-ge v9, v10, :cond_10

    iget-object v10, p0, La3/y1;->g:[C

    add-int/lit8 v11, v9, 0x1

    iput v11, p0, La3/y1;->l:I

    aget-char v9, v10, v9

    invoke-virtual {p0, v9}, La3/y1;->D(C)Z

    move-result v10

    if-nez v10, :cond_f

    if-ne v9, v0, :cond_8

    iget v0, p0, La3/y1;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La3/y1;->l:I

    goto/16 :goto_6

    :cond_8
    if-ne v9, v6, :cond_d

    .line 13
    iget-object v0, p0, La3/y1;->g:[C

    iget v7, p0, La3/y1;->l:I

    add-int/lit8 v7, v7, -0x1

    aget-char v0, v0, v7

    if-ne v0, v6, :cond_a

    const/4 v0, 0x0

    :goto_4
    iget v6, p0, La3/y1;->l:I

    iget v7, p0, La3/y1;->f:I

    if-ge v6, v7, :cond_b

    iget-object v7, p0, La3/y1;->g:[C

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, La3/y1;->l:I

    aget-char v6, v7, v6

    .line 14
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_5

    :cond_9
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x30

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 15
    :cond_b
    :goto_5
    iget-object v6, p0, La3/y1;->g:[C

    iget v7, p0, La3/y1;->l:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, La3/y1;->l:I

    sub-int/2addr v7, v3

    aget-char v6, v6, v7

    if-ne v6, v5, :cond_c

    iget-object v5, p0, La3/y1;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-array p1, v1, [Ljava/lang/Object;

    iget-object p3, p0, La3/y1;->m:Ljava/lang/String;

    aput-object p3, p1, p2

    iget-object p2, p0, La3/y1;->q:Lc3/c;

    aput-object p2, p1, v3

    new-instance p2, La3/d;

    const-string p3, "Invalid index for path \'%s\' in %s"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_d
    if-ne v9, v2, :cond_e

    goto :goto_6

    :cond_e
    new-array p1, v7, [Ljava/lang/Object;

    .line 16
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p2, p0, La3/y1;->m:Ljava/lang/String;

    aput-object p2, p1, v3

    iget-object p2, p0, La3/y1;->q:Lc3/c;

    aput-object p2, p1, v1

    new-instance p2, La3/d;

    const-string p3, "Illegal character \'%s\' in element for \'%s\' in %s"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_f
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_3

    .line 17
    :cond_10
    :goto_6
    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, La3/y1;->g:[C

    invoke-direct {v0, v5, p1, p3}, Ljava/lang/String;-><init>([CII)V

    if-lez p3, :cond_12

    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_11
    iget-object p1, p0, La3/y1;->p:Ly1/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La3/y1;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_12
    :goto_7
    iget-object p1, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p3, p0, La3/y1;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p1, p3, :cond_3

    iget-object p1, p0, La3/y1;->i:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    new-array p1, v1, [Ljava/lang/Object;

    .line 20
    iget-object p3, p0, La3/y1;->m:Ljava/lang/String;

    aput-object p3, p1, p2

    iget-object p2, p0, La3/y1;->q:Lc3/c;

    aput-object p2, p1, v3

    new-instance p2, La3/d;

    const-string p3, "Invalid path expression \'%s\' in %s"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_14
    new-array p1, v1, [Ljava/lang/Object;

    .line 21
    iget-object p3, p0, La3/y1;->m:Ljava/lang/String;

    aput-object p3, p1, p2

    iget-object p2, p0, La3/y1;->q:Lc3/c;

    aput-object p2, p1, v3

    new-instance p2, La3/d;

    const-string p3, "Path \'%s\' in %s references an invalid attribute"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_15
    add-int/lit8 p1, p1, -0x1

    .line 22
    iget-object p3, p0, La3/y1;->g:[C

    array-length v1, p3

    if-lt p1, v1, :cond_16

    goto :goto_8

    :cond_16
    aget-char p3, p3, p1

    if-ne p3, v2, :cond_17

    :goto_8
    iput p1, p0, La3/y1;->l:I

    .line 23
    :cond_17
    iget-object p1, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p3, p1, -0x1

    :goto_9
    if-ge p2, p1, :cond_1b

    iget-object v1, p0, La3/y1;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, La3/y1;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez p2, :cond_18

    iget-object v8, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    iget-boolean v8, p0, La3/y1;->b:Z

    if-eqz v8, :cond_19

    if-ne p2, p3, :cond_19

    iget-object v1, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_19
    if-eqz v1, :cond_1a

    iget-object v8, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v1, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_1b
    iget-object p1, p0, La3/y1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La3/y1;->j:Ljava/lang/String;

    return-void

    :cond_1c
    new-array p1, v1, [Ljava/lang/Object;

    .line 24
    iget-object p3, p0, La3/y1;->m:Ljava/lang/String;

    aput-object p3, p1, p2

    iget-object p2, p0, La3/y1;->q:Lc3/c;

    aput-object p2, p1, v3

    new-instance p2, La3/d;

    const-string p3, "Path \'%s\' in %s references document root"

    invoke-direct {p2, p3, p1}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/y1;->p:Ly1/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, La3/y1;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    const-string v0, "/@"

    .line 1
    invoke-static {p1, v0, p2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/y1;->p:Ly1/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, La3/y1;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, La3/y1;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[1]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final C(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final D(C)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/16 v0, 0x5f

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/y1;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()La3/s0;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, La3/y1;->u(II)La3/s0;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/y1;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/y1;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, La3/y1;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La3/y1;->c:Lf3/b;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, La3/y1;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, La3/y1;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La3/y1;->c:Lf3/b;

    .line 3
    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, La3/y1;->p:Ly1/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final getFirst()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/y1;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLast()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, La3/y1;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/y1;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, La3/y1;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La3/y1;->h:Lf3/b;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, La3/y1;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, La3/y1;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La3/y1;->h:Lf3/b;

    .line 3
    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, La3/y1;->p:Ly1/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final isAttribute()Z
    .locals 1

    iget-boolean v0, p0, La3/y1;->b:Z

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, La3/y1;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, La3/y1;->C(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, La3/y1;->l:I

    iget v1, p0, La3/y1;->o:I

    sub-int/2addr v0, v1

    iget-object v2, p0, La3/y1;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, La3/y1;->g:[C

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, La3/y1;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, La3/y1;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final u(II)La3/s0;
    .locals 1

    iget-object v0, p0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    new-instance p2, La3/y1$a;

    if-lt v0, p1, :cond_0

    invoke-direct {p2, p0, p1, v0}, La3/y1$a;-><init>(La3/y1;II)V

    return-object p2

    :cond_0
    invoke-direct {p2, p0, p1, p1}, La3/y1$a;-><init>(La3/y1;II)V

    return-object p2
.end method
