.class Lcom/microsoft/xbox/toolkit/XLEManagedDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->forceKindleRespectDimOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$3;->this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$3;->this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
