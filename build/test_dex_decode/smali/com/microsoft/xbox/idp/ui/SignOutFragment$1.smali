.class Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_SIGN_OUT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v1

    const-string v2, "KEY_RESULT_KEY"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_SIGN_OUT finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasError()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_SIGN_OUT: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$100(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$200(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_SIGN_OUT reset"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
