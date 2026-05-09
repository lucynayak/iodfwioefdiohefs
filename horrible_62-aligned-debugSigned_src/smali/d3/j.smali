.class public final Ld3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/j$a;
    }
.end annotation


# instance fields
.field public a:Ld3/j$a;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ld3/h;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p1, p1, Ld3/h;->a:I

    .line 3
    iput p1, p0, Ld3/j;->c:I

    new-instance p1, Ld3/j$a;

    invoke-direct {p1}, Ld3/j$a;-><init>()V

    iput-object p1, p0, Ld3/j;->a:Ld3/j$a;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .registers 8

    iget v0, p0, Ld3/j;->c:I

    if-lez v0, :cond_7

    iget-object v0, p0, Ld3/j;->a:Ld3/j$a;

    .line 1
    iget-object v0, v0, Ld3/j$a;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 2
    iget v0, p0, Ld3/j;->b:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/16 v0, 0xa

    aput-char v0, v1, v2

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Ld3/j;->b:I

    if-gt v0, v3, :cond_1

    const/16 v3, 0x20

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_2
    const-string v0, "\n"

    .line 3
    :goto_2
    iget-object v1, p0, Ld3/j;->a:Ld3/j$a;

    .line 4
    iget-object v3, v1, Ld3/j$a;->b:[Ljava/lang/String;

    array-length v3, v3

    if-lt p1, v3, :cond_4

    mul-int/lit8 v3, p1, 0x2

    .line 5
    new-array v3, v3, [Ljava/lang/String;

    :goto_3
    iget-object v4, v1, Ld3/j$a;->b:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iput-object v3, v1, Ld3/j$a;->b:[Ljava/lang/String;

    .line 6
    :cond_4
    iget v2, v1, Ld3/j$a;->a:I

    if-le p1, v2, :cond_5

    iput p1, v1, Ld3/j$a;->a:I

    :cond_5
    iget-object v1, v1, Ld3/j$a;->b:[Ljava/lang/String;

    aput-object v0, v1, p1

    .line 7
    :cond_6
    iget-object p1, p0, Ld3/j;->a:Ld3/j$a;

    .line 8
    iget p1, p1, Ld3/j$a;->a:I

    if-lez p1, :cond_7

    return-object v0

    :cond_7
    const-string p1, ""

    return-object p1
.end method
