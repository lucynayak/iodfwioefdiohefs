.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->queryPurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$5;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lw1/d;->l(ZLjava/util/List;Lw1/d$f;)V

    return-void
.end method
