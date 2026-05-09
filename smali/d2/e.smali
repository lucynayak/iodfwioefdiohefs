.class public final Ld2/e;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public final p:Li2/d;

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 6

    iput p1, p0, Ld2/e;->o:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const-string p1, "AntiKnockBack"

    const-string v2, "Combat"

    .line 1
    invoke-direct {p0, p1, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v2, v0, [D

    fill-array-data v2, :array_0

    const-string v3, "Horizontal"

    invoke-direct {p1, v3, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Ld2/e;->p:Li2/d;

    new-instance v2, Li2/d;

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    const-string v3, "Vertical"

    invoke-direct {v2, v3, v0}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Ld2/e;->q:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Li2/c;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lc2/b;->A([Li2/c;)V

    return-void

    :cond_0
    const-string p1, "FreeCam"

    const-string v2, "Misc"

    .line 2
    invoke-direct {p0, p1, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance p1, Li2/d;

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    const-string v1, "Speed"

    invoke-direct {p1, v1, v0}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object p1, p0, Ld2/e;->p:Li2/d;

    invoke-virtual {p0, p1}, Lc2/b;->addSetting(Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        -0x3fd2000000000000L    # -15.0
        0x3ff0000000000000L    # 1.0
        0x3fa999999999999aL    # 0.05
    .end array-data

    :array_1
    .array-data 8
        0x3fe0000000000000L    # 0.5
        -0x3fd2000000000000L    # -15.0
        0x3ff0000000000000L    # 1.0
        0x3fa999999999999aL    # 0.05
    .end array-data

    :array_2
    .array-data 8
        0x3fa999999999999aL    # 0.05
        0x0
        0x3ff0000000000000L    # 1.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 5

    iget v0, p0, Ld2/e;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {v2, v2}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void

    :goto_0
    const v0, 0x3d4ccccd    # 0.05f

    const-string v3, "flySpeed"

    .line 2
    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeAbilities;->setFloat(Ljava/lang/String;F)V

    const-string v0, "flying"

    .line 3
    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    const-string v0, "noclip"

    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    const v0, 0xe83ec2

    const/4 v3, 0x4

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, v0, v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setVelocity(FFF)V

    .line 5
    iget-object v0, p0, Ld2/e;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, [F

    aget v2, v0, v2

    aget v1, v0, v1

    const/4 v3, 0x2

    aget v0, v0, v3

    .line 6
    invoke-static {v2, v1, v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setPosition(FFF)V

    const/4 v0, 0x1

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setOnGround(Z)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ld2/e;->q:Ljava/lang/Object;

    :cond_0
    return-void

    :array_0
    .array-data 2
        0xb0s
        0xb5s
        0x5s
        0x46s
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final G()V
    .registers 5

    iget v0, p0, Ld2/e;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {v2, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 2
    invoke-static {}, La3/r0;->u()F

    move-result v3

    aput v3, v0, v2

    invoke-static {}, La3/r0;->v()F

    move-result v2

    aput v2, v0, v1

    invoke-static {}, La3/r0;->w()F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iput-object v0, p0, Ld2/e;->q:Ljava/lang/Object;

    const v0, 0xe83ec2

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x20s
        0x70s
        0x47s
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final J()V
    .registers 7

    iget v0, p0, Ld2/e;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "current"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Ld2/e;->p:Li2/d;

    invoke-virtual {v0, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v2, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Ld2/e;->q:Ljava/lang/Object;

    check-cast v0, Li2/d;

    invoke-virtual {v0, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void

    .line 2
    :goto_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setOnGround(Z)V

    .line 4
    iget-object v0, p0, Ld2/e;->p:Li2/d;

    invoke-virtual {v0, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    const-string v2, "flySpeed"

    .line 5
    invoke-static {v2, v0}, Ldev/virus/variable/launcher/api/NativeAbilities;->setFloat(Ljava/lang/String;F)V

    const-string v0, "flying"

    .line 6
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    const-string v0, "noclip"

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final N(Ljava/lang/String;I)V
    .registers 3

    iget p1, p0, Ld2/e;->o:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->preventDefault()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
