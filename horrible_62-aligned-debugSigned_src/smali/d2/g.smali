.class public final Ld2/g;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public o2:Li2/d;

.field public o3:Li2/d;


# direct methods
.method public constructor <init>(I)V
    .registers 7

    iput p1, p0, Ld2/g;->o:I

    const-string v0, "Movement"

    const-string v1, "Misc"

    const-string v2, "Combat"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "FullBright"

    const-string v0, "Player"

    .line 1
    invoke-direct {p0, p1, v4, v4, v0}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const-string v2, "Brightness"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Ld2/g;->o3:Li2/d;

    const/4 v1, 0x1

    new-array v1, v1, [Li2/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void

    :pswitch_1
    const-string p1, "Panic"

    const-string v0, "Other"

    .line 2
    invoke-direct {p0, p1, v3, v4, v0}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "SafeWalk"

    .line 3
    invoke-direct {p0, p1, v4, v4, v0}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "AirJump"

    .line 4
    invoke-direct {p0, p1, v4, v4, v0}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "NoPackets"

    .line 5
    invoke-direct {p0, p1, v4, v4, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "ChestESP"

    .line 6
    invoke-direct {p0, p1, v4, v3, v1}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "Reach"

    .line 7
    invoke-direct {p0, p1, v4, v4, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Distance"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Ld2/g;->o2:Li2/d;

    const/4 v1, 0x1

    new-array v1, v1, [Li2/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void

    :goto_0
    const-string p1, "HitAim"

    .line 8
    invoke-direct {p0, p1, v4, v4, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :pswitch_7
    const-string p1, "UnlockOffhand"

    const-string v0, "Player"

    .line 9
    invoke-direct {p0, p1, v4, v4, v0}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    const-string p1, "FPS Boost"

    const-string v0, "Player"

    .line 10
    invoke-direct {p0, p1, v4, v3, v0}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 8
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4059000000000000L    # 100.0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_1
    .array-data 8
        0x403f000000000000L    # 31.0
        -0x3fb1000000000000L    # -62.0
        0x403f000000000000L    # 31.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method


# virtual methods
.method public final C(J)V
    .registers 11

    iget v0, p0, Ld2/g;->o:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lc2/b;->C(J)V

    return-void

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2}, Lc2/b;->C(J)V

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 2
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v0

    .line 3
    invoke-static {}, La3/r0;->u()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v2

    .line 5
    invoke-static {}, La3/r0;->v()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 6
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result p1

    .line 7
    invoke-static {}, La3/r0;->w()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v6, v4

    mul-double v4, p1, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    neg-double p1, p1

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p1, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    neg-double v0, v0

    invoke-static {}, La3/r0;->y()F

    move-result v2

    float-to-double v2, v2

    invoke-static {}, La3/r0;->y()F

    move-result v4

    float-to-double v4, v4

    invoke-static {p1, p2, v4, v5}, Ly1/b;->b(DD)D

    move-result-wide p1

    sub-double/2addr v2, p1

    double-to-float p1, v2

    invoke-static {}, La3/r0;->t()F

    move-result p2

    float-to-double v2, p2

    invoke-static {}, La3/r0;->t()F

    move-result p2

    float-to-double v4, p2

    invoke-static {v0, v1, v4, v5}, Ly1/b;->b(DD)D

    move-result-wide v0

    sub-double/2addr v2, v0

    double-to-float p2, v2

    .line 8
    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setRot(FF)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final D()V
    .registers 6

    iget v0, p0, Ld2/g;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld2/g;->o2:Li2/d;

    if-eqz v0, :cond_0

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

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

    const v0, 0x15dd32c

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15dd324

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15dd328

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8da0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8d94

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8d98

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8da4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    :cond_0
    iget v0, p0, Ld2/g;->o:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1}, Lc2/b;->isToggleable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lc2/b;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lc2/b;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notifications"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object v1, v1, Lc2/b;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lc2/b;->d:Z

    iget-object v2, v1, Lc2/b;->k:La2/b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    goto :goto_1

    :cond_4
    return-void

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ld2/g;->o3:Li2/d;

    if-eqz v0, :cond_5

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [C

    const/4 v4, 0x0

    const/16 v0, 0x0

    aput-char v0, v3, v4

    const/4 v4, 0x1

    const/16 v0, 0x48

    aput-char v0, v3, v4

    const/4 v4, 0x2

    const/16 v0, 0x70

    aput-char v0, v3, v4

    const/4 v4, 0x3

    const/16 v0, 0x47

    aput-char v0, v3, v4

    const/4 v4, 0x4

    and-int/lit16 v0, v2, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x5

    ushr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x6

    ushr-int/lit8 v0, v2, 0x10

    and-int/lit16 v0, v0, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x7

    ushr-int/lit8 v0, v2, 0x18

    aput-char v0, v3, v4

    const v0, 0xd1b5cc

    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final E()V
    .registers 3

    iget v0, p0, Ld2/g;->o:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const/16 v0, 0x10

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->removeEffect(I)V

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_7

    const v1, 0xd1b5cc

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    :pswitch_2
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    return-void

    :pswitch_3
    const/16 v0, 0xc

    .line 3
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void

    :pswitch_4
    const/4 v0, 0x6

    .line 4
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    const v1, 0x15dd302

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_9

    const v1, 0x15dd314

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_d

    const v1, 0x15dd306

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    const v1, 0x15dd2cc

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    const v1, 0x15dd32c

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0x22c8da0

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_b

    const v1, 0x15dd324

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0x22c8d94

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_c

    const v1, 0x15dd328

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v1, 0x22c8d98

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_f

    const v1, 0x22c8da4

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    const v1, 0x13d6b00

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    nop

    :pswitch_5
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    const v1, 0x165045c

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    nop

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0xd2fb00

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const v1, 0xd2fc50

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    const v1, 0xd2fdf4

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    const v1, 0xe5ecec

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    const v1, 0xe89fbc

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    const v1, 0xba9660

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 2
        0x2ds
        0xe9s
    .end array-data

    :array_1
    .array-data 2
        0x2ds
        0xe9s
    .end array-data

    :array_2
    .array-data 2
        0x2ds
        0xe9s
    .end array-data

    :array_3
    .array-data 2
        0x2ds
        0xe9s
    .end array-data

    :array_4
    .array-data 2
        0x2ds
        0xe9s
    .end array-data

    :array_5
    .array-data 2
        0x2ds
        0xe9s
    .end array-data

    :array_6
    .array-data 2
        0xc0s
        0x68s
        0x0s
        0x28s
    .end array-data

    :array_7
    .array-data 2
        0x23s
        0x49s
        0x2s
        0x78s
        0x79s
        0x44s
        0x0s
        0x2as
    .end array-data

    :array_8
    .array-data 2
        0xb2s
        0xees
        0x8s
        0x1as
    .end array-data

    :array_9
    .array-data 2
        0xb2s
        0xees
        0x8s
        0xas
    .end array-data

    :array_a
    .array-data 2
        0x66s
        0x66s
        0xd6s
        0x40s
    .end array-data

    :array_b
    .array-data 2
        0x66s
        0x66s
        0xb6s
        0x40s
    .end array-data

    :array_c
    .array-data 2
        0x33s
        0x33s
        0xb3s
        0x40s
    .end array-data

    :array_d
    .array-data 2
        0x0s
        0x28s
        0x18s
        0xbfs
    .end array-data

    :array_e
    .array-data 2
        0xb1s
        0xees
        0xcs
        0xas
    .end array-data

    :array_f
    .array-data 2
        0x0s
        0x0s
        0x60s
        0x41s
    .end array-data

    :array_10
    .array-data 2
        0x8s
        0xdds
    .end array-data
.end method

.method public final G()V
    .registers 6

    iget v0, p0, Ld2/g;->o:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const/16 v0, 0xc

    .line 1
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void

    :pswitch_2
    const/4 v0, 0x6

    .line 2
    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    const v1, 0x15dd302

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    const v1, 0x15dd314

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    const v1, 0x15dd306

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    const v1, 0x15dd2cc

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    iget-object v0, p0, Ld2/g;->o2:Li2/d;

    if-eqz v0, :cond_0

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [C

    const/4 v4, 0x0

    and-int/lit16 v0, v2, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x1

    ushr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x2

    ushr-int/lit8 v0, v2, 0x10

    and-int/lit16 v0, v0, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x3

    ushr-int/lit8 v0, v2, 0x18

    aput-char v0, v3, v4

    const v0, 0x15dd32c

    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15dd324

    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15dd328

    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8da4

    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    const v1, 0x13d6b00

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_0
    return-void

    :pswitch_3
    iget-object v0, p0, Ld2/g;->o3:Li2/d;

    if-eqz v0, :cond_1

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [C

    const/4 v4, 0x0

    const/16 v0, 0x0

    aput-char v0, v3, v4

    const/4 v4, 0x1

    const/16 v0, 0x48

    aput-char v0, v3, v4

    const/4 v4, 0x2

    const/16 v0, 0x70

    aput-char v0, v3, v4

    const/4 v4, 0x3

    const/16 v0, 0x47

    aput-char v0, v3, v4

    const/4 v4, 0x4

    and-int/lit16 v0, v2, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x5

    ushr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x6

    ushr-int/lit8 v0, v2, 0x10

    and-int/lit16 v0, v0, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x7

    ushr-int/lit8 v0, v2, 0x18

    aput-char v0, v3, v4

    const v0, 0xd1b5cc

    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_1
    return-void

    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const v1, 0x165045c

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0xd2fb00

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0xd2fc50

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0xd2fdf4

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0xe5ecec

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0xe89fbc

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0xba9660

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 2
        0x70s
        0x47s
    .end array-data

    :array_1
    .array-data 2
        0x1s
        0x20s
        0x70s
        0x47s
    .end array-data

    :array_2
    .array-data 2
        0x9fs
        0xeds
        0xas
        0x1as
    .end array-data

    :array_3
    .array-data 2
        0x9fs
        0xeds
        0x5s
        0xas
    .end array-data

    :array_4
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_5
    .array-data 2
        0x9fs
        0xeds
        0x17s
        0xas
    .end array-data

    :array_6
    .array-data 2
        0x8s
        0xe0s
    .end array-data
.end method

.method public final J()V
    .registers 6

    iget v0, p0, Ld2/g;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const v1, 0x15dd302

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    const v1, 0x15dd314

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    const v1, 0x15dd306

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    const v1, 0x15dd2cc

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    iget-object v0, p0, Ld2/g;->o2:Li2/d;

    if-eqz v0, :cond_0

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

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

    const v0, 0x15dd32c

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15dd324

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x15dd328

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8da0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8d94

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8d98

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0x22c8da4

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    const v1, 0x13d6b00

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    return-void

    :cond_0
    iget v0, p0, Ld2/g;->o:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    .line 1
    :pswitch_1
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld2/g;->o3:Li2/d;

    if-eqz v0, :cond_1

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [C

    const/4 v4, 0x0

    const/16 v0, 0x0

    aput-char v0, v3, v4

    const/4 v4, 0x1

    const/16 v0, 0x48

    aput-char v0, v3, v4

    const/4 v4, 0x2

    const/16 v0, 0x70

    aput-char v0, v3, v4

    const/4 v4, 0x3

    const/16 v0, 0x47

    aput-char v0, v3, v4

    const/4 v4, 0x4

    and-int/lit16 v0, v2, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x5

    ushr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x6

    ushr-int/lit8 v0, v2, 0x10

    and-int/lit16 v0, v0, 0xff

    aput-char v0, v3, v4

    const/4 v4, 0x7

    ushr-int/lit8 v0, v2, 0x18

    aput-char v0, v3, v4

    const v0, 0xd1b5cc

    invoke-static {v0, v3}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_1
    return-void

    .line 3
    :pswitch_2
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v1, v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setStatusFlag(IZ)V

    :cond_2
    return-void

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    const-string v2, "SpeedHack"

    if-eqz v0, :cond_3

    invoke-static {v2}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v0

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v0

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x3

    .line 6
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    :goto_0
    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setOnGround(Z)V

    :cond_4
    return-void

    .line 8
    :pswitch_4
    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0x165045c

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 2
        0x1s
        0x20s
        0x70s
        0x47s
    .end array-data

    :array_1
    .array-data 2
        0x9fs
        0xeds
        0xas
        0x1as
    .end array-data

    :array_2
    .array-data 2
        0x9fs
        0xeds
        0x5s
        0xas
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_4
    .array-data 2
        0x9fs
        0xeds
        0x17s
        0xas
    .end array-data

    :array_5
    .array-data 2
        0x8s
        0xe0s
    .end array-data
.end method

.method public final N(Ljava/lang/String;I)V
    .registers 3

    iget p1, p0, Ld2/g;->o:I

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
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
