.class public Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final _values:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCallingAppPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallingAppVersionName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_app_version_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsWebTelemetryRequested()Z
    .locals 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_requested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getWasPrecachingEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCallingAppPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCallingAppVersionName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_app_version_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsWebTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
