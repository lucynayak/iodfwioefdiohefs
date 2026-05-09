.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
        "Lcom/microsoft/xbox/idp/model/GamerTag$Response;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/GamerTag$Response;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Creating LOADER_CLAIM_GAMERTAG"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object p2

    invoke-interface {p2}, Lcom/microsoft/xbox/idp/services/Endpoints;->accounts()Ljava/lang/String;

    move-result-object p2

    const-string v0, "POST"

    const-string v1, "/users/current/profile/gamertag"

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "2"

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    new-instance p2, Lcom/microsoft/xbox/idp/model/GamerTag$Request;

    invoke-direct {p2}, Lcom/microsoft/xbox/idp/model/GamerTag$Request;-><init>()V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    iput-object v0, p2, Lcom/microsoft/xbox/idp/model/GamerTag$Request;->gamertag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/microsoft/xbox/idp/model/GamerTag$Request;->preview:Z

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$800(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/microsoft/xbox/idp/model/GamerTag$Request;->reservationId:Ljava/lang/String;

    new-instance v0, Lp1/e;

    invoke-direct {v0}, Lp1/e;-><init>()V

    const-class v1, Lcom/microsoft/xbox/idp/model/GamerTag$Request;

    invoke-virtual {v0, p2, v1}, Lp1/e;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/idp/model/GamerTag$Response;

    new-instance v2, Lp1/e;

    invoke-direct {v2}, Lp1/e;-><init>()V

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/GamerTag$Response;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/GamerTag$Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_CLAIM_GAMERTAG finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/model/GamerTag$Response;

    iget-boolean p1, p1, Lcom/microsoft/xbox/idp/model/GamerTag$Response;->hasFree:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Gamertag claimed successfully"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$900(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Gamertag is not free"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error getting GamerTag.Response"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    :goto_1
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/GamerTag$Response;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
