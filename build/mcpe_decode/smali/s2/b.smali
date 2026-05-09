.class public final Ls2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:[B


# instance fields
.field public final a:Z

.field public b:I

.field public c:Ljava/io/OutputStream;

.field public final d:[B

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ls2/b;->i:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc00

    new-array v0, v0, [B

    iput-object v0, p0, Ls2/b;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Ls2/b;->e:I

    const/16 v1, 0x4d

    iput v1, p0, Ls2/b;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Ls2/b;->c:Ljava/io/OutputStream;

    iput-boolean v0, p0, Ls2/b;->a:Z

    iput-boolean v0, p0, Ls2/b;->g:Z

    iput-boolean v0, p0, Ls2/b;->h:Z

    iput-boolean v0, p0, Ls2/b;->f:Z

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 3

    iget v0, p0, Ls2/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ls2/b;->b:I

    const/16 v1, 0x3d

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 1
    invoke-virtual {p0, v1}, Ls2/b;->d(B)V

    const/16 v0, 0xd

    .line 2
    invoke-virtual {p0, v0}, Ls2/b;->d(B)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ls2/b;->d(B)V

    const/16 v0, 0x4c

    iput v0, p0, Ls2/b;->b:I

    :cond_0
    and-int/lit16 p1, p1, 0xff

    .line 3
    invoke-virtual {p0, v1}, Ls2/b;->d(B)V

    iget v0, p0, Ls2/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ls2/b;->b:I

    sget-object v0, Ls2/b;->i:[B

    shr-int/lit8 v1, p1, 0x4

    aget-byte v1, v0, v1

    invoke-virtual {p0, v1}, Ls2/b;->d(B)V

    iget v1, p0, Ls2/b;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ls2/b;->b:I

    rem-int/lit8 p1, p1, 0x10

    aget-byte p1, v0, p1

    invoke-virtual {p0, p1}, Ls2/b;->d(B)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget v0, p0, Ls2/b;->e:I

    iget-object v1, p0, Ls2/b;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ls2/b;->c:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls2/b;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    iput v3, p0, Ls2/b;->e:I

    return-void
.end method

.method public final c(B)V
    .locals 2

    iget v0, p0, Ls2/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ls2/b;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/16 v0, 0x3d

    .line 1
    invoke-virtual {p0, v0}, Ls2/b;->d(B)V

    const/16 v0, 0xd

    .line 2
    invoke-virtual {p0, v0}, Ls2/b;->d(B)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ls2/b;->d(B)V

    const/16 v0, 0x4c

    iput v0, p0, Ls2/b;->b:I

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ls2/b;->d(B)V

    return-void
.end method

.method public final d(B)V
    .locals 3

    iget-object v0, p0, Ls2/b;->d:[B

    iget v1, p0, Ls2/b;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ls2/b;->e:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-lt v2, p1, :cond_0

    invoke-virtual {p0}, Ls2/b;->b()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Ls2/b;->g:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    invoke-virtual {p0, v0}, Ls2/b;->c(B)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Ls2/b;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Ls2/b;->f:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls2/b;->g:Z

    iput-boolean v0, p0, Ls2/b;->h:Z

    iput-boolean v0, p0, Ls2/b;->f:Z

    return-void
.end method
