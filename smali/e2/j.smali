.class public final Le2/j;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# instance fields
.field public final o:Li2/d;

.field public final p:Li2/d;

.field public final q:Li2/d;

.field public final r:Li2/d;

.field public final s:Li2/d;

.field public final t:Li2/e;

.field public final u:Li2/d;

.field public final v:Li2/b;

.field public w:I


# direct methods
.method public constructor <init>()V
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "Chams"

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {v0, v1, v2, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v1, Li2/d;

    const/4 v3, 0x4

    new-array v4, v3, [D

    sget v5, Ldev/virus/variable/app/MinecraftActivity;->e:I

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v5, v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-double v7, v5

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    const/4 v5, 0x0

    aput-wide v7, v4, v5

    const-wide/16 v7, 0x0

    aput-wide v7, v4, v2

    const/4 v11, 0x2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v4, v11

    const/4 v14, 0x3

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    aput-wide v15, v4, v14

    const-string v14, "Red"

    invoke-direct {v1, v14, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v1, v0, Le2/j;->o:Li2/d;

    new-instance v4, Li2/d;

    new-array v14, v3, [D

    sget v3, Ldev/virus/variable/app/MinecraftActivity;->f:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-double v11, v3

    mul-double v11, v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v9

    aput-wide v11, v14, v5

    aput-wide v7, v14, v2

    const/4 v3, 0x2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aput-wide v11, v14, v3

    const/4 v3, 0x3

    aput-wide v15, v14, v3

    const-string v3, "Green"

    invoke-direct {v4, v3, v14}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v4, v0, Le2/j;->p:Li2/d;

    new-instance v3, Li2/d;

    const/4 v11, 0x4

    new-array v12, v11, [D

    sget v11, Ldev/virus/variable/app/MinecraftActivity;->g:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    float-to-double v13, v11

    mul-double v13, v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-double v13, v13

    div-double/2addr v13, v9

    aput-wide v13, v12, v5

    aput-wide v7, v12, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x2

    aput-wide v6, v12, v8

    const/4 v6, 0x3

    aput-wide v15, v12, v6

    const-string v6, "Blue"

    invoke-direct {v3, v6, v12}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, v0, Le2/j;->q:Li2/d;

    new-instance v6, Li2/d;

    const/4 v7, 0x4

    new-array v8, v7, [D

    fill-array-data v8, :array_0

    const-string v9, "Alpha"

    invoke-direct {v6, v9, v8}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v6, v0, Le2/j;->r:Li2/d;

    new-instance v8, Li2/d;

    new-array v9, v7, [D

    fill-array-data v9, :array_1

    const-string v7, "Brightness"

    invoke-direct {v8, v7, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v8, v0, Le2/j;->s:Li2/d;

    new-instance v7, Li2/e;

    const-string v9, "Rainbow"

    invoke-direct {v7, v9, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v9, Ld2/k;

    const/4 v10, 0x2

    invoke-direct {v9, v0, v10}, Ld2/k;-><init>(Lc2/b;I)V

    .line 1
    iput-object v9, v7, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v7, v0, Le2/j;->t:Li2/e;

    new-instance v9, Li2/d;

    const/4 v10, 0x4

    new-array v11, v10, [D

    fill-array-data v11, :array_2

    const-string v10, "Rainbow speed"

    invoke-direct {v9, v10, v11}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v9, v0, Le2/j;->u:Li2/d;

    new-instance v10, Li2/e;

    const-string v11, "Render through walls"

    invoke-direct {v10, v11, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v11, Ld2/a;

    const/4 v12, 0x5

    invoke-direct {v11, v0, v12}, Ld2/a;-><init>(Lc2/b;I)V

    .line 3
    iput-object v11, v10, Li2/e;->f:Li2/e$a;

    .line 4
    new-instance v11, Li2/b;

    const-string v13, "Overdraw"

    const-string v14, "Ghost"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "Mode"

    invoke-direct {v11, v14, v13}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v13, Le2/i;->a:Le2/i;

    .line 5
    iput-object v13, v11, Li2/b;->g:Li2/b$a;

    .line 6
    iput-object v11, v0, Le2/j;->v:Li2/b;

    const/16 v13, 0x9

    new-array v13, v13, [Li2/c;

    aput-object v1, v13, v5

    aput-object v4, v13, v2

    const/4 v1, 0x2

    aput-object v3, v13, v1

    const/4 v1, 0x3

    aput-object v6, v13, v1

    const/4 v1, 0x4

    aput-object v8, v13, v1

    aput-object v7, v13, v12

    const/4 v1, 0x6

    aput-object v9, v13, v1

    const/4 v1, 0x7

    aput-object v10, v13, v1

    const/16 v1, 0x8

    aput-object v11, v13, v1

    invoke-virtual {v0, v13}, Lc2/b;->A([Li2/c;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Le2/j$a;

    invoke-direct {v2, v0}, Le2/j$a;-><init>(Le2/j;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4014000000000000L    # 5.0
        0x3fa999999999999aL    # 0.05
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
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/16 v0, 0x23

    int-to-float v1, v1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void
.end method

.method public final G()V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const-string v0, "Render through walls"

    invoke-virtual {p0, v0}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    check-cast v0, Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/16 v1, 0xb

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    iget-object v0, p0, Le2/j;->v:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overdraw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/16 v1, 0x23

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void
.end method

.method public final I()V
    .registers 3

    iget-object v0, p0, Le2/j;->u:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    iget-object v0, p0, Le2/j;->v:Li2/b;

    invoke-virtual {v0, v1}, Li2/b;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .registers 12

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le2/j;->t:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "current"

    if-eqz v0, :cond_0

    iget v0, p0, Le2/j;->w:I

    int-to-float v0, v0

    float-to-double v5, v0

    .line 1
    iget-object v0, p0, Le2/j;->u:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    div-double/2addr v9, v7

    div-double/2addr v5, v9

    double-to-long v5, v5

    const-wide/16 v7, 0x168

    rem-long/2addr v5, v7

    new-array v0, v2, [F

    long-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v0, v5

    aput v6, v0, v3

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    .line 2
    invoke-static {v3, v5}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v2, v3}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v6

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le2/j;->o:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/j;->p:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v2, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    iget-object v0, p0, Le2/j;->q:Li2/d;

    invoke-virtual {v0, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    :goto_0
    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    const/4 v0, 0x5

    iget-object v1, p0, Le2/j;->r:Li2/d;

    invoke-virtual {v1, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    const/4 v0, 0x6

    iget-object v1, p0, Le2/j;->s:Li2/d;

    invoke-virtual {v1, v4}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    :cond_1
    return-void
.end method
