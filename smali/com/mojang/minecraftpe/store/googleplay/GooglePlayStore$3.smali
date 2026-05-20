.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->purchase(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

.field public final synthetic val$isSubscription:Z

.field public final synthetic val$payload:Ljava/lang/String;

.field public final synthetic val$productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iput-boolean p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$isSubscription:Z

    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$isSubscription:Z

    const-string v1, "subs"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    const-string v0, "inapp"

    :goto_0
    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v3, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mIabHelper:Lw1/d;

    iget-object v4, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v11, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$productId:Ljava/lang/String;

    iget v6, v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mPurchaseRequestCode:I

    new-instance v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;)V

    iget-object v5, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;->val$payload:Ljava/lang/String;

    invoke-virtual {v3}, Lw1/d;->a()V

    const-string v7, "launchPurchaseFlow"

    invoke-virtual {v3, v7}, Lw1/d;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lw1/d;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v3, Lw1/d;->l:Z

    if-nez v1, :cond_1

    new-instance v0, Lw1/f;

    const/16 v1, -0x3f1

    const-string v4, "Subscriptions are not available."

    invoke-direct {v0, v1, v4}, Lw1/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3}, Lw1/d;->d()V

    :goto_1
    invoke-interface {v2, v0, v12}, Lw1/d$d;->onIabPurchaseFinished(Lw1/f;Lw1/h;)V

    goto/16 :goto_4

    :cond_1
    :try_start_0
    iget-object v1, v3, Lw1/d;->h:Lb1/a;

    iget-object v7, v3, Lw1/d;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v11, v0, v5}, Lb1/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v1}, Lw1/d;->f(Landroid/os/Bundle;)I

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to buy item, Error response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lw1/d;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lw1/d;->i(Ljava/lang/String;)V

    invoke-virtual {v3}, Lw1/d;->d()V

    new-instance v0, Lw1/f;

    const-string v1, "Unable to buy item"

    invoke-direct {v0, v5, v1}, Lw1/f;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v0, v12}, Lw1/d$d;->onIabPurchaseFinished(Lw1/f;Lw1/h;)V

    goto/16 :goto_4

    :cond_2
    const-string v5, "BUY_INTENT"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput v6, v3, Lw1/d;->g:I

    iput-object v2, v3, Lw1/d;->e:Lw1/d$d;

    iput-object v0, v3, Lw1/d;->f:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lw1/d;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v3}, Lw1/d;->d()V

    new-instance v0, Lw1/f;

    const/16 v1, -0x3e9

    const-string v3, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v3}, Lw1/f;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lw1/d;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v3}, Lw1/d;->d()V

    new-instance v0, Lw1/f;

    const/16 v1, -0x3ec

    const-string v3, "Failed to send intent."

    invoke-direct {v0, v1, v3}, Lw1/f;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    return-void
.end method
