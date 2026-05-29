.class Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->handleSignInResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->this$0:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->this$0:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->access$000(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->this$0:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->access$000(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
