.class public final Le2/af;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o2:Li2/d;

.field public p2:Li2/d;

.field public q2:Li2/d;

.field public r2:Li2/d;

.field public s2:Li2/d;

.field public t2:Li2/d;

.field public u2:Li2/d;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "CustomSky"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide v3, 0x3fd0000000000000L    # 0.25

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    aput-wide v3, v1, v2

    const-string v2, "Time"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/af;->o2:Li2/d;

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    aput-wide v3, v1, v2

    const-string v2, "Red"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/af;->p2:Li2/d;

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    aput-wide v3, v1, v2

    const-string v2, "Green"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/af;->q2:Li2/d;

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    aput-wide v3, v1, v2

    const-string v2, "Blue"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/af;->r2:Li2/d;

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    aput-wide v3, v1, v2

    const-string v2, "Sky Red"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/af;->s2:Li2/d;

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    aput-wide v3, v1, v2

    const-string v2, "Sky Green"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/af;->t2:Li2/d;

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    aput-wide v3, v1, v2

    const-string v2, "Sky Blue"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/af;->u2:Li2/d;

    const/4 v1, 0x7

    new-array v1, v1, [Li2/c;

    const/4 v2, 0x0

    iget-object v0, p0, Le2/af;->o2:Li2/d;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    iget-object v0, p0, Le2/af;->p2:Li2/d;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    iget-object v0, p0, Le2/af;->q2:Li2/d;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    iget-object v0, p0, Le2/af;->r2:Li2/d;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    iget-object v0, p0, Le2/af;->s2:Li2/d;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    iget-object v0, p0, Le2/af;->t2:Li2/d;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    iget-object v0, p0, Le2/af;->u2:Li2/d;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void
.end method

.method private S(Li2/d;I)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "current"

    invoke-virtual {p1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    const v2, 0x1718498

    if-eq p2, v2, :cond_0

    const v2, 0x3ca3d70a    # 0.02f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    const v0, 0x3ca3d70a    # 0.02f

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [C

    const/4 v2, 0x0

    and-int/lit16 v3, v0, 0xff

    aput-char v3, v1, v2

    const/4 v2, 0x1

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aput-char v3, v1, v2

    const/4 v2, 0x2

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aput-char v3, v1, v2

    const/4 v2, 0x3

    ushr-int/lit8 v0, v0, 0x18

    aput-char v0, v1, v2

    invoke-static {p2, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 3

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0x1718490

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const v1, 0x17166f8

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    const v1, 0x1716cc8

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x41s
        0xf6s
        0xf1s
        0x10s
        0x1s
        0xees
        0x10s
        0x2as
        0xc0s
        0xf2s
        0x76s
        0x50s
    .end array-data

    :array_1
    .array-data 2
        0x9fs
        0xeds
        0x11s
        0xas
        0x1s
        0xees
        0x10s
        0x2as
        0x9fs
        0xeds
        0x10s
        0x2as
        0x4fs
        0xf0s
        0x7es
        0x51s
        0x9fs
        0xeds
        0xfs
        0x3as
        0x21s
        0xees
        0x0s
        0xas
        0x21s
        0xees
        0x2s
        0x2as
        0x9fs
        0xeds
        0xes
        0x4as
    .end array-data

    :array_2
    .array-data 2
        0x2ds
        0xe9s
        0xf0s
        0x43s
        0x81s
        0xb0s
        0x2ds
        0xeds
        0x10s
        0x8bs
        0x84s
        0xb0s
        0xds
        0x46s
        0x4s
        0x46s
        0x29s
        0x68s
        0x99s
        0x46s
        0x28s
        0x69s
        0x16s
        0x46s
        0xd1s
        0xf8s
        0xd0s
        0x70s
        0x45s
        0xf4s
        0xfas
        0xc1s
    .end array-data
.end method

.method public final G()V
    .locals 3

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0x1718490

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const v1, 0x1718498

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    const v1, 0x17166f8

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    const v1, 0x1716cc8

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x1s
        0x48s
        0x70s
        0x47s
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x80s
        0x3es
    .end array-data

    :array_2
    .array-data 2
        0x4s
        0x49s
        0x1s
        0x60s
        0x4s
        0x49s
        0x41s
        0x60s
        0x4s
        0x49s
        0x81s
        0x60s
        0x4fs
        0xf0s
        0x7es
        0x51s
        0xc1s
        0x60s
        0x70s
        0x47s
        0x0s
        0x0s
        0x0s
        0x3fs
        0x0s
        0x0s
        0x0s
        0x3fs
        0x0s
        0x0s
        0x0s
        0x3fs
    .end array-data

    :array_3
    .array-data 2
        0x4s
        0x49s
        0x1s
        0x60s
        0x4s
        0x49s
        0x41s
        0x60s
        0x4s
        0x49s
        0x81s
        0x60s
        0x70s
        0x47s
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0x0s
        0x80s
        0x3fs
        0x0s
        0x0s
        0x80s
        0x3fs
        0x0s
        0x0s
        0x80s
        0x3fs
    .end array-data
.end method

.method public final J()V
    .locals 3

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/af;->o2:Li2/d;

    const v1, 0x1718498

    invoke-direct {p0, v0, v1}, Le2/af;->S(Li2/d;I)V

    iget-object v0, p0, Le2/af;->p2:Li2/d;

    const v1, 0x171670c

    invoke-direct {p0, v0, v1}, Le2/af;->S(Li2/d;I)V

    iget-object v0, p0, Le2/af;->q2:Li2/d;

    const v1, 0x1716710

    invoke-direct {p0, v0, v1}, Le2/af;->S(Li2/d;I)V

    iget-object v0, p0, Le2/af;->r2:Li2/d;

    const v1, 0x1716714

    invoke-direct {p0, v0, v1}, Le2/af;->S(Li2/d;I)V

    iget-object v0, p0, Le2/af;->s2:Li2/d;

    const v1, 0x1716cdc

    invoke-direct {p0, v0, v1}, Le2/af;->S(Li2/d;I)V

    iget-object v0, p0, Le2/af;->t2:Li2/d;

    const v1, 0x1716ce0

    invoke-direct {p0, v0, v1}, Le2/af;->S(Li2/d;I)V

    iget-object v0, p0, Le2/af;->u2:Li2/d;

    const v1, 0x1716ce4

    invoke-direct {p0, v0, v1}, Le2/af;->S(Li2/d;I)V

    :cond_0
    return-void
.end method
