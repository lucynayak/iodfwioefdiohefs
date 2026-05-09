.class public Lcom/microsoft/xbox/idp/ui/BanErrorFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "BanErrorFragment.java"


# static fields
.field public static final ARG_GAMER_TAG:Ljava/lang/String; = "ARG_GAMER_TAG"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_error_ban:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 34
    const-string v3, "ARG_GAMER_TAG"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const-string v3, "ARG_GAMER_TAG"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "gamerTag":Ljava/lang/String;
    :goto_0
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_greeting_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "greetingText":Landroid/widget/TextView;
    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_ban_error_header_android:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void

    .line 37
    .end local v1    # "gamerTag":Ljava/lang/String;
    .end local v2    # "greetingText":Landroid/widget/TextView;
    :cond_0
    const-string v1, ""

    .line 38
    .restart local v1    # "gamerTag":Ljava/lang/String;
    sget-object v3, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;->TAG:Ljava/lang/String;

    const-string v4, "No ARG_GAMER_TAG provided"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    .end local v1    # "gamerTag":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .line 42
    .restart local v1    # "gamerTag":Ljava/lang/String;
    sget-object v3, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;->TAG:Ljava/lang/String;

    const-string v4, "No arguments provided"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
