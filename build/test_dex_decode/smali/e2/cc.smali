.class public final Le2/cc;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "ClearChat"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    const/16 v0, 0x1e

    iput v0, p0, Le2/cc;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/b;->c:Z

    return-void
.end method

.method public final J()V
    .locals 2

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
