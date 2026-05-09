.class Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/HeaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Creating LOADER_USER_IMAGE_URL"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/UserAccount;->imageUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/model/UserAccount;->imageUrl:Ljava/lang/String;

    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->getEndpoint(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->getPathAndQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "GET"

    invoke-direct {v3, v5, v4, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_USER_IMAGE_URL finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_USER_IMAGE_URL: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
