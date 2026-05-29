.class Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/XLEManagedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;->this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;->this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->OnAnimationOutEnd()V

    return-void
.end method
