.class public final Ld2/d;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/e;

.field public final q:Li2/e;

.field public final r:Li2/e;

.field public final s:Li2/d;

.field public final t:Li2/e;

.field public final u:Li2/e;


# direct methods
.method public constructor <init>()V
    .locals 11

    const-string v0, "AntiBot"

    const/4 v1, 0x1

    const-string v2, "Combat"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v2, "Invisible check"

    invoke-direct {v0, v2, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ld2/d;->o:Li2/e;

    new-instance v2, Li2/e;

    const-string v3, "Hitbox check"

    invoke-direct {v2, v3, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Ld2/d;->p:Li2/e;

    new-instance v3, Li2/e;

    const-string v4, "Name tag check"

    invoke-direct {v3, v4, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Ld2/d;->q:Li2/e;

    new-instance v4, Li2/e;

    const-string v5, "Teleport check"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Ld2/c;

    invoke-direct {v5, p0, v6}, Ld2/c;-><init>(Lc2/b;I)V

    .line 1
    iput-object v5, v4, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v4, p0, Ld2/d;->r:Li2/e;

    new-instance v5, Li2/d;

    const/4 v7, 0x4

    new-array v8, v7, [D

    fill-array-data v8, :array_0

    const-string v9, "Radius"

    invoke-direct {v5, v9, v8}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v5, p0, Ld2/d;->s:Li2/d;

    new-instance v8, Li2/e;

    const-string v9, "Other check"

    invoke-direct {v8, v9, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v8, p0, Ld2/d;->t:Li2/e;

    new-instance v9, Li2/e;

    const-string v10, "Extra check"

    invoke-direct {v9, v10, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v9, p0, Ld2/d;->u:Li2/e;

    const/4 v10, 0x7

    new-array v10, v10, [Li2/c;

    aput-object v0, v10, v6

    aput-object v2, v10, v1

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v4, v10, v0

    aput-object v5, v10, v7

    const/4 v0, 0x5

    aput-object v8, v10, v0

    const/4 v0, 0x6

    aput-object v9, v10, v0

    invoke-virtual {p0, v10}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x402e000000000000L    # 15.0
        0x0
        0x403e000000000000L    # 30.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 1

    sget-object v0, Ldev/virus/variable/launcher/api/Api;->blackListedEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Ld2/d;->s:Li2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/d;->setVisibility(Z)V

    return-void
.end method

.method public final P(JFFF)V
    .locals 2

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld2/d;->r:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, La3/r0;->B(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1
    invoke-static {p3, p4, p5}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getDistanceToCoords(FFF)F

    move-result p3

    float-to-double p3, p3

    .line 2
    iget-object p5, p0, Ld2/d;->s:Li2/d;

    const-string v0, "current"

    invoke-virtual {p5, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    cmpg-double p5, p3, v0

    if-gtz p5, :cond_0

    const/4 p3, 0x4

    invoke-virtual {p0, p1, p2, p3}, Ld2/d;->T(JI)V

    :cond_0
    return-void
.end method

.method public final T(JI)V
    .locals 3

    sget-object v0, Ldev/virus/variable/launcher/api/Api;->blackListedEntities:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ldev/virus/variable/launcher/api/Api;->blackListedEntities:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entity with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " added as bot with code "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
