.class public Lcom/microsoft/onlineid/ui/SignOutActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;
    }
.end annotation


# instance fields
.field private _isSignedOutOfThisAppOnly:Z

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

.field private _userCid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/onlineid/ui/SignOutActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_isSignedOutOfThisAppOnly:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/microsoft/onlineid/ui/SignOutActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_isSignedOutOfThisAppOnly:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/microsoft/onlineid/ui/SignOutActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_userCid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/onlineid/ui/SignOutActivity;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .registers 1

    iget-object p0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    return-object p0
.end method

.method private buildDialog()Landroid/app/AlertDialog;
    .registers 10

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v2, Lcom/microsoft/onlineid/internal/Resources;

    invoke-direct {v2, v0}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v4, "sign_out_custom_content_view"

    invoke-virtual {v2, v4}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const-string v4, "signOutCheckBox"

    invoke-virtual {v2, v4}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const-string v5, "sign_out_dialog_checkbox"

    invoke-virtual {v2, v5}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/microsoft/onlineid/ui/SignOutActivity$1;

    invoke-direct {v5, p0, v1, v4, v0}, Lcom/microsoft/onlineid/ui/SignOutActivity$1;-><init>(Lcom/microsoft/onlineid/ui/SignOutActivity;Lcom/microsoft/onlineid/internal/ApiRequest;Landroid/widget/CheckBox;Landroid/content/Context;)V

    new-instance v0, Lcom/microsoft/onlineid/ui/SignOutActivity$2;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/ui/SignOutActivity$2;-><init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V

    new-instance v1, Lcom/microsoft/onlineid/ui/SignOutActivity$3;

    invoke-direct {v1, p0}, Lcom/microsoft/onlineid/ui/SignOutActivity$3;-><init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v6, "sign_out_dialog_title"

    invoke-virtual {v2, v6}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v6, "sign_out_dialog_button_sign_out"

    invoke-virtual {v2, v6}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v5, "sign_out_dialog_button_cancel"

    invoke-virtual {v2, v5}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSignOutIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.microsoft.onlineid.user_cid"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "com.microsoft.onlineid.client_state"

    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    new-instance p2, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance p1, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {p1, p0, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.microsoft.onlineid.user_cid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_userCid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->buildDialog()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
