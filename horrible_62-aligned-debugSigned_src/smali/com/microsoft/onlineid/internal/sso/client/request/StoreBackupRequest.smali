.class public Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final _backup:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->_backup:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public bridge synthetic performRequestTask()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->performRequestTask()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public performRequestTask()Ljava/lang/Void;
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->_backup:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v1, v0}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->storeBackup(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method
