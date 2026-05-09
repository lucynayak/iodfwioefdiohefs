.class Lcom/microsoft/onlineid/ui/SignOutActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/ui/SignOutActivity;->buildDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

.field public final synthetic val$applicationContext:Landroid/content/Context;

.field public final synthetic val$checkBox:Landroid/widget/CheckBox;

.field public final synthetic val$originalSignOutRequest:Lcom/microsoft/onlineid/internal/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/ui/SignOutActivity;Lcom/microsoft/onlineid/internal/ApiRequest;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    iput-object p2, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$originalSignOutRequest:Lcom/microsoft/onlineid/internal/ApiRequest;

    iput-object p3, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object p2, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$originalSignOutRequest:Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountPuid()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.internal.SIGN_OUT_ALL_APPS"

    goto :goto_0

    :cond_0
    const-string v0, "com.microsoft.onlineid.internal.SIGN_OUT"

    :goto_0
    iget-object v1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    iget-object v2, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$002(Lcom/microsoft/onlineid/ui/SignOutActivity;Z)Z

    new-instance v1, Lcom/microsoft/onlineid/internal/ApiRequest;

    iget-object v2, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$applicationContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$applicationContext:Landroid/content/Context;

    const-class v5, Lcom/microsoft/onlineid/internal/MsaService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, p2}, Lcom/microsoft/onlineid/internal/ApiRequest;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p2

    new-instance v0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;

    iget-object v1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;-><init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V

    invoke-virtual {p2, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ApiRequest;->executeAsync()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
