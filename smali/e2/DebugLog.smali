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

# Log a message -> logcat + Android Toast (so it doesn't draw on game overlay)
.method public static log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VarDbg"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Keep lines list for any legacy reader (but don't render it)
    sget-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :trim_done

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :trim_done
    # Show as Toast via UI thread of MainActivity
    sget-boolean v0, Le2/DebugLog;->enabled:Z

    if-eqz v0, :done

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :done

    :try_start_t
    new-instance v1, Le2/DebugLog$a;

    invoke-direct {v1, v0, p0}, Le2/DebugLog$a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_t
    .catch Ljava/lang/Exception; {:try_start_t .. :try_end_t} :catch_t

    :catch_t
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

# No-op: legacy on-screen overlay disabled (moved to Android Toast)
.method public static drawOverlay()V
    .locals 0

    return-void
.end method

.method public static toggle()V
    .locals 1

    sget-boolean v0, Le2/DebugLog;->enabled:Z

    if-nez v0, :disable

    const/4 v0, 0x1

    sput-boolean v0, Le2/DebugLog;->enabled:Z

    const-string v0, "Debug log ON"

    invoke-static {v0}, Le2/DebugLog;->log(Ljava/lang/String;)V

    return-void

    :disable
    const/4 v0, 0x0

    sput-boolean v0, Le2/DebugLog;->enabled:Z

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
