.class final Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;
.super Lcom/microsoft/onlineid/internal/ApiRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public executeAsync()V
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
