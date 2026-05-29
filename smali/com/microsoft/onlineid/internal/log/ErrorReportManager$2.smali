.class Lcom/microsoft/onlineid/internal/log/ErrorReportManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->notifyUserOfNoMailApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$2;->this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
