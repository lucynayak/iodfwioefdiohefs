.class public final Lf2/d;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public final o:Li2/b;

.field public final p:Li2/e;

.field public final q:Li2/d;

.field public final r:Li2/e;


# direct methods
.method public constructor <init>()V
    .registers 10

    const-string v0, "Flight"

    const/4 v1, 0x1

    const-string v2, "Movement"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/b;

    const-string v2, "Velocity"

    const-string v3, "Teleport"

    const-string v4, "Creative"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mode"

    invoke-direct {v0, v3, v2}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Ld2/h;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Ld2/h;-><init>(Lc2/b;I)V

    .line 1
    iput-object v2, v0, Li2/b;->g:Li2/b$a;

    .line 2
    iput-object v0, p0, Lf2/d;->o:Li2/b;

    new-instance v2, Li2/e;

    const-string v4, "No packets"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lf2/d;->p:Li2/e;

    new-instance v4, Li2/d;

    const/4 v6, 0x4

    new-array v7, v6, [D

    fill-array-data v7, :array_0

    const-string v8, "Speed"

    invoke-direct {v4, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, p0, Lf2/d;->q:Li2/d;

    new-instance v7, Li2/e;

    const-string v8, "Disable when flag"

    invoke-direct {v7, v8, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v7, p0, Lf2/d;->r:Li2/e;

    new-array v6, v6, [Li2/c;

    aput-object v0, v6, v5

    aput-object v2, v6, v1

    aput-object v4, v6, v3

    const/4 v0, 0x3

    aput-object v7, v6, v0

    invoke-virtual {p0, v6}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x0
        0x4024000000000000L    # 10.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 3

    iget-object v0, p0, Lf2/d;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "flying"

    .line 1
    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0, v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    return-void
.end method

.method public final G()V
    .registers 3

    iget-object v0, p0, Lf2/d;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "flying"

    .line 1
    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelative(FFF)V

    return-void
.end method

.method public final J()V
    .registers 8

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lf2/d;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "flying"

    .line 1
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityY(F)V

    .line 3
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setOnGround(Z)V

    .line 4
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-nez v1, :cond_2

    invoke-static {v6}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityX(F)V

    goto/16 :goto_2

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, La3/r0;->y()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    .line 7
    invoke-static {v6}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xb4

    goto :goto_1

    :cond_3
    invoke-static {v5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, -0x5a

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x5a

    goto :goto_1

    :cond_5
    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, -0x2d

    goto :goto_1

    :cond_6
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x2d

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 8
    iget-object v2, p0, Lf2/d;->q:Li2/d;

    const-string v3, "current"

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lf2/d;->o:Li2/b;

    invoke-virtual {v4}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Velocity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "Teleport"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-float v4, v4

    .line 9
    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelativeX(F)V

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 11
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPositionRelativeZ(F)V

    goto :goto_3

    .line 12
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-float v4, v4

    .line 13
    invoke-static {v4}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityX(F)V

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 15
    :goto_2
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocityZ(F)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final N(Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf2/d;->p:Li2/e;

    invoke-virtual {p1}, Li2/e;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->preventDefault()V

    :cond_0
    return-void
.end method

.method public final P(JFFF)V
    .registers 6

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lf2/d;->r:Li2/e;

    invoke-virtual {p3}, Li2/e;->isActive()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide p3

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    .line 2
    invoke-virtual {p0}, Lc2/b;->R()V

    .line 3
    iget-object p1, p0, Lc2/b;->j:Landroid/widget/TextView;

    const/4 p2, -0x1

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lc2/b;->k:La2/b;

    .line 6
    invoke-virtual {p1}, La2/b;->a()V

    const-string p1, "\u00a7l\u00a76Var\u00a7fiable > \u00a7rFlight > disabled due to flag."

    .line 7
    invoke-static {p1}, Ldev/virus/variable/launcher/api/NativeLevel;->displayClientMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
