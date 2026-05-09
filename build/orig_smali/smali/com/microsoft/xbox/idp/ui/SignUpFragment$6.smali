.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

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
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "creating LOADER_RESERVE_GAMERTAG"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object p2

    invoke-interface {p2}, Lcom/microsoft/xbox/idp/services/Endpoints;->userManagement()Ljava/lang/String;

    move-result-object p2

    const-string v0, "POST"

    const-string v1, "/gamertags/reserve"

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "1"

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object p1

    new-instance p2, Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$800(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lp1/e;

    invoke-direct {v0}, Lp1/e;-><init>()V

    const-class v1, Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;

    invoke-virtual {v0, p2, v1}, Lp1/e;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    new-instance p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

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
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_RESERVE_GAMERTAG finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasError()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->getHttpStatus()I

    move-result p1

    const/16 v0, 0x199

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$1000(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    const-string p2, "Service Error - Reserve gamertag"

    const-string v0, "Sign up view"

    invoke-static {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$1100(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    return-void
.end method
