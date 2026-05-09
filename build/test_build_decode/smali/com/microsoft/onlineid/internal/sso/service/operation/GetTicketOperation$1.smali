.class Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;
.super Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->call()Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<",
        "Lcom/microsoft/onlineid/Ticket;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->setResult(Ljava/lang/Object;)V

    return-void
.end method
