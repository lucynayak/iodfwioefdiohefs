.class public final Le2/h;
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
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "BlockSelection"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Misc"

    invoke-direct {v0, v1, v2, v3, v4}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v1, Li2/d;

    const/4 v4, 0x4

    new-array v5, v4, [D

    sget v6, Ldev/virus/variable/app/MinecraftActivity;->e:I

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v6, v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-double v8, v6

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    aput-wide v8, v5, v3

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v2

    const/4 v6, 0x2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v5, v6

    const/4 v14, 0x3

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    aput-wide v15, v5, v14

    const-string v14, "Red"

    invoke-direct {v1, v14, v5}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v1, v0, Le2/h;->o:Li2/d;

    new-instance v5, Li2/d;

    new-array v14, v4, [D

    sget v4, Ldev/virus/variable/app/MinecraftActivity;->f:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-double v6, v4

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    aput-wide v6, v14, v3

    aput-wide v8, v14, v2

    const/4 v4, 0x2

    aput-wide v12, v14, v4

    const/4 v4, 0x3

    aput-wide v15, v14, v4

    const-string v4, "Green"

    invoke-direct {v5, v4, v14}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, v0, Le2/h;->p:Li2/d;

    new-instance v4, Li2/d;

    const/4 v6, 0x4

    new-array v7, v6, [D

    sget v6, Ldev/virus/variable/app/MinecraftActivity;->g:I

    int-to-float v6, v6

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v6, v14

    float-to-double v12, v6

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v12, v10

    aput-wide v12, v7, v3

    aput-wide v8, v7, v2

    const/4 v6, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v6

    const/4 v6, 0x3

    aput-wide v15, v7, v6

    const-string v6, "Blue"

    invoke-direct {v4, v6, v7}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, v0, Le2/h;->q:Li2/d;

    new-instance v6, Li2/e;

    const-string v7, "Rainbow"

    invoke-direct {v6, v7, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v7, Ld2/c;

    invoke-direct {v7, v0, v2}, Ld2/c;-><init>(Lc2/b;I)V

    .line 1
    iput-object v7, v6, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v6, v0, Le2/h;->r:Li2/e;

    new-instance v7, Li2/d;

    const/4 v8, 0x4

    new-array v9, v8, [D

    fill-array-data v9, :array_0

    const-string v10, "Rainbow speed"

    invoke-direct {v7, v10, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v7, v0, Le2/h;->s:Li2/d;

    const/4 v9, 0x5

    new-array v9, v9, [Li2/c;

    aput-object v1, v9, v3

    aput-object v5, v9, v2

    const/4 v1, 0x2

    aput-object v4, v9, v1

    const/4 v1, 0x3

    aput-object v6, v9, v1

    aput-object v7, v9, v8

    invoke-virtual {v0, v9}, Lc2/b;->A([Li2/c;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Le2/h$a;

    invoke-direct {v2, v0}, Le2/h$a;-><init>(Le2/h;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
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

    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final G()V
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Le2/h;->s:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .locals 11

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le2/h;->r:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/16 v1, 0x2a

    const/16 v2, 0x29

    const/16 v3, 0x28

    const-string v4, "current"

    if-eqz v0, :cond_0

    iget v0, p0, Le2/h;->t:I

    int-to-float v0, v0

    float-to-double v5, v0

    .line 1
    iget-object v0, p0, Le2/h;->s:Li2/d;

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
    iget-object v0, p0, Le2/h;->o:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/h;->p:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v2, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/h;->q:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    :goto_0
    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    :cond_1
    return-void
.end method
