.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;
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
        "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
        "<",
        "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Creating LOADER_SUGGESTIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v2, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v3, "POST"

    .line 417
    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v4

    invoke-interface {v4}, Lcom/microsoft/xbox/idp/services/Endpoints;->userManagement()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/gamertags/generate"

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "1"

    .line 416
    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 419
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    new-instance v1, Lcom/microsoft/xbox/idp/model/Suggestions$Request;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/model/Suggestions$Request;-><init>()V

    .line 420
    .local v1, "req":Lcom/microsoft/xbox/idp/model/Suggestions$Request;
    const/4 v2, 0x1

    iput v2, v1, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Algorithm:I

    .line 421
    const/4 v2, 0x3

    iput v2, v1, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Count:I

    .line 422
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Locale:Ljava/lang/String;

    .line 423
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Seed:Ljava/lang/String;

    .line 424
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting suggestions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Seed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/microsoft/xbox/idp/model/Suggestions$Request;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 426
    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Suggestions$Response;>;>;"
    .local p2, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Suggestions$Response;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_SUGGESTIONS finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got suggestions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    iput-object v0, v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    .line 436
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting suggestions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v0, "Service Error - Load suggestions"

    const-string v1, "Sign up view"

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 412
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Suggestions$Response;>;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    .line 448
    return-void
.end method
