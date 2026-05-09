.class public Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final LOADER_XB_LOGOUT:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

.field private final xbLogoutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->$assertionsDisabled:Z

    const-class v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    const-string v0, "XBLogoutFragment"

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->xbLogoutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;)Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    return-object p0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->TAG:Ljava/lang/String;

    const-string v0, "No arguments"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V

    goto :goto_0

    :cond_0
    const-string v0, "ARG_USER_PTR"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->TAG:Ljava/lang/String;

    const-string v0, "No ARG_USER_PTR"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_busy:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->xbLogoutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method
