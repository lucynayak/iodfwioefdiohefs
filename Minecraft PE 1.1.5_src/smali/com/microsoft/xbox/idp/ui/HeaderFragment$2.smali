.class Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;
.super Ljava/lang/Object;
.source "HeaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/HeaderFragment;
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
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 12
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
    .line 147
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Creating LOADER_USER_IMAGE_URL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/UserAccount;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/model/UserAccount;->imageUrl:Ljava/lang/String;

    new-instance v5, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "GET"

    .line 151
    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/HttpUtil;->getEndpoint(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/HttpUtil;->getPathAndQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    .line 150
    return-object v1
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
    .line 156
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_USER_IMAGE_URL finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOADER_USER_IMAGE_URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 144
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V

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
    .line 168
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    return-void
.end method
