.class Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DialogManagerBase;->setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

.field public final synthetic val$cancelRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->access$000(Lcom/microsoft/xbox/toolkit/DialogManagerBase;)Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->access$002(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;)Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
