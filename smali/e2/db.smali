.class public final Le2/db;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:Li2/b;


# direct methods
.method public constructor <init>()V
    .registers 6

    const-string v0, "Difficulty"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/b;

    const-string v1, "Mode"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Peaceful"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Easy"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Normal"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Hard"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Le2/db;->o:Li2/b;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 1

    return-void
.end method

.method public final G()V
    .registers 4

    iget-object v0, p0, Le2/db;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/difficulty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->sendChatMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final I()V
    .registers 2

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le2/db;->G()V

    :cond_0
    return-void
.end method
