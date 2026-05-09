.class public final Le2/ae;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:Z

.field public p:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "FastInventory"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/ae;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/ae;->p:J

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 2

    :try_start_0
    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "inventory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->closeScreen()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/ae;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/ae;->p:J

    return-void
.end method

.method public final G()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/ae;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/ae;->p:J

    return-void
.end method

.method public final J()V
    .locals 6

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lc2/b;->isBindActive()Z

    move-result v0

    iget-boolean v1, p0, Le2/ae;->o:Z

    iput-boolean v0, p0, Le2/ae;->o:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le2/ae;->p:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v3, v2, v4

    if-lez v3, :cond_2

    iput-wide v0, p0, Le2/ae;->p:J

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getScreenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "hud_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "inventory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->openInventory()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->closeScreen()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
