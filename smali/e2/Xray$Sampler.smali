.class public final Le2/Xray$Sampler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/Xray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sampler"
.end annotation


# instance fields
.field public final synthetic b:Le2/Xray;


# direct methods
.method public constructor <init>(Le2/Xray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/Xray$Sampler;->b:Le2/Xray;

    return-void
.end method

.method public static blockIdFor(Ljava/lang/String;)I
    .registers 3

    if-nez p0, :cond_0

    const/16 v0, 0x38

    return v0

    :cond_0
    const-string v0, "Diamond"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x38

    return v0

    :cond_1
    const-string v0, "Iron"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    return v0

    :cond_2
    const-string v0, "Gold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xe

    return v0

    :cond_3
    const-string v0, "Emerald"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x81

    return v0

    :cond_4
    const-string v0, "Coal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x10

    return v0

    :cond_5
    const-string v0, "Lapis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    return v0

    :cond_6
    const-string v0, "Redstone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x49

    return v0

    :cond_7
    const-string v0, "Quartz"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x99

    return v0

    :cond_8
    const/16 v0, 0x38

    return v0
.end method


# virtual methods
.method public final run()V
    .registers 11

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Le2/Xray$Sampler;->b:Le2/Xray;

    if-eqz v0, :cond_9

    iget-object v1, v0, Le2/Xray;->oView:Le2/XrayView;

    if-eqz v1, :cond_9

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    return-void

    :cond_0
    iget-object v2, v0, Le2/Xray;->range:Li2/d;

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/4 v2, 0x4

    :cond_1
    const/16 v3, 0x40

    if-le v2, v3, :cond_2

    const/16 v2, 0x40

    :cond_2
    iget-object v3, v0, Le2/Xray;->customId:Li2/f;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :cond_3
    iget-object v3, v0, Le2/Xray;->ore:Li2/b;

    invoke-virtual {v3}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le2/Xray$Sampler;->blockIdFor(Ljava/lang/String;)I

    move-result v4

    :goto_1
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v4, v2}, Ll2/a;->findAll(II)[I

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    array-length v6, v5

    new-array v7, v6, [F

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_4

    aget v9, v5, v8

    int-to-float v9, v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    iput-object v7, v1, Le2/XrayView;->mBlocks:[F

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    iput-object v6, v1, Le2/XrayView;->mBlocks:[F

    :goto_4
    iget-object v2, v0, Le2/Xray;->refresh:Li2/d;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x7d

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    move-wide v2, v4

    :cond_6
    const-wide/16 v4, 0x9c4

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    move-wide v2, v4

    :cond_7
    goto :goto_5

    :cond_8
    const-wide/16 v2, 0x3e8

    :goto_5
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    return-void

    :cond_9
    return-void
.end method
