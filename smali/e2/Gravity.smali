.class public final Le2/Gravity;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public final p:Li2/d;

.field public final q:Li2/e;


# direct methods
.method public constructor <init>()V
    .registers 8

    const-string v0, "Gravity"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Strength"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Gravity;->o:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const-string v2, "JumpBoost"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/Gravity;->p:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance v0, Li2/e;

    const-string v1, "AntiGravity"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Le2/Gravity;->q:Li2/e;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x0000000000000000L    # 0.0
        0x4000000000000000L    # 2.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x4008000000000000L    # 3.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final H()V
    .registers 8

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le2/Gravity;->q:Li2/e;

    iget-boolean v0, v0, Li2/e;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    return-void

    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getVelocityY(J)F

    move-result v2

    iget-object v3, p0, Le2/Gravity;->o:Li2/d;

    invoke-virtual {v3}, Li2/d;->getCurrentValue()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Le2/Gravity;->p:Li2/d;

    invoke-virtual {v4}, Li2/d;->getCurrentValue()D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    mul-float v2, v2, v4

    goto :goto_0

    :cond_1
    mul-float v2, v2, v3

    :goto_0
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    :cond_2
    return-void
.end method
