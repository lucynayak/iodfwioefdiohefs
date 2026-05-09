.class public Lcom/microsoft/xbox/idp/ui/BanErrorFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"


# static fields
.field public static final ARG_GAMER_TAG:Ljava/lang/String; = "ARG_GAMER_TAG"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;

    const-string v0, "BanErrorFragment"

    sput-object v0, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_error_ban:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_1

    const-string v1, "ARG_GAMER_TAG"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;->TAG:Ljava/lang/String;

    const-string v1, "No ARG_GAMER_TAG provided"

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;->TAG:Ljava/lang/String;

    const-string v1, "No arguments provided"

    :goto_0
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_greeting_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lcom/microsoft/xbox/idp/R$string;->xbid_ban_error_header_android:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p2, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
