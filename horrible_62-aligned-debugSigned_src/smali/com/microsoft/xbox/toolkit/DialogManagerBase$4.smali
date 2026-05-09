.class Lcom/microsoft/xbox/toolkit/DialogManagerBase$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

.field public final synthetic val$wrappedCancelHandler:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$4;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$4;->val$wrappedCancelHandler:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$4;->val$wrappedCancelHandler:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method
