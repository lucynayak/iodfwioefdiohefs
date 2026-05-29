.class public Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private _pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_data:Ljava/lang/Object;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasData()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPendingIntent()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Ljava/lang/Object;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_data:Ljava/lang/Object;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_data:Ljava/lang/Object;

    invoke-static {p1}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    return-object p0
.end method
