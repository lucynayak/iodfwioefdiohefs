.class public final Le2/jb;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:Li2/d;

.field public p:Li2/e;


# direct methods
.method public constructor <init>()V
    .locals 7

    const-string v0, "Jump Button"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Movement"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Height"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/jb;->o:Li2/d;

    new-instance v3, Li2/e;

    const-string v4, "Air jump"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Le2/jb;->p:Li2/e;

    const/4 v4, 0x2

    new-array v4, v4, [Li2/c;

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-virtual {p0, v4}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x3fdae147ae147ae1L    # 0.42
        0x3fb999999999999aL    # 0.1
        0x4000000000000000L    # 2.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final D()V
    .locals 5

    iget-object v0, p0, Le2/jb;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->isOnGround(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le2/jb;->o:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/b;->c:Z

    return-void
.end method
