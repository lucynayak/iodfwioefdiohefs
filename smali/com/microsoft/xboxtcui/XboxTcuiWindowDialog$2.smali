.class Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->addCloseButton()V
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

    iput-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$2;->this$0:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopAllScreens()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
