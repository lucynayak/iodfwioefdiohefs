.class public final Le2/xb;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:Li2/d;

.field public p:Li2/d;

.field public q:Li2/d;


# direct methods
.method public constructor <init>()V
    .registers 7

    const-string v0, "Crosshair"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const-string v3, "X"

    invoke-direct {v0, v3, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/xb;->o:Li2/d;

    new-instance v2, Li2/d;

    new-array v3, v1, [D

    fill-array-data v3, :array_1

    const-string v4, "Y"

    invoke-direct {v2, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Le2/xb;->p:Li2/d;

    new-instance v3, Li2/d;

    new-array v4, v1, [D

    fill-array-data v4, :array_2

    const-string v5, "Size"

    invoke-direct {v3, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v3, p0, Le2/xb;->q:Li2/d;

    const/4 v1, 0x3

    new-array v1, v1, [Li2/c;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v5, 0x2

    aput-object v3, v1, v5

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4049000000000000L    # 50.0
        0x0
        0x4059000000000000L    # 100.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4049000000000000L    # 50.0
        0x0
        0x4059000000000000L    # 100.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x4000000000000000L    # 2.0
        0x3fe0000000000000L    # 0.5
        0x4014000000000000L    # 5.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method


# virtual methods
.method public final F()V
    .registers 12

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getViewPerspective()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/xb;->o:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v4, v0

    iget-object v0, p0, Le2/xb;->p:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v0, p0, Le2/xb;->q:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v6, v0

    const-string v3, "+"

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v10}, Ldev/virus/variable/launcher/api/Api;->drawText(Ljava/lang/String;FFFFFFF)V

    :cond_0
    return-void
.end method
