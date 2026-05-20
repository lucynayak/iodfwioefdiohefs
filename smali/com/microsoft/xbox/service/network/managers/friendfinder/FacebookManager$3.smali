.class Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    const-string v1, "public_profile"

    const-string v2, "user_friends"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$402(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Le1/r;->a:Ljava/lang/Object;

    .line 1
    const-class v1, Le1/r;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Le1/r;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    .line 2
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .line 3
    new-instance v1, Lh1/f;

    invoke-direct {v1}, Lh1/f;-><init>()V

    .line 4
    invoke-static {v0, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$502(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Le1/f;)Le1/f;

    invoke-static {}, Li1/p;->b()Li1/p;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$500(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Le1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$600(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Le1/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Li1/p;->f(Le1/f;Le1/j;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "h"

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
