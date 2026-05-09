.class public final Le2/ar;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field private nickField:Li2/f;

.field private originalNick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    const-string v0, "NickChanger"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/f;

    const-string v1, "Nickname"

    const-string v2, "Enter nick"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Le2/ar;->nickField:Li2/f;

    const/4 v1, 0x1

    new-array v1, v1, [Li2/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lc2/b;->A([Li2/c;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    iget-object v0, p0, Le2/ar;->originalNick:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setUsername(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le2/ar;->originalNick:Ljava/lang/String;

    iget-object v0, p0, Le2/ar;->nickField:Li2/f;

    invoke-virtual {v0}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/b;->c:Z

    :goto_0
    return-void
.end method
