.class public Le2/DebugLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_LINES:I = 0xc

.field private static final TAG:Ljava/lang/String; = "VarDbg"

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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Le2/DebugLog;->enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 1

    sget-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static drawOverlay()V
    .registers 0

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 4

    const-string v0, "VarDbg"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Le2/DebugLog;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-boolean v0, Le2/DebugLog;->enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Le2/DebugLog$a;

    invoke-direct {v1, v0, p0}, Le2/DebugLog$a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

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

.method public static toggle()V
    .registers 1

    sget-boolean v0, Le2/DebugLog;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Le2/DebugLog;->enabled:Z

    const-string v0, "Debug log ON"

    invoke-static {v0}, Le2/DebugLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Le2/DebugLog;->enabled:Z

    return-void
.end method
