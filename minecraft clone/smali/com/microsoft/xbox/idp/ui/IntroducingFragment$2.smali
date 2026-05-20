.class Lcom/microsoft/xbox/idp/ui/IntroducingFragment$2;
.super Ljava/lang/Object;
.source "IntroducingFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/IntroducingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 9
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Creating LOADER_GAMER_IMAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "KEY_RESULT_KEY"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "strUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->MEDIUM:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->getImageSizeUrlParams(Landroid/net/Uri$Builder;Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 189
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v3, "GET"

    invoke-static {v2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->getEndpoint(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->getPathAndQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    new-instance v3, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-virtual {v4}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object v3
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V
    .registers 6
    .param p2, "result"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "Service Error - Load bitmap"

    const-string v1, "Introducing view"

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 202
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finished LOADER_GAMER_IMAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$300(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 182
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$300(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    return-void
.end method
