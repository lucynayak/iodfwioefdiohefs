.class public Le2/DebugLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static enabled:Z

.field public static final lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_LINES:I = 0xc

.field private static final TAG:Ljava/lang/String; = "VarDbg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Le2/DebugLog;->enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# Log a message — always goes to logcat, stored in list for on-screen if enabled
.method public static log(Ljava/lang/String;)V
    .locals 3

    # Always log to logcat
    const-string v0, "VarDbg"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Store in list for on-screen display
    sget-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :done

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :done
    return-void
.end method

# Log with tag prefix
.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le2/DebugLog;->log(Ljava/lang/String;)V

    return-void
.end method

# Draw all stored lines on screen via Api.drawText
# Call this from Api.onDraw() when enabled
.method public static drawOverlay()V
    .locals 11

    sget-boolean v0, Le2/DebugLog;->enabled:Z

    if-nez v0, :start

    return-void

    :start
    sget-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :has_lines

    return-void

    :has_lines
    const/4 v2, 0x0

    # drawText params: text(v3), R(v4), G(v5), B(v6), X(v7), Y(v8), fH(v9), fW(v10)
    const v4, 0x3dcccccd    # 0.1f R
    const/high16 v5, 0x3f800000    # 1.0f G (green)
    const v6, 0x3dcccccd    # 0.1f B
    const/high16 v7, 0x42c80000    # 100.0f X position
    const/high16 v8, 0x42c80000    # 100.0f initial Y position
    const/high16 v9, 0x3f800000    # 1.0f fontHeight
    const/high16 v10, 0x3f800000   # 1.0f fontWidth

    :loop
    if-ge v2, v1, :end

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static/range {v3 .. v10}, Ldev/virus/variable/launcher/api/Api;->drawText(Ljava/lang/String;FFFFFFF)V

    # Advance Y by 10.0 for next line
    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :loop

    :end
    return-void
.end method

# Toggle overlay on/off
.method public static toggle()V
    .locals 1

    sget-boolean v0, Le2/DebugLog;->enabled:Z

    if-nez v0, :disable

    const/4 v0, 0x1

    sput-boolean v0, Le2/DebugLog;->enabled:Z

    const-string v0, "Debug overlay ON"

    invoke-static {v0}, Le2/DebugLog;->log(Ljava/lang/String;)V

    return-void

    :disable
    const/4 v0, 0x0

    sput-boolean v0, Le2/DebugLog;->enabled:Z

    return-void
.end method

# Clear all messages
.method public static clear()V
    .locals 1

    sget-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
