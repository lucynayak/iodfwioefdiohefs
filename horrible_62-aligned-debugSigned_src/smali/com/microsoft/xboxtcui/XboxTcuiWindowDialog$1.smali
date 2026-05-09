.class Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;


# direct methods
.method public constructor <init>(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;->this$0:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageNavigated(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .registers 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;->this$0:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPageRestarted(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .registers 2

    return-void
.end method
