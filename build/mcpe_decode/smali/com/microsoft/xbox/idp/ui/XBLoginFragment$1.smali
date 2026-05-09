.class Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/XBLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_XB_LOGIN"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v0, "ARG_USER_PTR"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "ARG_RPS_TICKET"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v6

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_XB_LOGIN finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$100(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    move-result-object p2

    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->getAuthFlowResult()Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->isCreateAccount()Z

    move-result p1

    invoke-interface {p2, v0, v1, p1}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOADER_XTOKEN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->getErrorCode()I

    move-result p1

    const p2, -0x7fea23fd

    if-eq p1, p2, :cond_2

    const p2, -0x7822ffe2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$200(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$200(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$200(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_XB_LOGIN reset"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
