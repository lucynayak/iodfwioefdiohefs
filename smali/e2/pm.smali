.class public final Le2/pm;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:Li2/f;


# direct methods
.method public constructor <init>()V
    .registers 6

    const-string v0, "PlayerMute"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/f;

    const-string v1, "Player Name"

    const-string v2, ""

    const-string v3, "Enter name"

    invoke-direct {v0, v1, v2, v3}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Le2/pm;->o:Li2/f;

    const/4 v1, 0x1

    new-array v1, v1, [Li2/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void
.end method


# virtual methods
.method public final L(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/pm;->o:Li2/f;

    invoke-virtual {v0}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->preventDefault()V

    :cond_0
    return-void
.end method
