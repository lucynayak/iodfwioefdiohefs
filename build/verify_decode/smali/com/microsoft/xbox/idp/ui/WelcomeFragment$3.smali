.class Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/WelcomeFragment;
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
        "Lcom/microsoft/xbox/idp/model/Profile$Response;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_GAMER_PROFILE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/services/Endpoints;->profile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/users/me/profile/settings?settings="

    .line 1
    invoke-static {v2, p1}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "GET"

    .line 2
    invoke-direct {v0, v2, v1, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2"

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v7

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v3

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/microsoft/xbox/idp/model/Profile$Response;

    new-instance p2, Lp1/k;

    invoke-direct {p2}, Lp1/k;-><init>()V

    invoke-static {p2}, Lcom/microsoft/xbox/idp/model/Profile;->registerAdapters(Lp1/k;)Lp1/k;

    move-result-object p2

    invoke-virtual {p2}, Lp1/k;->a()Lp1/e;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lp1/e;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Finished LOADER_GAMER_PROFILE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->hasData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/model/Profile$Response;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/Profile$Response;->profileUsers:[Lcom/microsoft/xbox/idp/model/Profile$User;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/model/Profile$Response;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/Profile$Response;->profileUsers:[Lcom/microsoft/xbox/idp/model/Profile$User;

    array-length p1, p1

    if-lez p1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Got gamer profile data"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/xbox/idp/model/Profile$Response;

    iget-object p2, p2, Lcom/microsoft/xbox/idp/model/Profile$Response;->profileUsers:[Lcom/microsoft/xbox/idp/model/Profile$User;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$402(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;Lcom/microsoft/xbox/idp/model/Profile$User;)Lcom/microsoft/xbox/idp/model/Profile$User;

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$500(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCWelcome;->trackPageView(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$600(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    sget v1, Lcom/microsoft/xbox/idp/R$string;->xbid_first_and_last_name_android:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v5, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v5, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p2, v1, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$700(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$800(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object p2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "KEY_RESULT_KEY"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$900(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    move-result-object p2

    iget-object p2, p2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p2, v2, p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No gamer profile data"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object p1

    const-string p2, "Service Error - Load Profile"

    const-string v0, "Welcome view"

    invoke-static {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->access$900(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    move-result-object p1

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object p2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
