.class public final Ld3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[C

.field public static final g:[C

.field public static final h:[C

.field public static final i:[C

.field public static final j:[C

.field public static final k:[C

.field public static final l:[C

.field public static final m:[C


# instance fields
.field public a:Lh1/g;

.field public b:Ld3/j;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/io/BufferedWriter;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x5

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Ld3/i;->k:[C

    const/4 v1, 0x4

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    sput-object v2, Ld3/i;->j:[C

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    sput-object v2, Ld3/i;->i:[C

    const/4 v2, 0x6

    new-array v3, v2, [C

    fill-array-data v3, :array_3

    sput-object v3, Ld3/i;->h:[C

    new-array v2, v2, [C

    fill-array-data v2, :array_4

    sput-object v2, Ld3/i;->m:[C

    new-array v2, v0, [C

    fill-array-data v2, :array_5

    sput-object v2, Ld3/i;->f:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    sput-object v0, Ld3/i;->l:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_7

    sput-object v0, Ld3/i;->g:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x6ds
        0x6cs
        0x6es
        0x73s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x26s
        0x6cs
        0x74s
        0x3bs
    .end array-data

    :array_2
    .array-data 2
        0x26s
        0x67s
        0x74s
        0x3bs
    .end array-data

    :array_3
    .array-data 2
        0x26s
        0x71s
        0x75s
        0x6fs
        0x74s
        0x3bs
    .end array-data

    :array_4
    .array-data 2
        0x26s
        0x61s
        0x70s
        0x6fs
        0x73s
        0x3bs
    .end array-data

    :array_5
    .array-data 2
        0x26s
        0x61s
        0x6ds
        0x70s
        0x3bs
    .end array-data

    nop

    :array_6
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
        0x20s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x20s
        0x2ds
        0x2ds
        0x3es
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Ld3/h;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    new-instance p1, Ld3/j;

    invoke-direct {p1, p2}, Ld3/j;-><init>(Ld3/h;)V

    iput-object p1, p0, Ld3/i;->b:Ld3/j;

    new-instance p1, Lh1/g;

    invoke-direct {p1}, Lh1/g;-><init>()V

    iput-object p1, p0, Ld3/i;->a:Lh1/g;

    .line 1
    iget-object p1, p2, Ld3/h;->b:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Ld3/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(C)V
    .registers 3

    iget-object v0, p0, Ld3/i;->a:Lh1/g;

    iget-object v0, v0, Lh1/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Ld3/i;->a:Lh1/g;

    iget-object v0, v0, Lh1/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_1

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 1
    :cond_0
    sget-object v3, Ld3/i;->m:[C

    goto :goto_1

    :cond_1
    sget-object v3, Ld3/i;->f:[C

    goto :goto_1

    :cond_2
    sget-object v3, Ld3/i;->i:[C

    goto :goto_1

    :cond_3
    sget-object v3, Ld3/i;->j:[C

    goto :goto_1

    :cond_4
    sget-object v3, Ld3/i;->h:[C

    :goto_1
    if-eqz v3, :cond_5

    .line 2
    iget-object v2, p0, Ld3/i;->a:Lh1/g;

    iget-object v4, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v4}, Lh1/g;->c(Ljava/io/Writer;)V

    iget-object v2, p0, Ld3/i;->a:Lh1/g;

    invoke-virtual {v2}, Lh1/g;->a()V

    iget-object v2, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    goto :goto_2

    .line 3
    :cond_5
    invoke-virtual {p0, v2}, Ld3/i;->e(C)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .registers 2

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

.method public final e(C)V
    .registers 4

    iget-object v0, p0, Ld3/i;->a:Lh1/g;

    iget-object v1, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v1}, Lh1/g;->c(Ljava/io/Writer;)V

    iget-object v0, p0, Ld3/i;->a:Lh1/g;

    invoke-virtual {v0}, Lh1/g;->a()V

    iget-object v0, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Ld3/i;->a:Lh1/g;

    iget-object v1, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v1}, Lh1/g;->c(Ljava/io/Writer;)V

    iget-object v0, p0, Ld3/i;->a:Lh1/g;

    invoke-virtual {v0}, Lh1/g;->a()V

    iget-object v0, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Ld3/i;->a:Lh1/g;

    iget-object v1, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v1}, Lh1/g;->c(Ljava/io/Writer;)V

    iget-object v0, p0, Ld3/i;->a:Lh1/g;

    invoke-virtual {v0}, Lh1/g;->a()V

    invoke-virtual {p0, p2}, Ld3/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p2, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    iget-object p2, p0, Ld3/i;->e:Ljava/io/BufferedWriter;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
