.class Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating LOADER_XB_LOGOUT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ARG_USER_PTR"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;-><init>(Landroid/content/Context;J)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LOADER_XB_LOGOUT finished"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->access$100(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;)Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADER_XB_LOGOUT reset"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
