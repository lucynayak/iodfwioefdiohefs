.class public final Le2/f0;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final o:Li2/d;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public final r:Li2/e;

.field public final s:Li2/d;

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    const-string v1, "PlayerESP"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Misc"

    invoke-direct {v0, v1, v2, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v1, Li2/e;

    const-string v4, "Fill"

    invoke-direct {v1, v4, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    sget-object v4, Le2/e0;->a:Le2/e0;

    .line 1
    iput-object v4, v1, Li2/e;->f:Li2/e$a;

    .line 2
    new-instance v4, Li2/d;

    const/4 v5, 0x4

    new-array v6, v5, [D

    fill-array-data v6, :array_0

    const-string v7, "Thickness"

    invoke-direct {v4, v7, v6}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v6, Le2/f;->f:Le2/f;

    .line 3
    iput-object v6, v4, Li2/d;->f:Li2/d$a;

    .line 4
    new-instance v6, Li2/d;

    new-array v7, v5, [D

    sget v8, Ldev/virus/variable/app/MinecraftActivity;->e:I

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    float-to-double v10, v8

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v10, v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v12

    aput-wide v10, v7, v3

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v2

    const/4 v8, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v7, v8

    const/4 v8, 0x3

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    aput-wide v16, v7, v8

    const-string v8, "Red"

    invoke-direct {v6, v8, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v6, v0, Le2/f0;->o:Li2/d;

    new-instance v7, Li2/d;

    new-array v8, v5, [D

    sget v5, Ldev/virus/variable/app/MinecraftActivity;->f:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    float-to-double v14, v5

    mul-double v14, v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v14, v14

    div-double/2addr v14, v12

    aput-wide v14, v8, v3

    aput-wide v10, v8, v2

    const/4 v5, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v8, v5

    const/4 v5, 0x3

    aput-wide v16, v8, v5

    const-string v5, "Green"

    invoke-direct {v7, v5, v8}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v7, v0, Le2/f0;->p:Li2/d;

    new-instance v5, Li2/d;

    const/4 v8, 0x4

    new-array v14, v8, [D

    sget v8, Ldev/virus/variable/app/MinecraftActivity;->g:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    float-to-double v8, v8

    mul-double v8, v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v12

    aput-wide v8, v14, v3

    aput-wide v10, v14, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x2

    aput-wide v8, v14, v10

    const/4 v8, 0x3

    aput-wide v16, v14, v8

    const-string v9, "Blue"

    invoke-direct {v5, v9, v14}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, v0, Le2/f0;->q:Li2/d;

    new-instance v9, Li2/e;

    const-string v10, "Rainbow"

    invoke-direct {v9, v10, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v10, Ld2/k;

    invoke-direct {v10, v0, v8}, Ld2/k;-><init>(Lc2/b;I)V

    .line 5
    iput-object v10, v9, Li2/e;->f:Li2/e$a;

    .line 6
    iput-object v9, v0, Le2/f0;->r:Li2/e;

    new-instance v8, Li2/d;

    const/4 v10, 0x4

    new-array v11, v10, [D

    fill-array-data v11, :array_1

    const-string v12, "Rainbow speed"

    invoke-direct {v8, v12, v11}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v8, v0, Le2/f0;->s:Li2/d;

    const/4 v11, 0x7

    new-array v11, v11, [Li2/c;

    aput-object v1, v11, v3

    aput-object v4, v11, v2

    const/4 v1, 0x2

    aput-object v6, v11, v1

    const/4 v1, 0x3

    aput-object v7, v11, v1

    aput-object v5, v11, v10

    const/4 v1, 0x5

    aput-object v9, v11, v1

    const/4 v1, 0x6

    aput-object v8, v11, v1

    invoke-virtual {v0, v11}, Lc2/b;->A([Li2/c;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Le2/f0$a;

    invoke-direct {v2, v0}, Le2/f0$a;-><init>(Le2/f0;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x0
        0x4000000000000000L    # 2.0
        0x3fa999999999999aL    # 0.05
    .end array-data

    :array_1
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 3

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/16 v0, 0x15

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final G()V
    .registers 5

    const/16 v0, 0x14

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const-string v0, "Fill"

    invoke-virtual {p0, v0}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    check-cast v0, Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/16 v1, 0x15

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const-string v0, "current"

    iget-object v1, p0, Le2/f0;->o:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    const/16 v2, 0x25

    invoke-static {v2, v1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v1, p0, Le2/f0;->p:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    const/16 v2, 0x26

    invoke-static {v2, v1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v1, p0, Le2/f0;->q:Li2/d;

    invoke-virtual {v1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    const/16 v2, 0x27

    invoke-static {v2, v1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void
.end method

.method public final I()V
    .registers 3

    iget-object v0, p0, Le2/f0;->s:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .registers 12

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le2/f0;->r:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/16 v1, 0x27

    const/16 v2, 0x26

    const/16 v3, 0x25

    const-string v4, "current"

    if-eqz v0, :cond_0

    iget v0, p0, Le2/f0;->t:I

    int-to-float v0, v0

    float-to-double v5, v0

    .line 1
    iget-object v0, p0, Le2/f0;->s:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    div-double/2addr v9, v7

    div-double/2addr v5, v9

    double-to-long v4, v5

    const-wide/16 v6, 0x168

    rem-long/2addr v4, v6

    const/4 v0, 0x3

    new-array v0, v0, [F

    long-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v4

    const/4 v4, 0x2

    aput v5, v0, v4

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    .line 2
    invoke-static {v3, v4}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le2/f0;->o:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/f0;->p:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v2, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/f0;->q:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    :goto_0
    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    :cond_1
    return-void
.end method
