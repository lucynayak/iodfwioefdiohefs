.class public abstract Lcom/microsoft/onlineid/RequestOptions;
.super Ljava/lang/Object;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/microsoft/onlineid/RequestOptions",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final _values:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 26
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/RequestOptions;-><init>(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "bundle"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    .line 39
    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 48
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlightConfiguration()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_flights"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefillUsername()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.prefill_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnauthenticatedSessionId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.unauth_session_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWasPrecachingEnabled()Z
    .registers 4

    .prologue
    .line 146
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFlightConfiguration(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .registers 4
    .param p1, "flightConfiguration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_flights"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object p0
.end method

.method public setPrefillUsername(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .registers 4
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.prefill_username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object p0
.end method

.method public setUnauthenticatedSessionId(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .registers 4
    .param p1, "uaid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.unauth_session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object p0
.end method

.method public setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/RequestOptions;
    .registers 4
    .param p1, "precachingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    return-object p0
.end method
