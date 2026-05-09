.class Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->askUserPermissionToEmailCrashReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;->this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;->this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->sendMailAndDeleteFiles(Z)V

    const/4 p1, -0x3

    if-ne p2, p1, :cond_1

    invoke-static {}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->access$000()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object p1

    const-string p2, "isIgnoreCrashReporting"

    const-string v0, "true"

    invoke-virtual {p1, p2, v0}, Lcom/microsoft/onlineid/internal/configuration/Settings;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
