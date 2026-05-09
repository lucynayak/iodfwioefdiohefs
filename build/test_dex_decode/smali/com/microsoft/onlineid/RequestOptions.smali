.class public abstract Lcom/microsoft/onlineid/RequestOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/microsoft/onlineid/RequestOptions<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final _values:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/RequestOptions;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlightConfiguration()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_flights"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefillUsername()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.prefill_username"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnauthenticatedSessionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.unauth_session_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWasPrecachingEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFlightConfiguration(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_flights"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPrefillUsername(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.prefill_username"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUnauthenticatedSessionId(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.unauth_session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/RequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
