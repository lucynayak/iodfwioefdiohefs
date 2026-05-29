.class public final Lh2/j;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/d;


# direct methods
.method public constructor <init>()V
    .registers 7

    const-string v0, "FastBreak"

    const/4 v1, 0x1

    const-string v2, "Player"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v2, "Tap destroy"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Ld2/k;

    const/16 v4, 0x9

    invoke-direct {v2, p0, v4}, Ld2/k;-><init>(Lc2/b;I)V

    .line 1
    iput-object v2, v0, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v0, p0, Lh2/j;->o:Li2/e;

    new-instance v2, Li2/d;

    const/4 v4, 0x4

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    const-string v5, "Amplifier"

    invoke-direct {v2, v5, v4}, Li2/d;-><init>(Ljava/lang/String;[D)V

    new-instance v4, Lh2/i;

    invoke-direct {v4, p0}, Lh2/i;-><init>(Lh2/j;)V

    .line 3
    iput-object v4, v2, Li2/d;->f:Li2/d$a;

    .line 4
    iput-object v2, p0, Lh2/j;->p:Li2/d;

    const/4 v4, 0x2

    new-array v4, v4, [Li2/c;

    aput-object v0, v4, v3

    aput-object v2, v4, v1

    invoke-virtual {p0, v4}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
        0x406fe00000000000L    # 255.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 2

    const/4 v0, 0x3

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->removeEffect(I)V

    return-void
.end method

.method public final J()V
    .registers 5

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/j;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const v1, 0x1e846c

    iget-object v2, p0, Lh2/j;->p:Li2/d;

    const-string v3, "current"

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->addEffect(IIIZ)V

    :cond_0
    return-void
.end method

.method public final Q(III)V
    .registers 5

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/j;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->destroyBlock(III)V

    :cond_0
    return-void
.end method
