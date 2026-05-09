.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lw1/f;Lw1/h;)V
    .locals 2

    invoke-virtual {p1}, Lw1/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object v0, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lw1/h;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseSuccessful(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1
    :cond_0
    iget p1, p1, Lw1/f;->b:I

    const/16 p2, -0x3ed

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object p2, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object p2, p2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseCanceled(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;->this$1:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    iget-object p2, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object p2, p2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iget-object p1, p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseFailed(Ljava/lang/String;)V

    return-void
.end method
