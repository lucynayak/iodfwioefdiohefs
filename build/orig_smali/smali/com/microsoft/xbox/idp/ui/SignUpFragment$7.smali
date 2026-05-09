.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;
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
        "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Creating LOADER_SUGGESTIONS"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object p2

    invoke-interface {p2}, Lcom/microsoft/xbox/idp/services/Endpoints;->userManagement()Ljava/lang/String;

    move-result-object p2

    const-string v0, "POST"

    const-string v1, "/gamertags/generate"

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "1"

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    new-instance p2, Lcom/microsoft/xbox/idp/model/Suggestions$Request;

    invoke-direct {p2}, Lcom/microsoft/xbox/idp/model/Suggestions$Request;-><init>()V

    const/4 v0, 0x1

    iput v0, p2, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Algorithm:I

    const/4 v0, 0x3

    iput v0, p2, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Count:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Locale:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Seed:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getting suggestions for "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p2, Lcom/microsoft/xbox/idp/model/Suggestions$Request;->Seed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lp1/e;

    invoke-direct {v0}, Lp1/e;-><init>()V

    const-class v1, Lcom/microsoft/xbox/idp/model/Suggestions$Request;

    invoke-virtual {v0, p2, v1}, Lp1/e;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    new-instance v2, Lp1/e;

    invoke-direct {v2}, Lp1/e;-><init>()V

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_SUGGESTIONS finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Got suggestions"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error getting suggestions: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    const-string p2, "Service Error - Load suggestions"

    const-string v0, "Sign up view"

    invoke-static {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    return-void
.end method
