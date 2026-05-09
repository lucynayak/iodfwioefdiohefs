.class public final La3/y1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final synthetic g:La3/y1;


# direct methods
.method public constructor <init>(La3/y1;II)V
    .locals 0

    iput-object p1, p0, La3/y1$a;->g:La3/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La3/y1$a;->c:Ljava/util/ArrayList;

    iput p2, p0, La3/y1$a;->b:I

    iput p3, p0, La3/y1$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/y1$a;->g:La3/y1;

    iget-object v0, v0, La3/y1;->n:Ljava/util/ArrayList;

    iget v1, p0, La3/y1$a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()La3/s0;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, La3/y1$a;->u(II)La3/s0;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, La3/y1$a;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, La3/y1$a;->b:I

    const/16 v3, 0x2f

    if-ge v0, v2, :cond_0

    iget-object v2, p0, La3/y1$a;->g:La3/y1;

    iget-object v2, v2, La3/y1;->j:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget v4, p0, La3/y1$a;->d:I

    if-gt v0, v4, :cond_2

    iget-object v4, p0, La3/y1$a;->g:La3/y1;

    iget-object v4, v4, La3/y1;->j:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, La3/y1$a;->g:La3/y1;

    iget-object v2, v2, La3/y1;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, La3/y1$a;->g:La3/y1;

    iget-object v0, v0, La3/y1;->j:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, La3/y1$a;->f:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, La3/y1$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, La3/y1$a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La3/y1$a;->g:La3/y1;

    invoke-virtual {v1, v0, p1}, La3/y1;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getFirst()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/y1$a;->g:La3/y1;

    iget-object v0, v0, La3/y1;->k:Ljava/util/ArrayList;

    iget v1, p0, La3/y1$a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLast()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La3/y1$a;->g:La3/y1;

    iget-object v0, v0, La3/y1;->k:Ljava/util/ArrayList;

    iget v1, p0, La3/y1$a;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, La3/y1$a;->g:La3/y1;

    iget-object v0, v0, La3/y1;->i:Ljava/util/ArrayList;

    iget v1, p0, La3/y1$a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, La3/y1$a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La3/y1$a;->g:La3/y1;

    invoke-virtual {v1, v0, p1}, La3/y1;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final isAttribute()Z
    .locals 2

    iget-object v0, p0, La3/y1$a;->g:La3/y1;

    iget-boolean v1, v0, La3/y1;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, La3/y1$a;->d:I

    iget-object v0, v0, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, La3/y1$a;->b:I

    iget v1, p0, La3/y1$a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/y1$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, La3/y1$a;->b:I

    :goto_0
    iget v1, p0, La3/y1$a;->d:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, La3/y1$a;->g:La3/y1;

    iget-object v1, v1, La3/y1;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, La3/y1$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La3/y1$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .locals 2

    iget v0, p0, La3/y1$a;->d:I

    iget v1, p0, La3/y1$a;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, La3/y1$a;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1
    iget-object v0, p0, La3/y1$a;->g:La3/y1;

    iget v0, v0, La3/y1;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, La3/y1$a;->d:I

    if-gt v1, v3, :cond_2

    iget-object v3, p0, La3/y1$a;->g:La3/y1;

    iget v4, v3, La3/y1;->f:I

    if-lt v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, v3, La3/y1;->g:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v0, v3, v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, La3/y1$a;->b:I

    if-ne v1, v0, :cond_1

    move v0, v4

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, La3/y1$a;->g:La3/y1;

    iget-object v3, v3, La3/y1;->g:[C

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v2

    invoke-direct {v1, v3, v2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 2
    iput-object v1, p0, La3/y1$a;->e:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, La3/y1$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final u(II)La3/s0;
    .locals 3

    new-instance v0, La3/y1$a;

    iget-object v1, p0, La3/y1$a;->g:La3/y1;

    iget v2, p0, La3/y1$a;->b:I

    add-int/2addr p1, v2

    iget v2, p0, La3/y1$a;->d:I

    sub-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, La3/y1$a;-><init>(La3/y1;II)V

    return-object v0
.end method
