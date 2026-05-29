.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->queryProducts([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

.field public final synthetic val$productIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iput-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productIds:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lw1/d;->l(ZLjava/util/List;Lw1/d$f;)V

    return-void
.end method
