.class public final Le2/cc;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:I

.field public p:Li2/d;


# direct methods
.method public constructor <init>()V
    .registers 7

    const-string v0, "ClearChat"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const-wide v2, 0x403e000000000000L    # 30.0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const-wide v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    const-wide v2, 0x4059000000000000L    # 100.0

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    const-wide v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x3

    aput-wide v2, v1, v4

    const-string v2, "Lines"

    invoke-direct {v0, v2, v1}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v0, p0, Le2/cc;->p:Li2/d;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .registers 4

    iget-object v0, p0, Le2/cc;->p:Li2/d;

    invoke-virtual {v0}, Li2/d;->getCurrentValue()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Le2/cc;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/b;->c:Z

    return-void
.end method

.method public final J()V
    .registers 3

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Le2/cc;->o:I

    if-lez v0, :cond_0

    const-string v1, " "

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLevel;->displayClientMessage(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le2/cc;->o:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/b;->c:Z

    :cond_1
    return-void
.end method
