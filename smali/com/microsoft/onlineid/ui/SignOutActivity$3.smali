.class Lcom/microsoft/onlineid/ui/SignOutActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$3;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$3;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
