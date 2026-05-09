.class public Lcom/microsoft/onlineid/internal/sso/service/operation/RetrieveBackupOperation;
.super Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;
.source "SourceFile"


# instance fields
.field private final _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    iput-object p5, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/RetrieveBackupOperation;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/RetrieveBackupOperation;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->retrieveBackup()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
