.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

.field public final synthetic val$receipt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iput-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->val$receipt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->val$receipt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$100(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)Lw1/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    .line 1
    invoke-virtual {v1}, Lw1/d;->a()V

    const-string v2, "consume"

    invoke-virtual {v1, v2}, Lw1/d;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2}, Lw1/d;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lw1/e;

    invoke-direct {v4, v1, v3, v0}, Lw1/e;-><init>(Lw1/d;Ljava/util/List;Landroid/os/Handler;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
