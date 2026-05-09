.class public final Le2/g0;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic t:I


# instance fields
.field public final o:Li2/d;

.field public final p:Li2/e;

.field public final q:Li2/d;

.field public final r:Li2/f;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 10

    const-string v0, "Spammer"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v1, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v3, 0x4

    new-array v4, v3, [D

    fill-array-data v4, :array_0

    const-string v5, "Messages per second"

    invoke-direct {v0, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/g0;->o:Li2/d;

    new-instance v4, Li2/e;

    const-string v5, "Random string at the end"

    invoke-direct {v4, v5, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Ld2/a;

    const/16 v6, 0x8

    invoke-direct {v5, p0, v6}, Ld2/a;-><init>(Lc2/b;I)V

    .line 1
    iput-object v5, v4, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v4, p0, Le2/g0;->p:Li2/e;

    new-instance v5, Li2/d;

    new-array v6, v3, [D

    fill-array-data v6, :array_1

    const-string v7, "Count of random symbols"

    invoke-direct {v5, v7, v6}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Le2/g0;->q:Li2/d;

    new-instance v6, Li2/f;

    const-string v7, "Text"

    const-string v8, "Write something"

    const-string v9, "Hor1bl3 - the best mcpe hacked client!"

    invoke-direct {v6, v7, v8, v9}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Le2/g0;->r:Li2/f;

    new-array v3, v3, [Li2/c;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    invoke-virtual {p0, v3}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
        0x4049000000000000L    # 50.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4010000000000000L    # 4.0
        0x3ff0000000000000L    # 1.0
        0x4040000000000000L    # 32.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final I()V
    .locals 2

    iget-object v0, p0, Le2/g0;->q:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final J()V
    .locals 9

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Le2/g0;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le2/g0;->s:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    iget-object v4, p0, Le2/g0;->o:Li2/d;

    const-string v5, "current"

    invoke-virtual {v4, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v2, v6

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_6

    iget-object v0, p0, Le2/g0;->r:Li2/f;

    invoke-virtual {v0}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, " "

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Le2/g0;->p:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1
    invoke-static {v0, v2}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le2/g0;->q:Li2/d;

    invoke-virtual {v1, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ly1/b;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "@p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v2

    .line 4
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-wide v6, v2, v5

    invoke-static {v6, v7}, La3/r0;->B(J)Z

    move-result v8

    if-nez v8, :cond_1

    .line 5
    invoke-static {v6, v7}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, La3/r0;->F(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->sendChatMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Le2/g0;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le2/g0;->q:Li2/d;

    invoke-virtual {v1, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ly1/b;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_1
    invoke-static {v0}, La3/r0;->F(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iput v3, p0, Le2/g0;->s:I

    :cond_6
    return-void
.end method
