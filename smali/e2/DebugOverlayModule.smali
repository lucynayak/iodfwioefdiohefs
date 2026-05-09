.class public final Le2/DebugOverlayModule;
.super Lc2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "DebugLog"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Other"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 0

    # Draw debug overlay on screen during onDraw
    invoke-static {}, Le2/DebugLog;->drawOverlay()V

    return-void
.end method

.method public final G()V
    .locals 1

    # Module activated — enable debug overlay
    invoke-static {}, Le2/DebugLog;->toggle()V

    const-string v0, "DebugLog enabled"

    invoke-static {v0}, Le2/DebugLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final E()V
    .locals 1

    # Module deactivated — disable debug overlay
    sget-boolean v0, Le2/DebugLog;->enabled:Z

    if-eqz v0, :done

    invoke-static {}, Le2/DebugLog;->toggle()V

    :done
    invoke-static {}, Le2/DebugLog;->clear()V

    return-void
.end method

.method public final D()V
    .locals 0

    return-void
.end method

.method public final H()V
    .locals 0

    return-void
.end method

.method public final I()V
    .locals 0

    return-void
.end method

.method public final J()V
    .locals 0

    return-void
.end method
