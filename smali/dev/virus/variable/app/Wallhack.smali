.class public final Ldev/virus/variable/app/Wallhack;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/b;


# direct methods
.method public constructor <init>()V
    .registers 6

    const-string v0, "Wallhack"

    const/4 v1, 0x1

    const-string v2, "Player"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/b;

    const-string v1, "Mode"

    const-string v2, "Overdraw"

    const-string v3, "Ghost"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Ldev/virus/variable/app/Wallhack$1;

    invoke-direct {v1, p0}, Ldev/virus/variable/app/Wallhack$1;-><init>(Ldev/virus/variable/app/Wallhack;)V

    iput-object v1, v0, Li2/b;->g:Li2/b$a;

    iput-object v0, p0, Ldev/virus/variable/app/Wallhack;->o:Li2/b;

    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final G()V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    iget-object v0, p0, Ldev/virus/variable/app/Wallhack;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overdraw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/16 v1, 0x23

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void
.end method

.method public final I()V
    .registers 3

    iget-object v0, p0, Ldev/virus/variable/app/Wallhack;->o:Li2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/b;->setVisibility(Z)V

    return-void
.end method
