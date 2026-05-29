.class public final Lf2/f;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/b;

.field public final p:Li2/d;


# direct methods
.method public constructor <init>()V
    .registers 6

    const-string v0, "Glide"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/b;

    const-string v2, "Horizontal"

    const-string v3, "Up"

    const-string v4, "Down"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mode"

    invoke-direct {v0, v3, v2}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Lf2/e;

    invoke-direct {v2, p0}, Lf2/e;-><init>(Lf2/f;)V

    .line 1
    iput-object v2, v0, Li2/b;->g:Li2/b$a;

    .line 2
    iput-object v0, p0, Lf2/f;->o:Li2/b;

    new-instance v2, Li2/d;

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_0

    const-string v4, "Velocity"

    invoke-direct {v2, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Lf2/f;->p:Li2/d;

    const/4 v3, 0x2

    new-array v3, v3, [Li2/c;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    invoke-virtual {p0, v3}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x4014000000000000L    # 5.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final I()V
    .registers 3

    iget-object v0, p0, Lf2/f;->p:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .registers 7

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lf2/f;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x367897bc    # -1109256.5f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0xabb

    if-eq v2, v3, :cond_2

    const v3, 0x2098c2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "Up"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "Horizontal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string v0, "current"

    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lf2/f;->p:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    neg-double v0, v0

    goto :goto_1

    .line 1
    :cond_7
    iget-object v1, p0, Lf2/f;->p:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 2
    :goto_2
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    :cond_9
    :goto_3
    return-void
.end method
