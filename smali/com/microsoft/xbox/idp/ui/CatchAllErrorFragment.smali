.class public Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;

    const-string v0, "CatchAllErrorFragment"

    sput-object v0, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    sget p3, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_error_catch_all:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/microsoft/xbox/idp/R$id;->xbid_error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lcom/microsoft/xbox/idp/R$string;->xbid_catchall_error_android:I

    new-instance v0, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;)V

    invoke-static {p1, p2, v0}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureClickableSpanOnUnderlineSpan(Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)V

    return-void
.end method
