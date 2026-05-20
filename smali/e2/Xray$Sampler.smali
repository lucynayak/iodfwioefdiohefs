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


# virtual methods
.method public final run()V
    .registers 10

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Le2/Xray$Sampler;->b:Le2/Xray;

    if-eqz v0, :cond_5

    iget-object v1, v0, Le2/Xray;->oView:Le2/XrayView;

    if-eqz v1, :cond_5

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :cond_0
    iget-object v2, v0, Le2/Xray;->o:Li2/d;

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/4 v2, 0x4

    :cond_1
    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    const/16 v2, 0x20

    :cond_2
    const/4 v3, 0x0

    iget-boolean v4, v1, Le2/XrayView;->mShowDiamond:Z

    if-eqz v4, :cond_a

    const/16 v4, 0x38

    :try_start_1
    invoke-static {v4, v2}, Ll2/a;->findAll(II)[I

    move-result-object v4

    array-length v4, v4

    div-int/lit8 v3, v4, 0x3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v3, 0x0

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    iget-boolean v5, v1, Le2/XrayView;->mShowIron:Z

    if-eqz v5, :cond_b

    const/16 v5, 0xf

    :try_start_2
    invoke-static {v5, v2}, Ll2/a;->findAll(II)[I

    move-result-object v5

    array-length v5, v5

    div-int/lit8 v4, v5, 0x3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    const/4 v4, 0x0

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    iget-boolean v6, v1, Le2/XrayView;->mShowGold:Z

    if-eqz v6, :cond_c

    const/16 v6, 0xe

    :try_start_3
    invoke-static {v6, v2}, Ll2/a;->findAll(II)[I

    move-result-object v6

    array-length v6, v6

    div-int/lit8 v5, v6, 0x3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_4
    move-exception v6

    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    iget-boolean v7, v1, Le2/XrayView;->mShowEmerald:Z

    if-eqz v7, :cond_d

    const/16 v7, 0x81

    :try_start_4
    invoke-static {v7, v2}, Ll2/a;->findAll(II)[I

    move-result-object v7

    array-length v7, v7

    div-int/lit8 v6, v7, 0x3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_5
    move-exception v7

    const/4 v6, 0x0

    goto :goto_4

    :cond_d
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v1, v3, v4, v5, v6}, Le2/XrayView;->setCounts(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    iget-object v2, v0, Le2/Xray;->q:Li2/d;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0xfa

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    move-wide v2, v4

    :cond_4
    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_e

    move-wide v2, v4

    :cond_e
    goto :goto_5

    :cond_3
    const-wide/16 v2, 0x3e8

    :goto_5
    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    return-void

    :catch_3
    move-exception v2

    return-void

    :cond_5
    return-void
.end method
