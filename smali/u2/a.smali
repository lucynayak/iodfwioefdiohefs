.class public final Lu2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/b;


# static fields
.field public static m:[I


# instance fields
.field public b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[I>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public final e:[I

.field public f:I

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Lu2/f;

.field public k:Lu2/c;

.field public l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lu2/a;->m:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x10
        0x380000
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu2/a;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu2/a;->h:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lu2/a;->e:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lu2/a;->b:Ljava/util/Vector;

    const/4 v1, -0x1

    iput v1, p0, Lu2/a;->d:I

    new-instance v2, Lu2/e;

    invoke-direct {v2, p1}, Lu2/e;-><init>(Ljava/io/Reader;)V

    new-instance p1, Lu2/c;

    invoke-direct {p1, v2}, Lu2/c;-><init>(Lu2/e;)V

    iput-object p1, p0, Lu2/a;->k:Lu2/c;

    new-instance p1, Lu2/f;

    invoke-direct {p1}, Lu2/f;-><init>()V

    iput-object p1, p0, Lu2/a;->j:Lu2/f;

    iput v1, p0, Lu2/a;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lu2/a;->c:I

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v2, p0, Lu2/a;->e:[I

    aput v1, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lu2/f;
    .registers 9

    iget-object v0, p0, Lu2/a;->j:Lu2/f;

    iget-object v1, v0, Lu2/f;->e:Lu2/f;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lu2/a;->k:Lu2/c;

    invoke-virtual {v1}, Lu2/c;->b()Lu2/f;

    move-result-object v1

    iput-object v1, v0, Lu2/f;->e:Lu2/f;

    :goto_0
    iput-object v1, p0, Lu2/a;->j:Lu2/f;

    const/4 v2, -0x1

    iput v2, p0, Lu2/a;->f:I

    iget v3, v1, Lu2/f;->d:I

    const/4 v4, 0x1

    if-ne v3, p1, :cond_1

    iget p1, p0, Lu2/a;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lu2/a;->c:I

    return-object v1

    :cond_1
    iput-object v0, p0, Lu2/a;->j:Lu2/f;

    iput p1, p0, Lu2/a;->d:I

    .line 1
    iget-object p1, p0, Lu2/a;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    const/16 p1, 0x18

    new-array v0, p1, [Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_2

    aput-boolean v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Lu2/a;->d:I

    if-ltz v3, :cond_3

    aput-boolean v4, v0, v3

    iput v2, p0, Lu2/a;->d:I

    :cond_3
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lu2/a;->e:[I

    aget v3, v3, v2

    iget v5, p0, Lu2/a;->c:I

    if-ne v3, v5, :cond_5

    const/4 v3, 0x0

    :goto_3
    const/16 v5, 0x20

    if-ge v3, v5, :cond_5

    sget-object v5, Lu2/a;->m:[I

    aget v5, v5, v2

    shl-int v6, v4, v3

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    aput-boolean v4, v0, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_8

    aget-boolean v3, v0, v2

    if-eqz v3, :cond_7

    new-array v3, v4, [I

    aput v2, v3, v1

    iget-object v5, p0, Lu2/a;->b:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lu2/a;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [[I

    :goto_5
    iget-object v0, p0, Lu2/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lu2/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    new-instance v0, Lu2/d;

    iget-object v1, p0, Lu2/a;->j:Lu2/f;

    sget-object v2, Lu2/b;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lu2/d;-><init>(Lu2/f;[[I[Ljava/lang/String;)V

    .line 2
    throw v0
.end method

.method public final b()I
    .registers 3

    iget-object v0, p0, Lu2/a;->j:Lu2/f;

    iget-object v1, v0, Lu2/f;->e:Lu2/f;

    if-nez v1, :cond_0

    iget-object v1, p0, Lu2/a;->k:Lu2/c;

    invoke-virtual {v1}, Lu2/c;->b()Lu2/f;

    move-result-object v1

    iput-object v1, v0, Lu2/f;->e:Lu2/f;

    :cond_0
    iget v0, v1, Lu2/f;->d:I

    iput v0, p0, Lu2/a;->f:I

    return v0
.end method

.method public final c()V
    .registers 5

    const/16 v0, 0x15

    .line 1
    invoke-virtual {p0, v0}, Lu2/a;->a(I)Lu2/f;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lu2/a;->a(I)Lu2/f;

    invoke-virtual {p0, v0}, Lu2/a;->a(I)Lu2/f;

    move-result-object v2

    iget-object v1, v1, Lu2/f;->c:Ljava/lang/String;

    iput-object v1, p0, Lu2/a;->l:Ljava/lang/String;

    iget-object v1, v2, Lu2/f;->c:Ljava/lang/String;

    iput-object v1, p0, Lu2/a;->i:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lu2/a;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lu2/a;->b()I

    move-result v1

    :cond_0
    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    iget-object v0, p0, Lu2/a;->e:[I

    const/4 v1, 0x1

    iget v2, p0, Lu2/a;->c:I

    aput v2, v0, v1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lu2/a;->a(I)Lu2/f;

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, v3}, Lu2/a;->a(I)Lu2/f;

    .line 4
    invoke-virtual {p0, v0}, Lu2/a;->a(I)Lu2/f;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lu2/a;->a(I)Lu2/f;

    .line 5
    iget v3, p0, Lu2/a;->f:I

    if-ne v3, v2, :cond_2

    invoke-virtual {p0}, Lu2/a;->b()I

    move-result v3

    :cond_2
    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Lu2/a;->e:[I

    const/4 v1, 0x2

    iget v3, p0, Lu2/a;->c:I

    aput v3, v0, v1

    invoke-virtual {p0, v2}, Lu2/a;->a(I)Lu2/f;

    new-instance v0, Lu2/d;

    invoke-direct {v0}, Lu2/d;-><init>()V

    throw v0

    :pswitch_0
    const/16 v2, 0x15

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x14

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x13

    :goto_1
    invoke-virtual {p0, v2}, Lu2/a;->a(I)Lu2/f;

    move-result-object v2

    iget-object v2, v2, Lu2/f;->c:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lu2/a;->g:Ljava/util/ArrayList;

    iget-object v1, v1, Lu2/f;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lu2/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
