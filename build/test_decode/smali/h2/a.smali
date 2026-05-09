.class public final Lh2/a;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/b;

.field public p:I

.field public q:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "AntiAFK"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/b;

    const-string v1, "Rotation"

    const-string v2, "Moving"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mode"

    invoke-direct {v0, v2, v1}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lh2/a;->o:Li2/b;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh2/a;->q:D

    const/4 v0, 0x0

    iput v0, p0, Lh2/a;->p:I

    return-void
.end method

.method public final J()V
    .locals 5

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x3

    .line 1
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x5

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x6

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    iget-object v1, p0, Lh2/a;->o:Li2/b;

    invoke-virtual {v1}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Moving"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "Rotation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lh2/a;->q:D

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    iput-wide v0, p0, Lh2/a;->q:D

    invoke-static {}, La3/r0;->y()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-wide v1, p0, Lh2/a;->q:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4039000000000000L    # 25.0

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 3
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setRot(FF)V

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lh2/a;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lh2/a;->p:I

    const/16 v0, 0x64

    if-lt v1, v0, :cond_2

    const v0, 0x3e4ccccd    # 0.2f

    .line 5
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lh2/a;->p:I

    :cond_2
    :goto_0
    return-void
.end method
