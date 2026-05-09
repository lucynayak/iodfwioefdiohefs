.class public final Ld2/s;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public holdStartTime:J

.field public isHolding:Z

.field public final o:Li2/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "AutoBow"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Combat"

    invoke-direct {p0, v0, v1, v1, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld2/s;->holdStartTime:J

    iput-boolean v2, p0, Ld2/s;->isHolding:Z

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string v2, "Charge Delay (ms)"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Ld2/s;->o:Li2/d;

    const/4 v1, 0x1

    new-array v1, v1, [Li2/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x4059000000000000L    # 100.0
        0x0
        0x40b3880000000000L    # 5000.0
        0x4049000000000000L    # 50.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 1

    iget-boolean v0, p0, Ld2/s;->isHolding:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/s;->isHolding:Z

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 8

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeItem;->getID(I)I

    move-result v0

    const/16 v1, 0x105

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Ld2/s;->isHolding:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/s;->isHolding:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Ld2/s;->isHolding:Z

    if-nez v0, :cond_1

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->hold()V

    iput-wide v2, p0, Ld2/s;->holdStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld2/s;->isHolding:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld2/s;->o:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v4, p0, Ld2/s;->holdStartTime:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/s;->isHolding:Z

    :cond_2
    :goto_0
    return-void
.end method
