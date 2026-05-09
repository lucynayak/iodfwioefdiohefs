.class public Lcom/microsoft/onlineid/internal/ApiResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ApiResult$Extras;
    }
.end annotation


# static fields
.field public static final ResultException:I = 0x1

.field public static final ResultUINeeded:I = 0x2


# instance fields
.field private final _bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ApiResult;
    .registers 4

    invoke-virtual {p1}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ApiResult;->setScope(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/internal/ApiResult;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public asBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAccountPuid()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public getFlowToken()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lcom/microsoft/onlineid/ISecurityScope;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/ISecurityScope;

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiResult;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicket(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getTicket(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;
    .registers 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/Ticket;

    return-object p1
.end method

.method public getTicketKey(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.microsoft.msa.authenticator"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Ticket"

    aput-object v2, v0, v1

    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "."

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUINeededIntent()Landroid/app/PendingIntent;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getWebFlowTelemetryEvents()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWereAllWebFlowTelemetryEventsCaptured()Z
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasWebFlowTelemetryEvents()Z
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiResult;->getWebFlowTelemetryEvents()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ApiResult;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setScope(Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/internal/ApiResult;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public setUINeededIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/ApiResult;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;)Lcom/microsoft/onlineid/internal/ApiResult;
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->getEvents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ApiResult;->_bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->wereAllEventsCaptured()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
