.class public final Le2/b;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic J:I


# instance fields
.field public final A:Li2/e;

.field public final B:Li2/e;

.field public final C:Li2/d;

.field public final D:Li2/d;

.field public final E:Li2/d;

.field public final F:Li2/e;

.field public final G:Li2/d;

.field public H:I

.field public I:I

.field public final o:Li2/d;

.field public final p:Li2/e;

.field public final q:Li2/d;

.field public final r:Li2/e;

.field public final s:Li2/d;

.field public final t:Li2/d;

.field public final u:Li2/d;

.field public final v:Li2/e;

.field public final w:Li2/e;

.field public final x:Li2/d;

.field public final y:Li2/d;

.field public final z:Li2/d;


# direct methods
.method public constructor <init>()V
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "Ambience"

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {v0, v1, v2, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->e:I

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    float-to-double v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->f:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v8, v1

    mul-double v8, v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v6

    sget v1, Ldev/virus/variable/app/MinecraftActivity;->g:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v10, v1

    mul-double v10, v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v6

    new-instance v1, Li2/d;

    const/4 v3, 0x4

    new-array v6, v3, [D

    fill-array-data v6, :array_0

    const-string v7, "Time"

    invoke-direct {v1, v7, v6}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v1, v0, Le2/b;->o:Li2/d;

    new-instance v6, Li2/e;

    const-string v7, "Day cycle"

    const/4 v12, 0x0

    invoke-direct {v6, v7, v12}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v7, Le2/a;

    invoke-direct {v7, v0, v12}, Le2/a;-><init>(Le2/b;I)V

    .line 1
    iput-object v7, v6, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v6, v0, Le2/b;->p:Li2/e;

    new-instance v7, Li2/d;

    new-array v13, v3, [D

    fill-array-data v13, :array_1

    const-string v14, "Cycle speed"

    invoke-direct {v7, v14, v13}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v7, v0, Le2/b;->q:Li2/d;

    new-instance v13, Li2/e;

    const-string v14, "Recolor sky"

    invoke-direct {v13, v14, v12}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v14, Ld2/k;

    invoke-direct {v14, v0, v2}, Ld2/k;-><init>(Lc2/b;I)V

    .line 3
    iput-object v14, v13, Li2/e;->f:Li2/e$a;

    .line 4
    iput-object v13, v0, Le2/b;->r:Li2/e;

    new-instance v14, Li2/d;

    new-array v15, v3, [D

    aput-wide v4, v15, v12

    const-wide/16 v16, 0x0

    aput-wide v16, v15, v2

    const/16 v18, 0x2

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    aput-wide v19, v15, v18

    const/16 v21, 0x3

    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    aput-wide v22, v15, v21

    const-string v2, "Red (sky)"

    invoke-direct {v14, v2, v15}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v14, v0, Le2/b;->s:Li2/d;

    new-instance v2, Li2/d;

    new-array v15, v3, [D

    aput-wide v8, v15, v12

    const/16 v24, 0x1

    aput-wide v16, v15, v24

    aput-wide v19, v15, v18

    aput-wide v22, v15, v21

    const-string v12, "Green (sky)"

    invoke-direct {v2, v12, v15}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, v0, Le2/b;->t:Li2/d;

    new-instance v12, Li2/d;

    new-array v15, v3, [D

    const/4 v3, 0x0

    aput-wide v10, v15, v3

    aput-wide v16, v15, v24

    aput-wide v19, v15, v18

    aput-wide v22, v15, v21

    const-string v3, "Blue (sky)"

    invoke-direct {v12, v3, v15}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v12, v0, Le2/b;->u:Li2/d;

    new-instance v3, Li2/e;

    const-string v15, "Rainbow (sky)"

    move-object/from16 v26, v12

    const/4 v12, 0x0

    invoke-direct {v3, v15, v12}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v3, v0, Le2/b;->v:Li2/e;

    new-instance v15, Li2/e;

    move-object/from16 v25, v3

    const-string v3, "Recolor fog"

    invoke-direct {v15, v3, v12}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Ld2/a;

    const/4 v12, 0x4

    invoke-direct {v3, v0, v12}, Ld2/a;-><init>(Lc2/b;I)V

    .line 5
    iput-object v3, v15, Li2/e;->f:Li2/e$a;

    .line 6
    iput-object v15, v0, Le2/b;->w:Li2/e;

    new-instance v3, Li2/d;

    move-object/from16 v28, v15

    new-array v15, v12, [D

    const/4 v12, 0x0

    aput-wide v4, v15, v12

    const/16 v24, 0x1

    aput-wide v16, v15, v24

    aput-wide v19, v15, v18

    aput-wide v22, v15, v21

    const-string v12, "Red (fog)"

    invoke-direct {v3, v12, v15}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, v0, Le2/b;->x:Li2/d;

    new-instance v12, Li2/d;

    move-object/from16 v29, v3

    const/4 v15, 0x4

    new-array v3, v15, [D

    const/4 v15, 0x0

    aput-wide v8, v3, v15

    aput-wide v16, v3, v24

    aput-wide v19, v3, v18

    aput-wide v22, v3, v21

    const-string v15, "Green (fog)"

    invoke-direct {v12, v15, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v12, v0, Le2/b;->y:Li2/d;

    new-instance v3, Li2/d;

    move-object/from16 v30, v12

    const/4 v15, 0x4

    new-array v12, v15, [D

    const/4 v15, 0x0

    aput-wide v10, v12, v15

    aput-wide v16, v12, v24

    aput-wide v19, v12, v18

    aput-wide v22, v12, v21

    const-string v15, "Blue (fog)"

    invoke-direct {v3, v15, v12}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, v0, Le2/b;->z:Li2/d;

    new-instance v12, Li2/e;

    const-string v15, "Rainbow (fog)"

    move-object/from16 v31, v3

    const/4 v3, 0x0

    invoke-direct {v12, v15, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v12, v0, Le2/b;->A:Li2/e;

    new-instance v15, Li2/e;

    move-object/from16 v27, v12

    const-string v12, "Recolor clouds"

    invoke-direct {v15, v12, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v12, Le2/a;

    const/4 v3, 0x1

    invoke-direct {v12, v0, v3}, Le2/a;-><init>(Le2/b;I)V

    .line 7
    iput-object v12, v15, Li2/e;->f:Li2/e$a;

    .line 8
    iput-object v15, v0, Le2/b;->B:Li2/e;

    new-instance v12, Li2/d;

    move-object/from16 v33, v15

    const/4 v3, 0x4

    new-array v15, v3, [D

    const/4 v3, 0x0

    aput-wide v4, v15, v3

    const/4 v4, 0x1

    aput-wide v16, v15, v4

    aput-wide v19, v15, v18

    aput-wide v22, v15, v21

    const-string v5, "Red (clouds)"

    invoke-direct {v12, v5, v15}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v12, v0, Le2/b;->C:Li2/d;

    new-instance v5, Li2/d;

    move-object/from16 v32, v12

    const/4 v15, 0x4

    new-array v12, v15, [D

    aput-wide v8, v12, v3

    aput-wide v16, v12, v4

    aput-wide v19, v12, v18

    aput-wide v22, v12, v21

    const-string v8, "Green (clouds)"

    invoke-direct {v5, v8, v12}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, v0, Le2/b;->D:Li2/d;

    new-instance v8, Li2/d;

    new-array v9, v15, [D

    aput-wide v10, v9, v3

    aput-wide v16, v9, v4

    aput-wide v19, v9, v18

    aput-wide v22, v9, v21

    const-string v4, "Blue (clouds)"

    invoke-direct {v8, v4, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v8, v0, Le2/b;->E:Li2/d;

    new-instance v4, Li2/e;

    const-string v9, "Rainbow (clouds)"

    invoke-direct {v4, v9, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v4, v0, Le2/b;->F:Li2/e;

    new-instance v9, Li2/d;

    const/4 v10, 0x4

    new-array v11, v10, [D

    fill-array-data v11, :array_2

    const-string v12, "Rainbow speed"

    invoke-direct {v9, v12, v11}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v9, v0, Le2/b;->G:Li2/d;

    const/16 v11, 0x13

    new-array v11, v11, [Li2/c;

    aput-object v1, v11, v3

    const/4 v1, 0x1

    aput-object v6, v11, v1

    aput-object v7, v11, v18

    aput-object v13, v11, v21

    aput-object v14, v11, v10

    const/4 v1, 0x5

    aput-object v2, v11, v1

    const/4 v1, 0x6

    aput-object v26, v11, v1

    const/4 v1, 0x7

    aput-object v25, v11, v1

    const/16 v1, 0x8

    aput-object v28, v11, v1

    const/16 v1, 0x9

    aput-object v29, v11, v1

    const/16 v1, 0xa

    aput-object v30, v11, v1

    const/16 v1, 0xb

    aput-object v31, v11, v1

    const/16 v1, 0xc

    aput-object v27, v11, v1

    const/16 v1, 0xd

    aput-object v33, v11, v1

    const/16 v1, 0xe

    aput-object v32, v11, v1

    const/16 v1, 0xf

    aput-object v5, v11, v1

    const/16 v1, 0x10

    aput-object v8, v11, v1

    const/16 v1, 0x11

    aput-object v4, v11, v1

    const/16 v1, 0x12

    aput-object v9, v11, v1

    invoke-virtual {v0, v11}, Lc2/b;->A([Li2/c;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Le2/b$a;

    invoke-direct {v2, v0}, Le2/b$a;-><init>(Le2/b;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x40d7700000000000L    # 24000.0
        0x4059000000000000L    # 100.0
    .end array-data

    :array_1
    .array-data 8
        0x4014000000000000L    # 5.0
        0x3ff0000000000000L    # 1.0
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final G()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, v0}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final H()V
    .locals 8

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Le2/b;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const-string v1, "current"

    if-eqz v0, :cond_0

    iget v0, p0, Le2/b;->H:I

    int-to-double v2, v0

    iget-object v0, p0, Le2/b;->q:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v4, v2

    double-to-int v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le2/b;->o:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    :goto_0
    iput v0, p0, Le2/b;->H:I

    .line 1
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLevel;->setTime(I)V

    .line 2
    iget-object v0, p0, Le2/b;->r:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Le2/b;->v:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    if-eqz v0, :cond_1

    iget v0, p0, Le2/b;->I:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Le2/b;->T(F)I

    move-result v0

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v2

    invoke-static {v5, v6}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le2/b;->s:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v0, v6

    invoke-static {v5, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/b;->t:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v4, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/b;->u:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    :goto_1
    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    :cond_2
    iget-object v0, p0, Le2/b;->w:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le2/b;->A:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/16 v3, 0x17

    const/16 v4, 0x16

    const/16 v5, 0x15

    if-eqz v0, :cond_3

    iget v0, p0, Le2/b;->I:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Le2/b;->T(F)I

    move-result v0

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v2

    invoke-static {v5, v6}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-static {v4, v5}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Le2/b;->x:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v0, v6

    invoke-static {v5, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/b;->y:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v4, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/b;->z:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    :goto_2
    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    :cond_4
    iget-object v0, p0, Le2/b;->B:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Le2/b;->F:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/16 v3, 0x1a

    const/16 v4, 0x19

    const/16 v5, 0x18

    if-eqz v0, :cond_5

    iget v0, p0, Le2/b;->I:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Le2/b;->T(F)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v5, v1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v4, v1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_3

    :cond_5
    iget-object v0, p0, Le2/b;->C:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v0, v6

    invoke-static {v5, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/b;->D:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v4, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/b;->E:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_3
    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    :cond_6
    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Le2/b;->q:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->s:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->t:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->u:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->v:Li2/e;

    invoke-virtual {v0, v1}, Li2/e;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->x:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->y:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->z:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->A:Li2/e;

    invoke-virtual {v0, v1}, Li2/e;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->C:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->D:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->E:Li2/d;

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/b;->F:Li2/e;

    invoke-virtual {v0, v1}, Li2/e;->setVisibility(Z)V

    return-void
.end method

.method public final T(F)I
    .locals 6

    float-to-double v0, p1

    iget-object p1, p0, Le2/b;->G:Li2/d;

    const-string v2, "current"

    invoke-virtual {p1, v2}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    div-double/2addr v4, v2

    div-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v2, 0x168

    rem-long/2addr v0, v2

    const/4 p1, 0x3

    new-array p1, p1, [F

    long-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v1, p1, v0

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1
.end method

.method public final U(IZLjava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Red ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Li2/c;->setVisibility(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Green ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Li2/c;->setVisibility(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blue ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Li2/c;->setVisibility(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rainbow ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Li2/c;->setVisibility(Z)V

    return-void
.end method
