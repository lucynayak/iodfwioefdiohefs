.class public final Le2/qd;
.super Lc2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "QuickDrop"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .registers 4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeInventory;->getSelectedSlot()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldev/virus/variable/launcher/api/NativeInventory;->dropSlot(IZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/b;->c:Z

    return-void
.end method
