.class public abstract Ls/f$e;
.super Ls/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field public a:[Lw/b$a;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/f$d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ls/f$e;->a:[Lw/b$a;

    return-void
.end method

.method public constructor <init>(Ls/f$e;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ls/f$d;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ls/f$e;->a:[Lw/b$a;

    iget-object v0, p1, Ls/f$e;->b:Ljava/lang/String;

    iput-object v0, p0, Ls/f$e;->b:Ljava/lang/String;

    iget v0, p1, Ls/f$e;->c:I

    iput v0, p0, Ls/f$e;->c:I

    iget-object p1, p1, Ls/f$e;->a:[Lw/b$a;

    invoke-static {p1}, Lw/b;->e([Lw/b$a;)[Lw/b$a;

    move-result-object p1

    iput-object p1, p0, Ls/f$e;->a:[Lw/b$a;

    return-void
.end method


# virtual methods
.method public getPathData()[Lw/b$a;
    .locals 1

    iget-object v0, p0, Ls/f$e;->a:[Lw/b$a;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls/f$e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lw/b$a;)V
    .locals 6

    iget-object v0, p0, Ls/f$e;->a:[Lw/b$a;

    invoke-static {v0, p1}, Lw/b;->a([Lw/b$a;[Lw/b$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lw/b;->e([Lw/b$a;)[Lw/b$a;

    move-result-object p1

    iput-object p1, p0, Ls/f$e;->a:[Lw/b$a;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ls/f$e;->a:[Lw/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lw/b$a;->a:C

    iput-char v4, v3, Lw/b$a;->a:C

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lw/b$a;->b:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v2

    iget-object v4, v4, Lw/b$a;->b:[F

    aget-object v5, p1, v2

    iget-object v5, v5, Lw/b$a;->b:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
