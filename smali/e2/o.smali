.class public final Le2/o;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public final o:Li2/e;

.field public final p:Li2/b;


# direct methods
.method public constructor <init>()V
    .registers 7

    const-string v0, "F5"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v3, "Skip third person view"

    invoke-direct {v0, v3, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Ld2/a;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Ld2/a;-><init>(Lc2/b;I)V

    .line 1
    iput-object v3, v0, Li2/e;->f:Li2/e$a;

    .line 2
    iput-object v0, p0, Le2/o;->o:Li2/e;

    new-instance v3, Li2/b;

    const-string v4, "Front"

    const-string v5, "Back"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "View from"

    invoke-direct {v3, v5, v4}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Le2/o;->p:Li2/b;

    const/4 v4, 0x2

    new-array v4, v4, [Li2/c;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    invoke-virtual {p0, v4}, Lc2/b;->A([Li2/c;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .registers 6

    .line 1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getViewPerspective()I

    move-result v0

    .line 2
    iget-object v1, p0, Le2/o;->o:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 3
    :goto_0
    invoke-static {v3}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setViewPerspective(I)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Le2/o;->p:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Front"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-static {v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setViewPerspective(I)V

    :goto_2
    return-void
.end method

.method public final I()V
    .registers 3

    iget-object v0, p0, Le2/o;->p:Li2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/b;->setVisibility(Z)V

    return-void
.end method
